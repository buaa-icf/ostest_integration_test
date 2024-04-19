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
struct RowJustifySample {
  timeHelper: TimeHelper = new TimeHelper('RowJustifySample');
  @State rowFlexAlign: FlexAlign = FlexAlign.Center;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Button('FlexAlign.Start')
          .id('FlexAlign.Start')
          .margin('5vp')
          .onClick(() => {
            this.rowFlexAlign = FlexAlign.Start;
          })
        Button('FlexAlign.Center')
          .id('FlexAlign.Center')
          .margin('5vp')
          .onClick(() => {
            this.rowFlexAlign = FlexAlign.Center;
          })
        Button('FlexAlign.End')
          .id('FlexAlign.End')
          .margin('5vp')
          .onClick(() => {
            this.rowFlexAlign = FlexAlign.End;
          })
        Button('FlexAlign.SpaceBetween')
          .id('FlexAlign.SpaceBetween')
          .margin('5vp')
          .onClick(() => {
            this.rowFlexAlign = FlexAlign.SpaceBetween;
          })
        Button('FlexAlign.SpaceAround')
          .id('FlexAlign.SpaceAround')
          .margin('5vp')
          .onClick(() => {
            this.rowFlexAlign = FlexAlign.SpaceAround;
          })
        Button('FlexAlign.SpaceEvenly')
          .id('FlexAlign.SpaceEvenly')
          .margin('5vp')
          .onClick(() => {
            this.rowFlexAlign = FlexAlign.SpaceEvenly;
          })


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.rowFlexAlign != null && this.timeHelper.printTime(true)) {
          }
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          Row().justifyContent(this.rowFlexAlign)
          if (this.rowFlexAlign != null && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}