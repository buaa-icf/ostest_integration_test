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

import ItemData from '../viewmodel/RadioItemData';
import prompt from '@ohos.promptAction';

/**
 * List item information component.
 */
@Component
export default struct RadioItem {
  private items: ItemData[] = new Array<ItemData>();

  build() {
    Scroll() {
      Row() {
        ForEach(this.items, (item: ItemData) => {
          Row() {
            Image(item.img)
              .width($r('app.float.home_third_Cell_width'))
              .height($r('app.float.home_third_Cell_width'))
              .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
              .margin({ left: '8vp' })
            Column() {
              Text(item.title)
                .margin({ left: $r('app.float.home_homeCell_margin') })
                .maxLines(1)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .width('70%')
              Row() {
                Column() {
                  Text(item.others)
                    .fontSize($r('app.float.little_text_size'))
                    .fontColor(Color.Grey)
                  Text(item.subTitle)
                    .fontSize($r('app.float.little_text_size'))
                    .fontColor(Color.Grey)
                }
                .height('80%')
                .justifyContent(FlexAlign.SpaceBetween)
                .alignItems(HorizontalAlign.Start)

                Image($r('app.media.ic_public_play_norm'))
                  .width('24vp')
                  .height('24vp')
              }
              .margin($r('app.float.home_homeCell_margin'))
              .width('65%')
              .justifyContent(FlexAlign.SpaceBetween)
            }
            .alignItems(HorizontalAlign.Start)
            .height($r('app.float.home_third_Cell_width'))
          }
          .margin({ left: '8vp' })
          .height('96vp')
          .padding($r('app.float.home_homeCell_margin'))
          .width('80%')
          .backgroundColor('#F5F5F5')
          .borderRadius($r('app.float.home_backgroundImage_borderRadius'))
          .alignItems(VerticalAlign.Center)
          .onClick(() => {
            prompt.showToast({
              message: '播放歌单：' + item.title
            })
          })
        })
      }
    }
    .scrollable(ScrollDirection.Horizontal)
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.Spring)
  }
}