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
struct ColumnWidthSample {
  timeHelper: TimeHelper = new TimeHelper('ColumnWidthSample');
  @State columnWidth: number = 200;

  build() {
    Scroll() {
      Column() {
        Button('change width 200 to 300')
          .id('ColumnChangeWidth')
          .margin('15vp')
          .onClick(() => {
            this.columnWidth = 300;
          })

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.columnWidth > 0 && this.timeHelper.printTime(true)) {
          }
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          Column().width(this.columnWidth).height(200)
          if (this.columnWidth > 0 && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}