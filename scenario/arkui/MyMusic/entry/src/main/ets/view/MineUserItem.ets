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

import ItemData from '../viewmodel/MineListItemData';

/**
 * List item information component.
 */
@Component
export default struct MineUserItem {
  private item: ItemData = new ItemData('', $r('app.media.fig21'), '', Visibility.None, Visibility.None);

  build() {
    Row() {
      Image(this.item.img)
        .width('56vp')
        .height('56vp')
        .borderRadius('32vp')
        .backgroundColor(Color.Gray)
      Column() {
        Row() {
          Text(this.item.title)
            .fontSize('20fp')
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
          Text('SVIP·柒')
            .fontSize('12fp')
            .fontColor(Color.White)
            .backgroundColor(Color.Brown)
            .borderRadius('12vp')
            .padding('2vp')
            .margin('4vp')
            .visibility(this.item.patternVisibility)
          Text('分享单曲')
            .fontSize('18fp')
            .fontColor('#707070')
            .padding('2vp')
            .margin('4vp')
            .visibility(this.item.moreVisibility)
        }
        Text(this.item.subTitle)
          .fontSize($r('app.float.small_text_size'))
          .fontColor(Color.Grey)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(2)
          .margin({ top: '4vp', right: '8vp' })
      }
      .margin({ left: '4vp' })
      .alignItems(HorizontalAlign.Start)

    }
    .alignItems(VerticalAlign.Center)
    .width('100%')
  }
}