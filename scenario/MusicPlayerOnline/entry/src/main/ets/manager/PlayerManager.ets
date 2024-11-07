/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import media from '@ohos.multimedia.media';
import { BusinessError } from '@ohos.base';
import AudioData from '../model/AudioData';
import Logger from '../utils/Logger';
import emitter from '@ohos.events.emitter';
import AppConstants from '../constants/AppConstants';
import { PLAY_MODE } from '../constants/PlayMode';
import backgroundTaskManager from '@ohos.resourceschedule.backgroundTaskManager';
import wantAgent, { WantAgent } from '@ohos.app.ability.wantAgent';
import common from '@ohos.app.ability.common';
import HttpManager from './HttpManager';
import PlayListData from '../model/PlayListData';
import Base from '@ohos.base';
import formProvider from '@ohos.app.form.formProvider';
import formBindingData from '@ohos.app.form.formBindingData';
import CommonUtils from '../utils/CommonUtils';
import prompt from '@ohos.promptAction';
import { audio } from '@kit.AudioKit';

export default class PlayerManager {
  private tag: string = 'PlayerManager';
  private formId: string = '';
  private isSeek: boolean = false;
  private avPlayer: media.AVPlayer | undefined = undefined;
  private list: AudioData[] = [];
  private explorePlaylistItem: PlayListData = new PlayListData('', $r('app.media.icon'), '', [], '');
  private favourList: AudioData[] = [];
  private currentTime: number = 0;
  private currentDuration: number = 0;
  private lastUpdateProgressTime: number = 0;
  private listPosition: number = 0;
  private state: string = AppConstants.PLAYER_STATE_UNKNOWN;
  private listTitle: string = AppConstants.LIST_SONG_NO_PLAYING;
  private playMode: number = PLAY_MODE.REPEAT;
  private shuffleIndex: number[] = [];
  private lrcIndex: number = 0
  private emitterOptions: emitter.Options = {
    priority: emitter.EventPriority.HIGH
  };

  constructor() {
    this.startContinuousTask();
  }

  initialPlayList() {
    if (AppStorage.get(AppConstants.PLAYLIST_RECORD) as AudioData[]) {
      this.list = AppStorage.get(AppConstants.PLAYLIST_RECORD) as AudioData[];
      let id = AppStorage.get(AppConstants.PLAYLIST_RECORD_INDEX) as string;
      let index = this.list.findIndex((audioData) => audioData.id === id);
      this.listPosition = (index !== -1) ? index : 0;
      this.listTitle = AppConstants.CURRENT_LIST_TITLE;
      this.shuffleIndex = [];
      for (let i = 0; i < this.list.length; i++) {
        this.shuffleIndex.push(i);
      }
      this.shuffleIndex.sort(() => Math.random() - 0.5);
      setTimeout(() => {
        let eventData: emitter.EventData = {
          data: {
            "state": AppConstants.PLAYER_STATE_IDLE,
          }
        };
        emitter.emit(AppConstants.MAIN_UPDATE_STATE, this.emitterOptions, eventData);
      }, 500)
    }
  }

  initialPlayMode() {
    if (AppStorage.get(AppConstants.KEEP_LOGIN_SETTING) != AppConstants.TOGGLE_SETTING_ON) {
      AppStorage.setOrCreate(AppConstants.LOGIN_COOKIE, AppConstants.LOGIN_COOKIE_NONE);
      AppStorage.setOrCreate(AppConstants.LOGIN_NAME, AppConstants.LOGIN_INFO_NO);
    }
    this.playMode = PLAY_MODE.REPEAT;
    if (AppStorage.get(AppConstants.PLAY_MODE_SETTING) == AppConstants.TOGGLE_SETTING_ON) {
      let record: number | undefined = AppStorage.get(AppConstants.PLAY_MODE_RECORD);
      if (record !== undefined) {
        this.playMode = record;
      }
    }
    this.recordPlayMode();
  }

  initialCardFormId() {
    if (AppStorage.get(AppConstants.CARD_FORM_ID) !== undefined) {
      this.formId = AppStorage.get(AppConstants.CARD_FORM_ID) as string;
    }
  }

  // 注册avplayer回调函数
  setAVPlayerCallback(avPlayer: media.AVPlayer) {
    // seek操作结果回调函数
    avPlayer.on('seekDone', (seekDoneTime: number) => {
      Logger.info(this.tag, `PlayerManager seek succeeded, seek time is ${seekDoneTime}`);
    })
    // error回调监听函数,当avPlayer在操作过程中出现错误时调用 reset接口触发重置流程
    avPlayer.on('error', (err: BusinessError) => {
      Logger.error(this.tag, `Invoke PlayerManager failed, code is ${err.code}, message is ${err.message}`);
      avPlayer.reset();
    })
    // 状态机变化回调函数
    avPlayer.on('timeUpdate', (time: number) => {
      this.currentTime = time;
      this.updateLrcIndex();
      this.updatePlayerTime();

      let timeInt = Math.floor(time / 1000);
      if (timeInt !== 0 && timeInt <= this.lastUpdateProgressTime) {
        return;
      }
      this.lastUpdateProgressTime = timeInt;
      this.updateCardProgress();
    })
    avPlayer.on('durationUpdate', (time: number) => {
      Logger.info(this.tag, 'PlayerManager state durationUpdate：' + time);
      this.currentDuration = time;
    })
    avPlayer.on('seekDone', (seekDoneTime: number) => {
      Logger.info(this.tag, 'seekDone success,and seek time is:' + seekDoneTime)
    })
    avPlayer.on('stateChange', async (state: string, reason: media.StateChangeReason) => {
      switch (state) {
        case AppConstants.PLAYER_STATE_IDLE:
          Logger.info(this.tag, 'PlayerManager state idle called.');
          break;
        case AppConstants.PLAYER_STATE_INITIALIZED:
          Logger.info(this.tag, 'PlayerManager state initialized called.');
          avPlayer.prepare();
          break;
        case AppConstants.PLAYER_STATE_PREPARED:
          Logger.info(this.tag, 'PlayerManager state prepared called.');
          avPlayer.play();
          break;
        case AppConstants.PLAYER_STATE_PLAYING:
          Logger.info(this.tag, 'PlayerManager state playing called.');
          HttpManager.getInstance().record_recent();
          break;
        case AppConstants.PLAYER_STATE_PAUSED:
          Logger.info(this.tag, 'PlayerManager state paused called.');
          break;
        case AppConstants.PLAYER_STATE_COMPLETED:
          Logger.info(this.tag, 'PlayerManager state completed called.');
          avPlayer.stop();
          break;
        case AppConstants.PLAYER_STATE_STOPPED:
          Logger.info(this.tag, 'PlayerManager state stopped called.');
          this.next();
          break;
        case AppConstants.PLAYER_STATE_RELEASED:
          Logger.info(this.tag, 'PlayerManager state released called.');
          break;
        default:
        Logger.info(this.tag, 'PlayerManager state unknown called.');
          if (this.avPlayer !== undefined) {
            try {
              this.avPlayer.release();
            } catch (err) {
              Logger.info(this.tag, 'PlayerManager state unknown called.' + JSON.stringify(err));
            }
            this.avPlayer = undefined;
          }
          break;
      }
      this.updatePlayerState(state);
      this.updateCard();
    })

    avPlayer.on('bufferingUpdate', (infoType: media.BufferingInfoType, value: number) => {
      //Logger.info(this.tag, 'bufferingUpdate called,and infoType value is:' + infoType + ', value is :' + value)
    })

    avPlayer.on('audioOutputDeviceChangeWithInfo', (data: audio.AudioStreamDeviceChangeInfo) => {
      Logger.info(this.tag, `${JSON.stringify(data)}`);
    });

    avPlayer.on('audioInterrupt', (info: audio.InterruptEvent) => {
      Logger.info(this.tag, 'audioInterrupt called,and InterruptEvent info is:' + info)
      this.avPlayer?.pause()
    })
  }

  /**
   * 初始化
   */
  playList(listTitle: string, list: AudioData[], item: AudioData, isNotify?: boolean): void {
    this.reset();
    if (list.length <= 0) {
      Logger.error(this.tag, 'PlayList:' + 'list length <= 0');
      return;
    }
    this.list = list;
    AppStorage.setOrCreate(AppConstants.PLAYLIST_RECORD, this.list);
    this.listTitle = listTitle;
    this.initialPlayMode();
    this.shuffleIndex = [];
    for (let i = 0; i < list.length; i++) {
      this.shuffleIndex.push(i);
    }
    this.play(item);
    if (isNotify) {
      emitter.emit(AppConstants.PLAYLIST_UPDATE_CHANGED, this.emitterOptions);
    }
  }

  getCurrentPlayList(): AudioData[] {
    return this.list;
  }

  /**
   * 播放
   */
  resume(): void {
    if (this.state === AppConstants.PLAYER_STATE_PAUSED && this.avPlayer !== undefined) {
      this.avPlayer.play();
    } else {
      this.play(this.getItem());
    }
  }

  /**
   * 播放
   */
  play(item: AudioData): void {
    Logger.info(this.tag, 'Play finish:' + this.listPosition.toString());
    this.getItem().isPlaying = false;
    let index = -1
    if (item === undefined || item.id === '') {
      return
    }
    index = this.list.indexOf(item)
    if (-1 === index) {
      this.listPosition = 0;
    } else {
      this.listPosition = index;
    }
    Logger.info(this.tag, 'Play :' + this.listPosition.toString());
    this.getItem().isPlaying = true;
    AppStorage.setOrCreate(AppConstants.PLAYLIST_RECORD_INDEX, this.getItem().id);
    let isFavor = false;
    for (let favorItem of this.favourList) {
      if (this.getItem().id === favorItem.id) {
        isFavor = true;
        break;
      }
    }
    this.getItem().isFavor = isFavor;
    if (this.getItem().lrc.length === 0) {
      HttpManager.getInstance().getLrc(this.getItem().id);
    }
    this.avPlayerLive(AppStorage.get(AppConstants.SERVER_HOST_PROP) + AppConstants.PLAY_SONG_URL +
    this.getItem().id);
  }

  /**
   * 暂停
   */
  pause(): void {
    if (this.avPlayer !== undefined) {
      this.avPlayer.pause();
    }
  }

  /**
   * reset
   */
  reset(): void {
    if (this.avPlayer !== undefined) {
      this.avPlayer.reset();
      if (this.list.length > this.listPosition) {
        this.getItem().isPlaying = false;
      }
    }
  }

  /**
   * seek
   */
  seek(duration: number): void {
    if (this.avPlayer !== undefined && this.isSeek) {
      this.avPlayer.seek(duration);
    }
  }

  /**
   * 下一首
   */
  next(): void {
    let newPosition = 0;
    switch (this.playMode) {
      case PLAY_MODE.REPEAT1:
        newPosition = this.listPosition;
        break;
      case PLAY_MODE.SHUFFLE:
        let currentIndex: number = this.shuffleIndex.indexOf(this.listPosition);
        let nextIndex: number = 0;
        if (currentIndex + 1 !== this.shuffleIndex.length) {
          nextIndex = currentIndex + 1;
        }
        newPosition = this.shuffleIndex[nextIndex];
        break;
      default:
        if (this.listPosition + 1 === this.list.length) {
          newPosition = 0;
        } else {
          newPosition = this.listPosition + 1;
        }
        break;
    }
    Logger.info(this.tag, 'Play next:' + newPosition.toString());
    this.play(this.list[newPosition]);
  }

  /**
   * 上一首
   */
  previous() {
    let newPosition = 0;
    switch (this.playMode) {
      case PLAY_MODE.REPEAT1:
        newPosition = this.listPosition;
        break;
      case PLAY_MODE.SHUFFLE:
        let currentIndex: number = this.shuffleIndex.indexOf(this.listPosition);
        let nextIndex: number = 0;
        if (currentIndex !== 0) {
          nextIndex = currentIndex - 1;
        } else {
          nextIndex = this.shuffleIndex.length - 1;
        }
        newPosition = this.shuffleIndex[nextIndex];
        break;
      default:
        if (this.listPosition === 0) {
          newPosition = this.list.length - 1;
        } else {
          newPosition = this.listPosition - 1;
        }
        break;
    }
    Logger.info(this.tag, 'Play previous:' + newPosition.toString());
    this.play(this.list[newPosition]);
  }

  //播放顺序
  setPlayMode(): number {
    switch (this.playMode) {
    //to repeat1
      case PLAY_MODE.REPEAT:
        this.playMode = PLAY_MODE.REPEAT1;
        break;
    //to shuffle
      case PLAY_MODE.REPEAT1:
        this.playMode = PLAY_MODE.SHUFFLE;
        this.shuffleIndex.sort(() => Math.random() - 0.5);
        break;
    //to repeat
      default:
        this.playMode = PLAY_MODE.REPEAT;
        break;
    }
    this.recordPlayMode();
    this.updateCardPlayMode();
    return this.playMode;
  }

  getItem(): AudioData {
    if (this.list.length === 0) {
      return new AudioData('未播放', '--', '');
    }
    return this.list[this.listPosition];
  }

  setFormId(formId: string) {
    this.formId = formId;
    AppStorage.setOrCreate(AppConstants.CARD_FORM_ID, formId);
    this.updateCard();
    this.updateCardPlayMode();
  }

  setItemQuality(quality: string) {
    this.getItem().quality = quality;
  }

  setItemFavor(isFavor: boolean) {
    this.getItem().isFavor = isFavor;
    this.updateCard();
  }

  setExploreList(aPlayListData: PlayListData) {
    this.explorePlaylistItem = aPlayListData;
    emitter.emit(AppConstants.UPDATE_EXPLORE_LIST, this.emitterOptions);
  }

  getExploreList(): PlayListData {
    return this.explorePlaylistItem;
  }

  getListTitle(): string {
    return this.listTitle;
  }

  getState(): string {
    return this.state;
  }

  getLrcIndex(): number {
    return this.lrcIndex;
  }

  getPlayMode(): number {
    return this.playMode;
  }

  async avPlayerLive(url: string) {
    // 创建avPlayer实例对象
    if (this.avPlayer === undefined) {
      this.avPlayer = await media.createAVPlayer();
      this.setAVPlayerCallback(this.avPlayer);
    } else {
      await this.avPlayer.reset();
    }
    Logger.info(this.tag, 'PlayerManager state url：' + url);
    this.avPlayer.url = url;
  }

  clearFavourList() {
    this.favourList = [];
  }

  setFavourList(list: AudioData[]) {
    this.favourList = list;
  }

  recordPlayMode() {
    AppStorage.setOrCreate(AppConstants.PLAY_MODE_RECORD, this.playMode);
  }

  setLrc(id: string, lrc: string) {
    if (id == this.getItem().id) {
      this.getItem().lrc = CommonUtils.getLrc(lrc);
      emitter.emit(AppConstants.DETAIL_UPDATE_LRC, this.emitterOptions);
    }
  }

  getDurationTime() {
    return this.currentDuration;
  }

  getCurrentTime() {
    return this.currentTime;
  }

  addSongToCurrentList(item: AudioData) {
    if (this.list.indexOf(item) > -1) {
      prompt.showToast({
        message: AppConstants.ADD_TO_CURRENT_LIST_REPEAT
      })
      return;
    }
    let insertIndex = this.listPosition + 1;
    this.list.splice(insertIndex, 0, item);
    AppStorage.setOrCreate(AppConstants.PLAYLIST_RECORD, this.list);
    let newShuffleIndex: number[] = [...this.shuffleIndex];
    for (let i = 0; i < newShuffleIndex.length; i++) {
      //将原来大于等于插入位置的索引+1
      if (newShuffleIndex[i] >= insertIndex) {
        newShuffleIndex[i] += 1;
      }
    }
    let newPosition = newShuffleIndex.findIndex(index => index === this.listPosition);
    if (newPosition !== -1) {
      newShuffleIndex.splice(newPosition + 1, 0, insertIndex);
    } else {
      Logger.error(this.tag, "Original index not found in shuffleIndex");
    }
    this.shuffleIndex = newShuffleIndex;
    //如果原来没有播放列表，则开始播放
    if (this.list.length === 1) {
      this.play(item);
    }
    this.listTitle = AppConstants.CURRENT_LIST_TITLE;
    prompt.showToast({
      message: AppConstants.ADD_TO_CURRENT_LIST_OK
    })
  }

  updateLrcIndex() {
    let newLrcIndex = CommonUtils.findLrcIndexByTime(this.getItem().lrc, this.currentTime, this.lrcIndex)
    if (newLrcIndex !== this.lrcIndex && newLrcIndex !== -1) {
      this.lrcIndex = newLrcIndex;
      let eventData: emitter.EventData = {
        data: {
          "newLrcIndex": this.lrcIndex,
        }
      };
      emitter.emit(AppConstants.DETAIL_UPDATE_LRC_INDEX, this.emitterOptions, eventData);
    }
  }

  updatePlayerTime() {
    let eventData: emitter.EventData = {
      data: {
        "currentTime": this.currentTime,
        "currentDuration": this.currentDuration
      }
    };
    emitter.emit(AppConstants.MAIN_UPDATE_TIME, this.emitterOptions, eventData);
  }

  updatePlayerState(state: string) {
    this.state = state;
    let eventData: emitter.EventData = {
      data: {
        "state": this.state,
      }
    };
    emitter.emit(AppConstants.MAIN_UPDATE_STATE, this.emitterOptions, eventData);
    emitter.emit(AppConstants.DETAIL_UPDATE_STATE, this.emitterOptions, eventData);
    emitter.emit(AppConstants.PLAYLIST_UPDATE_STATE, this.emitterOptions, eventData);
    if (this.state === AppConstants.PLAYER_STATE_STOPPED) {
      //this.stopContinuousTask();
      this.currentTime = 0;
      this.lrcIndex = 0;
      let eventData: emitter.EventData = {
        data: {
          "newLrcIndex": this.lrcIndex,
        }
      };
      emitter.emit(AppConstants.DETAIL_UPDATE_LRC_INDEX, this.emitterOptions, eventData);
    }
  }

  removeSongFromCurrentList(item: AudioData) {
    if (this.getItem().id == item.id) {
      this.reset();
    }
    let index = this.list.indexOf(item);
    if (index > -1) {
      this.list.splice(index, 1);
      if (index < this.listPosition) {
        this.listPosition -= 1;
      }
      AppStorage.setOrCreate(AppConstants.PLAYLIST_RECORD, this.list);
      let newShuffleIndex: number[] = [...this.shuffleIndex];
      let shuffleIndex = newShuffleIndex.indexOf(index);
      if (shuffleIndex > -1) {
        //删除的索引
        newShuffleIndex.splice(shuffleIndex, 1);
        for (let i = 0; i < newShuffleIndex.length; i++) {
          //将原来大于插入位置的索引-1
          if (newShuffleIndex[i] > index) {
            newShuffleIndex[i] -= 1;
          }
        }
      }
      this.shuffleIndex = newShuffleIndex;
    }
    let eventData: emitter.EventData = {
      data: {
        "state": this.state,
      }
    };
    emitter.emit(AppConstants.MAIN_UPDATE_STATE, this.emitterOptions, eventData);
    emitter.emit(AppConstants.DETAIL_UPDATE_STATE, this.emitterOptions, eventData);
    emitter.emit(AppConstants.PLAYLIST_UPDATE_STATE, this.emitterOptions, eventData);
  }

  removeSongFromCustomList(item: AudioData) {
    //http 从服务器请求删除
    const index = this.explorePlaylistItem.list.indexOf(item);
    if (index > -1) {
      this.explorePlaylistItem.list.splice(index, 1);
    }
  }

  //设置后台任务
  startContinuousTask() {
    let wantAgentInfo: wantAgent.WantAgentInfo = {
      wants: [
        {
          bundleName: "com.example.avplayer",
          abilityName: "EntryAbility"
        }
      ],
      operationType: wantAgent.OperationType.START_ABILITY,
      requestCode: 0,
      wantAgentFlags: [wantAgent.WantAgentFlags.UPDATE_PRESENT_FLAG]
    };

    try {
      wantAgent.getWantAgent(wantAgentInfo).then((wantAgentObj: WantAgent) => {
        try {
          backgroundTaskManager.startBackgroundRunning(AppStorage.get('APPContext') as common.UIAbilityContext,
            backgroundTaskManager.BackgroundMode.AUDIO_PLAYBACK, wantAgentObj).then(() => {
            Logger.info(this.tag, "PlayerManager Operation startBackgroundRunning succeeded");
          }).catch((error: BusinessError) => {
            Logger.error(this.tag,
              `PlayerManager Operation startBackgroundRunning failed. code is ${error.code} message is ${error.message}`);
          });
        } catch (error) {
          Logger.error(this.tag,
            `PlayerManager Operation startBackgroundRunning failed. code is ${(error as BusinessError).code} message is ${(error as BusinessError).message}`);
        }
      });
    } catch (error) {
      Logger.error(this.tag,
        `PlayerManager Operation getWantAgent failed. code is ${(error as BusinessError).code} message is ${(error as BusinessError).message}`);
    }
  }

  //取消后台任务
  stopContinuousTask(): void {
    try {
      backgroundTaskManager.stopBackgroundRunning(AppStorage.get('APPContext') as common.UIAbilityContext).then(() => {
        Logger.info(this.tag, "PlayerManager Operation stopBackgroundRunning succeeded");
      }).catch((error: BusinessError) => {
        Logger.error(this.tag,
          `PlayerManager Operation stopBackgroundRunning failed. code is ${(error as BusinessError).code} message is ${(error as BusinessError).message}`);
      });
    } catch (error) {
      Logger.error(this.tag,
        `PlayerManager Operation stopBackgroundRunning failed. code is ${(error as BusinessError).code} message is ${(error as BusinessError).message}`);
    }
  }

  //退出app
  async exitAPP() {
    try {
      if (this.avPlayer !== undefined) {
        await this.avPlayer.release();
        this.avPlayer = undefined;
      }
      this.stopContinuousTask();

      (AppStorage.get('APPContext') as common.UIAbilityContext).terminateSelf()
        .then(() => {
          Logger.info(this.tag, 'PlayerManager terminateSelf succeed');
        })
        .catch((err: BusinessError) => {
          Logger.error(this.tag, `PlayerManager terminateSelf failed, code is ${err.code}, message is ${err.message}`);
        });
    } catch (err) {
      let code = (err as BusinessError).code;
      let message = (err as BusinessError).message;
      Logger.error(this.tag, `PlayerManager terminateSelf failed, code is ${code}, message is ${message}`);
    }
  }

  updateCard() {
    if (this.formId === '') {
      return;
    }
    let formData: Record<string, AudioData | string | undefined> = {
      'audioItem': this.getItem(),
      'isPlaying': this.state,
      'serverHost': AppStorage.get(AppConstants.SERVER_HOST_PROP),
    };
    let formMsg: formBindingData.FormBindingData = formBindingData.createFormBindingData(formData);
    formProvider.updateForm(this.formId, formMsg).then(() => {
    }).catch((error: Base.BusinessError) => {
      Logger.info(this.tag, `Operation updateForm failed. Cause: ${JSON.stringify(error)}`);
      this.setFormId('')
    })
  }

  updateCardPlayMode() {
    if (this.formId === '') {
      return;
    }
    let formData: Record<string, number> = {
      'playMode': this.playMode,
    };
    let formMsg: formBindingData.FormBindingData = formBindingData.createFormBindingData(formData);
    formProvider.updateForm(this.formId, formMsg).then(() => {
    }).catch((error: Base.BusinessError) => {
      Logger.info(this.tag, `Operation updateCardPlayMode failed. Cause: ${JSON.stringify(error)}`);
      this.setFormId('')
    })
  }

  updateCardProgress() {
    if (this.formId === '') {
      return;
    }
    let formData: Record<string, number> = {
      'currentTime': this.currentTime,
      'durationTime': this.currentDuration,
    };
    let formMsg: formBindingData.FormBindingData = formBindingData.createFormBindingData(formData);
    formProvider.updateForm(this.formId, formMsg).then(() => {
    }).catch((error: Base.BusinessError) => {
      Logger.info(this.tag, `Operation updateCardProgress failed. Cause: ${JSON.stringify(error)}`);
      this.setFormId('')
    })
  }
}

