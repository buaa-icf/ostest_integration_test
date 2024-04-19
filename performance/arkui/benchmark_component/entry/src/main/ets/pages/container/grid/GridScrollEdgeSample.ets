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
 * Grid组件调用scrollEdge触发页面跳转布局
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct GridScrollEdgeSample {
  timeHelper: TimeHelper = new TimeHelper('GridScrollEdgeSample');
  @State edgeValue: Edge = Edge.Top;
  scroller: Scroller = new Scroller();

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Column, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change scrollEdge to Edge.Bottom')
            .id('change scrollEdge to Edge.Bottom')
            .margin('5vp')
            .onClick(() => {
              this.scroller.scrollEdge(Edge.Bottom);
            })
        }.width('100%')

        Grid(this.scroller) {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.edgeValue >= 0 && this.timeHelper.printTime(true)) {
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
            if (this.edgeValue >= 0 && this.timeHelper.printTime(false)) {
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