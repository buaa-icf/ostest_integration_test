/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import Logger from '../common/utils/Logger';
import PlayerManager from '../manager/PlayerManager'
import AudioItem from '../manager/AudioItem';

@Component
export default struct PlayerBar {
  private tag: string = 'PlayerBar';
  @State playingTitle: string = '红色的河'
  @State playingArtist: string = '旅行团乐队/吴青峰'
  @State playingImg: Resource = $r('app.media.ic_gallery_frame_overlay_soundphoto')
  @State rotateAngle: number = 0;
  @State durationTime: number = 100; // 总时长
  @State currentTime: number = 0; // 当前时间
  @State state: number = 0; // 播放状态
  private playerManager: PlayerManager = AppStorage.get('playerManager') as PlayerManager;
  private innerEvent: emitter.InnerEvent = {
    eventId: 1,
    priority: emitter.EventPriority.HIGH
  };

  aboutToAppear() {
    emitter.on(this.innerEvent, (eventData: emitter.EventData) => {
      if (eventData !== undefined && eventData.data !== undefined) {
        Logger.info(this.tag, 'state:' + eventData.data.state);
        Logger.info(this.tag, 'currentTime:' + eventData.data.currentTime);
        this.currentTime = eventData.data.currentTime;
        if (this.state !== 1 && eventData.data.state === 1) {
          this.playingTitle = this.playerManager.getItem().title;
          this.durationTime = this.playerManager.getItem().time;
          this.playingArtist = this.playerManager.getItem().artist;
          this.playingImg = this.playerManager.getItem().img;
          if (this.rotateAngle === 0) {
            this.rotateAngle = 360;
          }
        }
        if (eventData.data.state !== 1) {
          this.rotateAngle = 0;
        }
        this.state = eventData.data.state;
      }
    });
  }

  aboutToDisappear() {
    emitter.off(1);
  }

  build() {
    Column() {
      Row() {
        Image(this.playingImg)
          .width('36vp')
          .height('36vp')
          .margin('8vp')
          .borderRadius('18vp')
          .rotate({ angle: this.rotateAngle })
          .animation({
            duration: 3600,
            curve: Curve.Linear,
            delay: 500,
            iterations: -1, // 设置-1表示动画无限循环
            playMode: PlayMode.Normal
          })
        Row() {
          Text(this.playingTitle)
            .height($r('app.float.home_homeCell_size'))
            .fontWeight(FontWeight.Bold)
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
          Text(' - ')
            .height($r('app.float.home_homeCell_size'))
          Text(this.playingArtist)
            .height($r('app.float.home_homeCell_size'))
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
        }.width('35%')

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

          if (this.state === 1) {
            Image($r('app.media.ic_public_pause'))
              .objectFit(ImageFit.Contain)
              .width('90%')
              .height('90%')
              .padding('4vp')
              .onClick(() => {
                this.playerManager.pause();
              })
          } else {
            Image($r('app.media.ic_public_play'))
              .objectFit(ImageFit.Contain)
              .width('90%')
              .height('90%')
              .padding('4vp')
              .onClick(() => {
                this.playerManager.play();
              })
          }
        }.alignContent(Alignment.Center)
        .width('32vp')
        .height('32vp')
        .margin({ right: $r('app.float.home_text_margin') })

        Image($r('app.media.ic_public_view_list'))
          .objectFit(ImageFit.Contain)
          .width($r('app.float.home_homeCell_size'))
          .height($r('app.float.home_homeCell_size'))
          .margin({ right: $r('app.float.home_text_margin') })
      }
      .width('100%')
      .margin({ top: $r('app.float.home_list_margin') })

      Divider().strokeWidth(1).color($r('app.color.divider_gray'))

    }
  }
}