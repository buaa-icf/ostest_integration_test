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

import prompt from '@ohos.promptAction';
import SquareTriItemData from '../viewmodel/SquareTriItemData';

/**
 * List item information component.
 */
@Component
export default struct SquareTriItem {
  private items: SquareTriItemData[] = new Array<SquareTriItemData>();

  build() {
    Column() {
      ForEach(this.items, (item: SquareTriItemData) => {
        Row() {
          Text('#')
            .fontColor(Color.Blue)
            .fontSize('20fp')
            .margin('4vp')
          Text(item.title)
            .fontSize('18fp')
            .maxLines(1)
          Image(item.img)
            .width('24vp')
            .height('24vp')
          if ('新' === item.subTitle) {
            Text(item.subTitle)
              .fontColor(Color.Green)
              .backgroundColor('#1100ff00')
              .padding('2vp')
              .borderRadius('2vp')
              .fontSize('12fp')
          } else if('热' === item.subTitle){
            Text(item.subTitle)
              .fontColor(Color.Red)
              .backgroundColor('#11ff0000')
              .padding('2vp')
              .borderRadius('2vp')
              .fontSize('12fp')
          }
        }
        .margin('8vp')
      })
    }
    .width('90%')
    .margin({ right: '12vp' })
    .backgroundColor(Color.White)
    .borderRadius('16vp')
    .alignItems(HorizontalAlign.Start)

  }
}