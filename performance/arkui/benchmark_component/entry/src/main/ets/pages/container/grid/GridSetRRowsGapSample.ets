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

/**
 * 设置Grid组件rowsTemplate属性，不设置columnsTemplate属性，rowsGap更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct GridSetRRowsGapSample {
  timeHelper: TimeHelper = new TimeHelper('GridSetRRowsGapSample');
  @State rowsGapValue: number = 5;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change rowsGap 5 to 10')
            .id('change rowsGap 5 to 10')
            .margin('5vp')
            .onClick(() => {
              this.rowsGapValue = 10;
            })
        }.width('100%')

        Grid() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.rowsGapValue >= 0 && this.timeHelper.printTime(true)) {
            }

            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()

            if (this.rowsGapValue >= 0 && this.timeHelper.printTime(false)) {
            }
          })
        }
        .rowsTemplate('1fr 1fr 2fr')
        .rowsGap(this.rowsGapValue)
      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}