/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct MenuFontSample {
  timeHelper: TimeHelper = new TimeHelper('MenuFontSample');
  @State menuFont: Font = { size: 16, weight: FontWeight.Normal, style: FontStyle.Normal };

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change Font')
            .id('MenuChangeFont')
            .margin('5vp')
            .onClick(() => {
              this.menuFont = { size: 30, weight: FontWeight.Bolder, style: FontStyle.Italic };
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.menuFont.size == 30 && this.timeHelper.printTime(true)) {
          }

          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);
          Menu().font(this.menuFont);

          if (this.menuFont.size == 30 && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}