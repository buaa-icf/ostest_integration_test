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
import AudioItem from '../model/AudioItem';
import ServerConstants from '../manager/ServerConstants';
import PlayerManager from '../manager/PlayerManager';

@Component
export default struct PlayerBar {
  private tag: string = 'PlayerBar';
  @State item: AudioItem = new AudioItem('', '', '')
  @State rotateAngle: number = 0;
  @State durationTime: number = 100;
  @State currentTime: number = 0;
  @State state: string = ServerConstants.PLAYER_STATE_UNKNOWN;
  @Link isShowPlayList: boolean;
  @Link isShowPlayerDetail: boolean;
  private PlayerManager: PlayerManager = AppStorage.get('PlayerManager') as PlayerManager;

  aboutToAppear() {
    Logger.info(this.tag, 'aboutToAppear');
    emitter.on(ServerConstants.UPDATE_TIME_EVENT_ID, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined) {
        //Logger.info(this.tag, 'currentTime:' + eventData.data.currentTime);
        this.currentTime = eventData.data.currentTime;
        this.durationTime = eventData.data.currentDuration;
      }
    });
    emitter.on(ServerConstants.UPDATE_STATE_EVENT_ID, (eventData: emitter.EventData) => {
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
    });
  }

  aboutToDisappear() {
    Logger.info(this.tag, 'aboutToDisappear');
    emitter.off(ServerConstants.UPDATE_TIME_EVENT_ID);
    emitter.off(ServerConstants.UPDATE_STATE_EVENT_ID);
  }

  build() {
    Column() {
      Row() {
        Image(ServerConstants.SONG_IMAGE_URL + this.item.id)
          .width(64)
          .height(64)
          .margin(4)
          .borderRadius(48)
          .rotate({ angle: this.rotateAngle })
          .animation({
            duration: 3600,
            curve: Curve.Linear,
            delay: 500,
            iterations: -1,
            playMode: PlayMode.Normal
          })
        Text(this.item.title !== '' ? this.item.title + ' - ' + this.item.artist : '未播放')
          .fontSize('24fp')
          .fontWeight(FontWeight.Bold)
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.MARQUEE })
          .width('60%')
          .textAlign(TextAlign.Center)

        Blank()
        Stack() {
          Row({ space: 40 }) {
            Progress({ value: 0, total: this.durationTime, type: ProgressType.Ring })
              .color(Color.Black)
              .value(this.currentTime)
              .width('100%')
              .height('100%')
              .style({ strokeWidth: '2vp' })
          }

          if (this.state === ServerConstants.PLAYER_STATE_PLAYING) {
            Image($r('app.media.ic_public_pause'))
              .objectFit(ImageFit.Contain)
              .width('90%')
              .height('90%')
              .padding('4vp')
              .onClick(() => {
                this.PlayerManager.pause();
              })
          } else {
            Image($r('app.media.ic_public_play'))
              .objectFit(ImageFit.Contain)
              .width('90%')
              .height('90%')
              .padding('4vp')
              .onClick(() => {
                this.PlayerManager.resume();
              })
          }
        }.alignContent(Alignment.Center)
        .width(42)
        .height(42)
        .margin({ right: 8 })

        Image($r('app.media.ic_public_view_list'))
          .objectFit(ImageFit.Contain)
          .width(42)
          .height(42)
          .margin({ right: 8, left: 8 })
          .onClick(() => {
            animateTo({ duration: 350 }, () => {
              this.isShowPlayList = true;
            })
          })
      }
      .width('100%')
      .onClick(() => {
        animateTo({ duration: 350 }, () => {
          this.isShowPlayerDetail = true;
        })
      })

      Divider().strokeWidth(1).color('#E0E0E0')
    }
    .width('100%')
  }
}