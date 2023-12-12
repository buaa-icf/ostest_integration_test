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
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export struct PodCastBigItem {
  private item: ItemData = new ItemData('', $r('app.media.fig1'), '', '', '', '', '');
  @Consume playingTitle: string;
  @Consume playingArtist: string;
  @Consume playingImg: Resource;
  @Consume rotateAngle: number;

  build() {
    Column() {
      Row() {
        Text(this.item.title1)
          .backgroundColor(Color.Red)
          .fontColor(Color.White)
          .padding('4vp')
          .margin('4vp')
          .borderRadius('4vp')
        Text(this.item.title2)
          .backgroundColor(Color.White)
          .fontColor(Color.Gray)
          .padding('4vp')
          .margin('4vp')
          .borderRadius('4vp')
        Text(this.item.title3)
          .backgroundColor(Color.White)
          .fontColor(Color.Gray)
          .padding('4vp')
          .margin('4vp')
          .borderRadius('4vp')
      }.alignItems(VerticalAlign.Top)
      .margin('8vp')

      Column() {
        Row() {
          Text(this.item.title)
            .fontSize($r('app.float.big_text_size'))
            .fontColor(Color.White)
            .margin({ bottom: '4vp' })
          Text(this.item.score)
            .fontSize($r('app.float.small_text_size'))
            .fontColor(Color.White)
        }
        .padding('8vp')
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        Row() {
          Text(this.item.subTitle)
            .fontSize($r('app.float.small_text_size'))
            .fontColor(Color.White)
        }
        .padding('8vp')

        Row() {
          Row() {
            Image($r('app.media.ic_files_new_folder'))
              .width('24vp')
              .height('24vp')
            Text('马上追剧')
              .fontSize($r('app.float.normal_text_size'))
              .fontColor(Color.White)
              .margin('1vp')
          }
          .backgroundColor('#AAA0A0A0')
          .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
          .padding('12vp')

          Row() {
            Image($r('app.media.ic_public_play'))
              .width('24vp')
              .height('24vp')
            Text('开始试听')
              .fontSize($r('app.float.normal_text_size'))
              .fontColor(Color.Black)
          }
          .padding('12vp')
          .backgroundColor(Color.White)
          .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
        }
        .height('50%')
        .justifyContent(FlexAlign.SpaceEvenly)
        .width('100%')
      }
      .height('50%')
      .width('100%')
      .backgroundColor('#88A0A0A0')
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(HorizontalAlign.Start)
      .borderRadius({ bottomLeft: '12vp', bottomRight: '12vp' })
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(HorizontalAlign.Start)
    .margin({ bottom: '12vp' })
    .backgroundImage(this.item.img)
    .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
    .width('90%')
    .height('320vp')
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