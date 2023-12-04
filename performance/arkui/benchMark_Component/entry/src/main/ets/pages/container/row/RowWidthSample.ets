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
struct RowWidthSample {
  timeHelper: TimeHelper = new TimeHelper('RowWidthSample');
  @State RowWidth: number = 200;

  build() {
    Scroll() {
      Column() {
        Button('change width 200 to 300')
          .id('RowChangeWidth')
          .margin('15vp')
          .onClick(() => {
            this.RowWidth = 300;
          })

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.RowWidth > 0 && this.timeHelper.printTime(true)) {
          }
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          Row().width(this.RowWidth).height(200)
          if (this.RowWidth > 0 && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}