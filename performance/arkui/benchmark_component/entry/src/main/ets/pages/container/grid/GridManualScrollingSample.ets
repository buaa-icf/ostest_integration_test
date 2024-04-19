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
 * 抛滑场景下Grid组件更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct GridManualScrollingSample {
  timeHelper: TimeHelper = new TimeHelper('GridManualScrollingSample');

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {

        Grid() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.timeHelper.printTime(true)) {
            }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            GridItem() { Text(index.toString()) }
            if (this.timeHelper.printTime(false)) {
            }
          })
        }
        .height('100%')
        .columnsTemplate('1fr')
      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}