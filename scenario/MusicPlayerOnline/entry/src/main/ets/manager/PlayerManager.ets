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
import AudioItem from '../model/AudioItem';
import Logger from '../utils/Logger';
import emitter from '@ohos.events.emitter';
import ServerConstants from '../constants/ServerConstants';
import backgroundTaskManager from '@ohos.resourceschedule.backgroundTaskManager';
import wantAgent, { WantAgent } from '@ohos.app.ability.wantAgent';
import common from '@ohos.app.ability.common';
import http from '@ohos.net.http'

export default class PlayerManager {
  private tag: string = 'PlayerManager';
  private isSeek: boolean = false;
  private avPlayer: media.AVPlayer | undefined = undefined;
  private list: AudioItem[] = [];
  private favourList: AudioItem[] = [];
  private currentTime: number = 0;
  private currentDuration: number = 0;
  private item: AudioItem = new AudioItem('', '', '');
  private listPosition: number = 0;
  private state: string = ServerConstants.PLAYER_STATE_UNKNOWN;
  private listTitle: string = '';
  private httpRequest = http.createHttp();
  private emitterOptions: emitter.Options = {
    priority: emitter.EventPriority.HIGH
  };

  // 注册avplayer回调函数
  setAVPlayerCallback(avPlayer: media.AVPlayer) {
    // seek操作结果回调函数
    avPlayer.on('seekDone', (seekDoneTime: number) => {
      console.info(`PlayerManager seek succeeded, seek time is ${seekDoneTime}`);
    })
    // error回调监听函数,当avPlayer在操作过程中出现错误时调用 reset接口触发重置流程
    avPlayer.on('error', (err: BusinessError) => {
      console.error(`Invoke PlayerManager failed, code is ${err.code}, message is ${err.message}`);
      avPlayer.reset(); // 调用reset重置资源，触发idle状态
    })
    // 状态机变化回调函数
    avPlayer.on('timeUpdate', (time: number) => {
      //console.info('AVPlayer state timeUpdate：'+time);
      this.currentTime = time;
      let eventData: emitter.EventData = {
        data: {
          "currentTime": this.currentTime,
          "currentDuration": this.currentDuration
        }
      };
      emitter.emit(ServerConstants.UPDATE_TIME_EVENT_ID, this.emitterOptions, eventData);
    })
    avPlayer.on('durationUpdate', (time: number) => {
      console.info('PlayerManager state durationUpdate：' + time);
      this.currentDuration = time;
    })
    avPlayer.on('stateChange', async (state: string, reason: media.StateChangeReason) => {
      this.state = state;
      let eventData: emitter.EventData = {
        data: {
          "state": state,
        }
      };
      emitter.emit(ServerConstants.UPDATE_STATE_EVENT_ID, this.emitterOptions, eventData);
      switch (state) {
        case ServerConstants.PLAYER_STATE_IDLE: // 成功调用reset接口后触发该状态机上报
          console.info('PlayerManager state idle called.');
          avPlayer.release(); // 调用release接口销毁实例对象
          break;
        case ServerConstants.PLAYER_STATE_INITIALIZED: // avplayer 设置播放源后触发该状态上报
          console.info('PlayerManager state initialized called.');
          avPlayer.prepare();
          break;
        case ServerConstants.PLAYER_STATE_PREPARED: // prepare调用成功后上报该状态机
          console.info('PlayerManager state prepared called.');
          avPlayer.play(); // 调用播放接口开始播放
          break;
        case ServerConstants.PLAYER_STATE_PLAYING: // play成功调用后触发该状态机上报
          console.info('PlayerManager state playing called.');
          this.list[this.listPosition].isPlaying = true;
          this.record_recent();
          this.startContinuousTask();
          break;
        case ServerConstants.PLAYER_STATE_PAUSED: // pause成功调用后触发该状态机上报
          console.info('PlayerManager state paused called.');
          break;
        case ServerConstants.PLAYER_STATE_COMPLETED: // 播放结束后触发该状态机上报
          console.info('PlayerManager state completed called.');
          avPlayer.stop(); //调用播放结束接口
          this.next();
          break;
        case ServerConstants.PLAYER_STATE_STOPPED: // stop接口成功调用后触发该状态机上报
          console.info('PlayerManager state stopped called.');
          this.stopContinuousTask();
          this.currentTime = 0;
          Logger.info(this.tag, 'Stop:' + this.item.title);
          avPlayer.reset(); // 调用reset接口初始化avplayer状态
          break;
        case ServerConstants.PLAYER_STATE_RELEASED:
          console.info('PlayerManager state released called.');
          break;
        default:
          console.info('PlayerManager state unknown called.');
          break;
      }
    })
  }

  /**
   * 初始化
   */
  playList(listTitle: string, list: AudioItem[], item: AudioItem): void {
    this.stop();
    if (list.length <= 0) {
      Logger.error(this.tag, 'PlayList:' + 'list length <= 0');
      return;
    }
    this.list = list;
    this.listTitle = listTitle;
    this.play(item);
  }

  getCurrentPlayList(): AudioItem[] {
    return this.list;
  }

  /**
   * 播放
   */
  resume(): void {
    if (this.state === ServerConstants.PLAYER_STATE_PAUSED) {
      if (this.avPlayer !== undefined) {
        this.avPlayer.play();
      }
    }
  }

  /**
   * 播放
   */
  play(item: AudioItem): void {
    this.stop();
    Logger.info(this.tag, 'Play finish:' + this.listPosition.toString());
    let index = -1
    if (item !== undefined) {
      index = this.list.indexOf(item)
    }
    if (-1 === index) {
      this.listPosition = 0;
    } else {
      this.listPosition = index;
    }
    Logger.info(this.tag, 'Play :' + this.listPosition.toString());
    this.item = this.list[this.listPosition]
    let isFavor = false;
    for (let favorItem of this.favourList) {
      if (this.item.id === favorItem.id) {
        isFavor = true;
        break;
      }
    }
    this.item.isFavor = isFavor;
    this.avPlayerLive(ServerConstants.PLAY_SONG_URL + this.item.id);
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
   * 停止
   */
  stop(): void {
    if (this.avPlayer !== undefined) {
      this.avPlayer.stop();
      if (this.list.length > this.listPosition) {
        this.list[this.listPosition].isPlaying = false;
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
    if (this.listPosition + 1 === this.list.length) {
      newPosition = 0;
    } else {
      newPosition = this.listPosition + 1;
    }
    Logger.info(this.tag, 'Play next:' + newPosition.toString());
    this.play(this.list[newPosition]);
  }

  /**
   * 上一首
   */
  previous() {
    let newPosition = 0;
    if (this.listPosition === 0) {
      newPosition = 0;
    } else {
      newPosition = this.listPosition - 1;
    }
    Logger.info(this.tag, 'Play previous:' + newPosition.toString());
    this.play(this.list[newPosition]);
  }

  //播放顺序
  setPlayMode() {

  }

  getItem(): AudioItem {
    return this.item;
  }

  getListTitle(): string {
    return this.listTitle;
  }

  getState(): string {
    return this.state;
  }

  async avPlayerLive(url: string) {
    // 创建avPlayer实例对象
    if (this.avPlayer === undefined) {
      this.avPlayer = await media.createAVPlayer();
      this.setAVPlayerCallback(this.avPlayer);
    } else {
      this.avPlayer.release();
      this.avPlayer = await media.createAVPlayer();
      this.setAVPlayerCallback(this.avPlayer);
    }
    console.info('PlayerManager state url：' + url);
    this.avPlayer.url = url;
  }

  clearFavourList() {
    this.favourList = [];
  }

  setFavourList(list: AudioItem[]) {
    this.favourList = list;
  }

  record_recent() {
    let loginCookie: string | undefined = AppStorage.get('loginCookie');
    if (loginCookie === '' || loginCookie === undefined) {
      return;
    }
    try {
      this.httpRequest.request(ServerConstants.RECORD_RECENT + this.item.id,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': loginCookie
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse Result:' + data.result);
            console.info('HttpResponse code:' + data.responseCode);
            console.info('HttpResponse type:' + JSON.stringify(data.resultType));
            console.info('HttpResponse header:' + JSON.stringify(data.header));
            console.info('HttpResponse cookies:' + data.cookies);

          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
  }

  set_favourite() {
    let loginCookie: string | undefined = AppStorage.get('loginCookie');
    try {
      let is_favor: string = this.item.isFavor ? '0' : '1';
      console.info('HttpResponse start:' + ServerConstants.SET_FAVOURITE + this.item.id + '/' + is_favor);
      this.httpRequest.request(ServerConstants.SET_FAVOURITE + this.item.id + '/' + is_favor,
        {
          method: http.RequestMethod.GET,
          header: {
            'Cookie': loginCookie
          }
        },
        (err: Error, data: http.HttpResponse) => {
          if (!err) {
            console.info('HttpResponse Result:' + data.result);
            console.info('HttpResponse code:' + data.responseCode);
            console.info('HttpResponse type:' + JSON.stringify(data.resultType));
            console.info('HttpResponse header:' + JSON.stringify(data.header));
            console.info('HttpResponse cookies:' + data.cookies);
            try {
              const jsonObject: object = JSON.parse(data.result as string);
              switch (jsonObject["message"]) {
                case ServerConstants.SET_FAVOURITE_ALREADY:
                case ServerConstants.SET_FAVOURITE_SUCCESS:
                  this.item.isFavor = true;
                  break;
                case ServerConstants.CANCEL_FAVOURITE_SUCCESS:
                case ServerConstants.CANCEL_FAVOURITE_ALREADY:
                  this.item.isFavor = false;
                  break;
                default:
                  this.item.isFavor = false;
                  break;
              }
              let eventData: emitter.EventData = {
                data: {
                  "message": jsonObject["message"],
                }
              };
              console.info('HttpResponse msg:' + jsonObject["message"]);
              emitter.emit(ServerConstants.UPDATE_FAVOR_EVENT_ID, this.emitterOptions, eventData);
            }
            catch (error) {
              console.error("JSON :", error.message);
            }
          } else {
            console.info('HttpResponse error:' + JSON.stringify(err));
          }
        });
    } catch (err) {
      console.info('HttpRequest error:' + JSON.stringify(err));
    }
  }

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
            console.info("PlayerManager Operation startBackgroundRunning succeeded");
          }).catch((error: BusinessError) => {
            console.error(`PlayerManager Operation startBackgroundRunning failed. code is ${error.code} message is ${error.message}`);
          });
        } catch (error) {
          console.error(`PlayerManager Operation startBackgroundRunning failed. code is ${(error as BusinessError).code} message is ${(error as BusinessError).message}`);
        }
      });
    } catch (error) {
      console.error(`PlayerManager Operation getWantAgent failed. code is ${(error as BusinessError).code} message is ${(error as BusinessError).message}`);
    }
  }

  // cancel continuous task
  stopContinuousTask(): void {
    try {
      backgroundTaskManager.stopBackgroundRunning(AppStorage.get('APPContext') as common.UIAbilityContext).then(() => {
        console.info("PlayerManager Operation stopBackgroundRunning succeeded");
      }).catch((error: BusinessError) => {
        console.error(`PlayerManager Operation stopBackgroundRunning failed. code is ${(error as BusinessError).code} message is ${(error as BusinessError).message}`);
      });
    } catch (error) {
      console.error(`PlayerManager Operation stopBackgroundRunning failed. code is ${(error as BusinessError).code} message is ${(error as BusinessError).message}`);
    }
  }
}

