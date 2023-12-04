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
struct TabsDragSample {
  timeHelper: TimeHelper = new TimeHelper('TabsDragSample');

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Tabs() {

          ForEach(ArrEntity.arr, (index: number) => {

            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('pink')

          }, (item: number) => JSON.stringify(item))

        }.onTouch((event: TouchEvent) => {
          if (event.type == TouchType.Down) {
            this.timeHelper.printTime(true, 1);
          }
          if (event.type == TouchType.Up) {
            this.timeHelper.printTime(false, 1);
          }
        })
        .onDragEnd(() => {
          this.timeHelper.printTime(false, 1);
        })

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}