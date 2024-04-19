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
struct ColumnAlignSample {
  timeHelper: TimeHelper = new TimeHelper('ColumnAlignSample');
  @State columnAlign: HorizontalAlign = HorizontalAlign.Center;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('HorizontalAlign.Start')
          .id('HorizontalAlign.Start')
          .margin('5vp')
          .onClick(() => {
            this.columnAlign = HorizontalAlign.Start;
          })
        Button('HorizontalAlign.Center')
          .id('HorizontalAlign.Center')
          .margin('5vp')
          .onClick(() => {
            this.columnAlign = HorizontalAlign.Center;
          })
        Button('HorizontalAlign.End')
          .id('HorizontalAlign.End')
          .margin('5vp')
          .onClick(() => {
            this.columnAlign = HorizontalAlign.End;
          })


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.columnAlign != null && this.timeHelper.printTime(true)) {
          }
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          Column().alignItems(this.columnAlign)
          if (this.columnAlign != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}