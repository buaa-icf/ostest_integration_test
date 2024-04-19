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
 * ScrollBar组件state属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct ScrollBarStateSample {
  timeHelper: TimeHelper = new TimeHelper('ScrollBarStateSample');
  scroller: Scroller = new Scroller();
  @State scrollBarState: BarState = BarState.Off;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change state to On')
            .id('change state to On')
            .margin('5vp')
            .onClick(() => {
              this.scrollBarState = BarState.On;
            })
          Button('change state to Auto')
            .id('change state to Auto')
            .margin('5vp')
            .onClick(() => {
              this.scrollBarState = BarState.Auto;
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.scrollBarState != null && this.timeHelper.printTime(true)) {
          }
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          ScrollBar({ scroller: this.scroller, state: this.scrollBarState })
          if (this.scrollBarState != null && this.timeHelper.printTime(false)) {
          }
        })

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}