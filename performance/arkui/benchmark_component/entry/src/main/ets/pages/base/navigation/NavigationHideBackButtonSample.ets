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
 * Navigation组件hideBackButton属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct NavigationHideBackButtonSample {
  timeHelper: TimeHelper = new TimeHelper('NavigationHideBackButtonSample');
  @State hideBackButton: boolean = true;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change hideBackButton true to false')
            .id('change hideBackButton true to false')
            .margin('5vp')
            .onClick(() => {
              this.hideBackButton = false;
            })
        }.width('100%')



        Navigation() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (!this.hideBackButton && this.timeHelper.printTime(true)) {
            }
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
            if (!this.hideBackButton && this.timeHelper.printTime(false)) {
            }
          })
        }.hideBackButton(this.hideBackButton)



      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}