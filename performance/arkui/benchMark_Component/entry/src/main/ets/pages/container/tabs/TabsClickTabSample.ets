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
struct TabsClickTabSample {
  timeHelper: TimeHelper = new TimeHelper('TabsClickTabSample');
  @State index: number = 0;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Column, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change Table')
            .id('TabsChangeIndex')
            .margin('5vp')
            .onClick(() => {
              this.index = 2;
            })
        }.width('100%')


        Tabs({ index: this.index }) {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.index == 2 && this.timeHelper.printTime(true)) {
            }
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            TabContent() {
              Column().width('100%').height('100%').backgroundColor(Color.Pink)
            }.tabBar('Pink')
            if (this.index == 2 && this.timeHelper.printTime(false)) {
            }
          }, (item: number) => JSON.stringify(item))
        }


      }
      .width('100%')
    }.margin({ bottom: 60 })

    .width('100%')
  }
}