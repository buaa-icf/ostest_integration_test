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
 * Navigation组件titleMode属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct NavigationTitleModeSample {
  timeHelper: TimeHelper = new TimeHelper('NavigationTitleModeSample');
  @State titleModeValue: NavigationTitleMode = NavigationTitleMode.Full;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change titleMode to Free')
            .id('change titleMode to Free')
            .margin('5vp')
            .onClick(() => {
              this.titleModeValue = NavigationTitleMode.Free;
            })
          Button('change titleMode to Full')
            .id('change titleMode to Full')
            .margin('5vp')
            .onClick(() => {
              this.titleModeValue = NavigationTitleMode.Full;
            })
          Button('change titleMode to Mini')
            .id('change titleMode to Mini')
            .margin('5vp')
            .onClick(() => {
              this.titleModeValue = NavigationTitleMode.Mini;
            })
        }.width('100%')

        if (this.titleModeValue >= 0 && this.timeHelper.printTime(true)) {
        }

        Navigation() {
          ForEach(ArrEntity.arr, (index: number) => {
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
          })
        }.titleMode(this.titleModeValue)

        if (this.titleModeValue >= 0 && this.timeHelper.printTime(false)) {
        }

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}