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
 * Navigation组件Stack模式触发页面跳转更新布局耗时
 */
import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct NavigationStackJumpSample {
  timeHelper: TimeHelper = new TimeHelper('NavigationStackJumpSample');
  @Provide navPathStack: NavPathStack = new NavPathStack();

  @Builder
  PageTwo(name: string) {
    if (this.timeHelper.printTime(false)) {
    }
    NavDestination() {
    }.title('PageTwo')
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('Stack jump to next page')
            .id('Stack jump to next page')
            .margin('5vp')
            .onClick(() => {
              if (this.timeHelper.printTime(true)) {
              }
              this.navPathStack.pushPath({ name: '' })
            })
        }.width('100%')

        Navigation(this.navPathStack) {
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
        }.mode(NavigationMode.Stack).title('PageOne').navDestination(this.PageTwo)

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}