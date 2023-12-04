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

import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct ListRemoveItemSample {
  timeHelper: TimeHelper = new TimeHelper('ListRemoveItemSample');
  @State arr: number[] = [];

  aboutToAppear() {
    for (let i = 0;i < 100; i++) {
      this.arr.push(i);
    }
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
          Button('change list remove item')
            .id('ListChangeRemoveItem')
            .margin('5vp')
            .onClick(() => {
              this.arr.splice(0, 10);
            })
        }.width('100%')

        List() {
          // ForEach(this.arr, (index: number) => {
            if (this.arr.length > 0 && this.timeHelper.printTime(true)) {
            }

            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()
            ListItem()

            if (this.arr.length > 0 && this.timeHelper.printTime(false)) {
            }
          // }, (item: number) => JSON.stringify(item))
        }

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}