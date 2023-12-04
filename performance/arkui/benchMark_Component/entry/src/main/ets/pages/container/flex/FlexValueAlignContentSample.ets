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
 * Flex组件value内alignContent属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct FlexValueAlignContentSample {
  timeHelper: TimeHelper = new TimeHelper('FlexValueAlignContentSample');
  @State flexAlign: FlexAlign = FlexAlign.Center;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change value alignContent to FlexAlign.Start')
            .id('change value alignContent to FlexAlign.Start')
            .margin('5vp')
            .onClick(() => {
              this.flexAlign = FlexAlign.Start;
            })
          Button('change value alignContent to FlexAlign.Center')
            .id('change value alignContent to FlexAlign.Center')
            .margin('5vp')
            .onClick(() => {
              this.flexAlign = FlexAlign.Center;
            })
          Button('change value alignContent to FlexAlign.End')
            .id('change value alignContent to FlexAlign.End')
            .margin('5vp')
            .onClick(() => {
              this.flexAlign = FlexAlign.End;
            })
          Button('change value alignContent to FlexAlign.SpaceBetween')
            .id('change value alignContent to FlexAlign.SpaceBetween')
            .margin('5vp')
            .onClick(() => {
              this.flexAlign = FlexAlign.SpaceBetween;
            })
          Button('change value alignContent to FlexAlign.SpaceAround')
            .id('change value alignContent to FlexAlign.SpaceAround')
            .margin('5vp')
            .onClick(() => {
              this.flexAlign = FlexAlign.SpaceAround;
            })
          Button('change value alignContent to FlexAlign.SpaceEvenly')
            .id('change value alignContent to FlexAlign.SpaceEvenly')
            .margin('5vp')
            .onClick(() => {
              this.flexAlign = FlexAlign.SpaceEvenly;
            })
        }.width('100%')


        ForEach(ArrEntity.arr, (index: number) => {
          if (this.flexAlign >= 0 && this.timeHelper.printTime(true)) {
          }
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          Flex({ alignContent: this.flexAlign })
          if (this.flexAlign >= 0 && this.timeHelper.printTime(false)) {
          }
        })


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}