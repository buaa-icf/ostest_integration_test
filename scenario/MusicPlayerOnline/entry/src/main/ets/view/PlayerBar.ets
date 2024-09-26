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

/**
 * List item information component.
 */
import emitter from '@ohos.events.emitter';
import Logger from '../utils/Logger';
import AudioData from '../model/AudioData';
import ServerConstants from '../constants/ServerConstants';
import UIConstants from '../constants/UIConstants';
import PlayerManager from '../manager/PlayerManager';

@Component
export default struct PlayerBar {
  private tag: string = 'PlayerBar';
  @State item: AudioData = new AudioData('', '', '')
  @State rotateAngle: number = 0;
  @State durationTime: number = 100;
  @State currentTime: number = 0;
  @State state: string = ServerConstants.PLAYER_STATE_UNKNOWN;
  @Link isShowPlayList: boolean;
  @Link isShowPlayerDetail: boolean;
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;
  private spaces: string = '               '

  aboutToAppear() {
    Logger.info(this.tag, 'aboutToAppear');
    emitter.on(ServerConstants.MAIN_UPDATE_TIME, (eventData: emitter.EventData) => {
      this.updateTime(eventData);
    });
    emitter.on(ServerConstants.MAIN_UPDATE_STATE, (eventData: emitter.EventData) => {
      this.updateState(eventData)
    });
  }

  aboutToDisappear() {
    emitter.off(ServerConstants.MAIN_UPDATE_TIME);
    emitter.off(ServerConstants.MAIN_UPDATE_STATE);
    Logger.info(this.tag, 'aboutToDisappear');
  }

  build() {
    Column() {
      Row() {
        Image(this.item.id ? (ServerConstants.SONG_IMAGE_URL + this.item.id) : $r('app.media.startIcon'))
          .width(56)
          .height(56)
          .margin(4)
          .borderRadius(48)
          .rotate({ angle: this.rotateAngle })
          .animation({
            duration: 7200,
            curve: Curve.Linear,
            delay: 500,
            iterations: -1,
            playMode: PlayMode.Normal
          })
          .id('songImage')
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowPlayerDetail = true;
          })
        Text(this.item.id ? (this.state === ServerConstants.PLAYER_STATE_PLAYING ? this.spaces + this.item.title + ' - ' + this.item.artist + this.spaces
          : this.item.title + ' - ' + this.item.artist) : ServerConstants.LIST_SONG_NO_PLAYING)
          .fontSize('24fp')
          .maxLines(1)
          .textOverflow({
            overflow: (this.state === ServerConstants.PLAYER_STATE_PLAYING) ? TextOverflow.MARQUEE : TextOverflow.None
          })
          .width('60%')
          .textAlign(TextAlign.Center)
          .id('songName')
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowPlayerDetail = true;
          })
        Blank()
        Stack() {
          Row({ space: 40 }) {
            Progress({ value: 0, total: this.durationTime, type: ProgressType.Ring })
              .color(Color.Gray)
              .value(this.currentTime)
              .width('100%')
              .height('100%')
              .style({ strokeWidth: '2vp' })
              .id('progressBar')
          }

          if (this.state === ServerConstants.PLAYER_STATE_PLAYING) {
            Image($r('app.media.pause'))
              .padding('4vp')
              .clickEffect(UIConstants.CLICK_EFFECT)
              .onClick(() => {
                this.PlayerManager.pause();
              })
              .id('paused')
          } else {
            Image($r('app.media.media_center'))
              .clickEffect(UIConstants.CLICK_EFFECT)
              .onClick(() => {
                this.PlayerManager.resume();
              })
              .id('playing')
          }
        }.alignContent(Alignment.Center)
        .width(46)
        .height(46)
        .margin({ right: 8 })

        Image($r('app.media.music_note_list'))
          .width(42)
          .height(42)
          .margin({ right: 8, left: 8 })
          .clickEffect(UIConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowPlayList = true;
          })
          .id('playlist')
      }
      .width('100%')

      Divider().strokeWidth(1).color('#E0E0E0')
    }
    .width('100%')
  }

  updateTime(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      this.currentTime = eventData.data.currentTime;
      this.durationTime = eventData.data.currentDuration;
    }
  }
  updateState(eventData: emitter.EventData) {
    if (eventData !== undefined && eventData.data !== undefined) {
      Logger.info(this.tag, 'state:' + eventData.data.state);
      if (this.state !== ServerConstants.PLAYER_STATE_PLAYING && eventData.data.state === ServerConstants.PLAYER_STATE_PLAYING) {
        this.item = this.PlayerManager.getItem();
        if (this.rotateAngle === 0) {
          this.rotateAngle = 360;
          Logger.info(this.tag, 'rotateAngle:360');
        }
      }
      if (eventData.data.state !== ServerConstants.PLAYER_STATE_PLAYING) {
        this.rotateAngle = 0;
        Logger.info(this.tag, 'rotateAngle:0');
      }
      this.state = eventData.data.state;
    }
  }
}