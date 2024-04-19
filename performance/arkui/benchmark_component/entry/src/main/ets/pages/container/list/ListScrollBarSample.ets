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

import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct ListScrollBarSample {
  timeHelper: TimeHelper = new TimeHelper('ListScrollBarSample');
  @State scrollBar: BarState = BarState.On;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
          Button('change scrollBar Off')
            .id('ListScrollBar_Off')
            .margin('5vp')
            .onClick(() => {
              this.scrollBar = BarState.Off;
            })
          Button('change scrollBar On')
            .id('ListScrollBar_On')
            .margin('5vp')
            .onClick(() => {
              this.scrollBar = BarState.On;
            })
          Button('change scrollBar Auto')
            .id('ListScrollBar_Auto')
            .margin('5vp')
            .onClick(() => {
              this.scrollBar = BarState.Auto;
            })
        }.width('100%')

        List() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.scrollBar != null && this.timeHelper.printTime(true)) {
            }

            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()
            ListItemGroup()

            if (this.scrollBar != null && this.timeHelper.printTime(false)) {
            }
          }, (item: number) => JSON.stringify(item))
        }
        .scrollBar(this.scrollBar)

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}