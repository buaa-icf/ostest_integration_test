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

import ItemData from '../viewmodel/PodCastBigItemData';
import hilog from '@ohos.hilog';
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export struct PodCastListenItem {
  private item: ItemData = new ItemData('', $r('app.media.fig1'), '', '', '', '', '');
  @Consume playingTitle: string;
  @Consume playingArtist: string;
  @Consume playingImg: Resource;
  @Consume rotateAngle: number;

  build() {
    Column() {
      Row() {
        Row() {
          Image($r('app.media.ic_public_music')).height('24vp').width('24vp')
          Text(this.item.title1)
            .fontSize($r('app.float.small_text_size'))
            .fontColor(Color.White)
        }.padding('4vp')
        .backgroundColor('#6a9cfd')
        .borderRadius('12vp')

        Image($r('app.media.ic_public_fast')).width('36VP').height('36vp')
      }
      .margin({ top: '4vp' })
      .width('90%')
      .alignItems(VerticalAlign.Top)
      .justifyContent(FlexAlign.SpaceBetween)

      Column() {
        Row() {
          Text(this.item.subTitle)
            .fontSize($r('app.float.small_text_size'))
            .fontColor(Color.White)
        }
        .padding('8vp')

        Row() {
          Text(this.item.title)
            .fontSize('20fp')
            .fontColor(Color.White)
            .margin({ bottom: '4vp' })
          Text(this.item.score)
            .fontSize($r('app.float.small_text_size'))
            .fontColor(Color.White)
        }
        .padding('8vp')
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .height('40%')
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(HorizontalAlign.Start)
    }
    .width('200vp')
    .height('200vp')
    .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
    .backgroundImage(this.item.img)
    .backgroundImagePosition(Alignment.Center)
    .backgroundImageSize({ width: '200vp', height: '200vp' })
    .margin('12vp')
    .justifyContent(FlexAlign.SpaceBetween)
    .onClick(() => {
      this.playingTitle = this.item.title;
      this.playingArtist = this.item.subTitle;
      this.playingImg = this.item.img;
      this.rotateAngle = 360;
      prompt.showToast({
        message: '进入歌单：' + this.item.title
      })
    })
  }
}