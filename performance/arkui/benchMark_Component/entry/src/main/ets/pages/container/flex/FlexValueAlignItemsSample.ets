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
 * Flex组件value内alignItems属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct FlexValueAlignItemsSample {
  timeHelper: TimeHelper = new TimeHelper('FlexValueAlignItemsSample');
  @State itemAlign: ItemAlign = ItemAlign.Center;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change value alignItems to ItemAlign.Auto')
            .id('change value alignItems to ItemAlign.Auto')
            .margin('5vp')
            .onClick(() => {
              this.itemAlign = ItemAlign.Auto;
            })
          Button('change value alignItems to ItemAlign.Start')
            .id('change value alignItems to ItemAlign.Start')
            .margin('5vp')
            .onClick(() => {
              this.itemAlign = ItemAlign.Start;
            })
          Button('change value alignItems to ItemAlign.Center')
            .id('change value alignItems to ItemAlign.Center')
            .margin('5vp')
            .onClick(() => {
              this.itemAlign = ItemAlign.Center;
            })
          Button('change value alignItems to ItemAlign.End')
            .id('change value alignItems to ItemAlign.End')
            .margin('5vp')
            .onClick(() => {
              this.itemAlign = ItemAlign.End;
            })
          Button('change value alignItems to ItemAlign.Stretch')
            .id('change value alignItems to ItemAlign.Stretch')
            .margin('5vp')
            .onClick(() => {
              this.itemAlign = ItemAlign.Stretch;
            })
          Button('change value alignItems to ItemAlign.Baseline')
            .id('change value alignItems to ItemAlign.Baseline')
            .margin('5vp')
            .onClick(() => {
              this.itemAlign = ItemAlign.Baseline;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.itemAlign >= 0 && this.timeHelper.printTime(true)) {
          }
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          Flex({ alignItems: this.itemAlign })
          if (this.itemAlign >= 0 && this.timeHelper.printTime(false)) {
          }
        })


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}