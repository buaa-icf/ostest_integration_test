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
 * Grid组件edgeEffect属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct GridEdgeEffectSample {
  // timeHelper: TimeHelper = new TimeHelper('GridEdgeEffectSample');
  @State edgeEffect: EdgeEffect = EdgeEffect.None;
  scroller: Scroller = new Scroller()

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Column, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change edgeEffect to EdgeEffect.Spring')
            .id('change edgeEffect to EdgeEffect.Spring')
            .margin('5vp')
            .onClick(() => {
              this.edgeEffect = EdgeEffect.Spring;
            })
          Button('change edgeEffect to EdgeEffect.Fade')
            .id('change edgeEffect to EdgeEffect.Fade')
            .margin('5vp')
            .onClick(() => {
              this.edgeEffect = EdgeEffect.Fade;
            })
          Button('change edgeEffect to EdgeEffect.None')
            .id('change edgeEffect to EdgeEffect.None')
            .margin('5vp')
            .onClick(() => {
              this.edgeEffect = EdgeEffect.None;
            })
        }.width('100%')

        Grid(this.scroller) {
          // if (this.edgeValue >= 0 && this.timeHelper.printTime(true)) {
          // }
          ForEach(ArrEntity.arr, (index: number) => {

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

          })
          // if (this.edgeValue >= 0 && this.timeHelper.printTime(false)) {
          // }
        }
        .height('100%')
        .columnsTemplate('1fr')
        .edgeEffect(this.edgeEffect)
      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}