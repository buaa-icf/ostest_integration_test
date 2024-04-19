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
 * Flex组件value内wrap属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct FlexValueWrapSample {
  timeHelper: TimeHelper = new TimeHelper('FlexValueWrapSample');
  @State flexWrap: FlexWrap = FlexWrap.Wrap;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change value wrap to FlexWrap.NoWrap')
            .id('change value wrap to FlexWrap.NoWrap')
            .margin('5vp')
            .onClick(() => {
              this.flexWrap = FlexWrap.NoWrap;
            })
          Button('change value wrap to FlexWrap.Wrap')
            .id('change value wrap to FlexWrap.Wrap')
            .margin('5vp')
            .onClick(() => {
              this.flexWrap = FlexWrap.Wrap;
            })
          Button('change value wrap to FlexWrap.WrapReverse')
            .id('change value wrap to FlexWrap.WrapReverse')
            .margin('5vp')
            .onClick(() => {
              this.flexWrap = FlexWrap.WrapReverse;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.flexWrap >= 0 && this.timeHelper.printTime(true)) {
          }
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          Flex({ wrap: this.flexWrap })
          if (this.flexWrap >= 0 && this.timeHelper.printTime(false)) {
          }
        })


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}