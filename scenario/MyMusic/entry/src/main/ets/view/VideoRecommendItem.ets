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
import Logger from '../common/utils/Logger';

import ItemData from '../viewmodel/VideoRecommendItemData';

/**
 * List item information component.
 */
@Component
export default struct VideoRecommendItem {
  private item: ItemData = new ItemData('Kaihong街舞工作室', $r("app.media.quarered6"), $rawfile('video1.mp4'), $r("app.media.found"), 'Goo老师编舞——****INAP****', '43');
  @State isMuted: boolean = true;
  private controller: VideoController = new VideoController()

  aboutToAppear() {
  }

  build() {
    Column() {
      Row() {
        Image(this.item.img)
          .height('36vp')
          .width('36vp')
          .borderRadius('24vp')
        Text(this.item.name)
          .fontSize('16fp')
          .margin('4vp')
        Blank()
        Text('+ 关注')
          .fontSize('16vp')
          .fontColor(Color.Red)
          .borderWidth('1vp')
          .borderColor(Color.Red)
          .borderRadius('16vp')
          .padding('6vp')
      }.width('90%')
      .margin('12vp')
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.SpaceBetween)

      Stack() {
        Video({ src: this.item.video, previewUri: this.item.videoPreview, controller: this.controller })
          .muted(this.isMuted)
          .width('100%')
          .height('100%')
          .controls(true)
          .autoPlay(false)
          .loop(true)
          .objectFit(ImageFit.Contain)
        if (this.isMuted) {
          Image($r('app.media.ic_public_sound_off_filled'))
            .borderRadius('20vp')
            .backgroundColor('#55303030')
            .padding('8vp')
            .width('38vp')
            .height('38vp')
            .margin({ bottom: '48vp' })
            .onClick(() => {
              this.isMuted = false;
            })
        } else {
          Image($r('app.media.ic_public_sound_filled'))
            .borderRadius('20vp')
            .backgroundColor('#55303030')
            .padding('8vp')
            .width('38vp')
            .height('38vp')
            .margin({ bottom: '48vp' })
            .onClick(() => {
              this.isMuted = true;
            })
        }
      }.width('100%')
      .height('300vp')
      .alignContent(Alignment.BottomEnd)

      Row() {
        Text(this.item.title)
          .fontWeight(FontWeight.Medium)
          .fontSize('18fp')
          .width('70%')
          .maxLines(2)
        Blank()
        Image($r('app.media.ic_public_thumbsup'))
          .width('24vp')
          .height('24vp')
          .margin('4vp')
        Text(this.item.thumbs)
          .fontSize('12fp')
      }
      .width('90%')
      .margin('12vp')
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .alignItems(HorizontalAlign.Center)
    .margin({ bottom: '12vp' })
    .borderRadius('18vp')
    .backgroundColor(Color.White)
    .onVisibleAreaChange([0.0, 1.0], (isVisible: boolean, currentRatio: number) => {
      if (isVisible && currentRatio >= 1.0) {
        Logger.error('onVisibleAreaChange:', this.item.name + 'play')
        this.controller.start();
      } else {
        Logger.error('onVisibleAreaChange:', this.item.name + 'stop')
        this.controller.stop();
      }
    })
  }
}