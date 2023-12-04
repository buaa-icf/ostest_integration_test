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
struct PatternLockCircleRadiusSample {
  timeHelper: TimeHelper = new TimeHelper('PatternLockCircleRadiusSample');
  @State patternLockCircleRadius: string = '6vp';

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Row() {
          Button('change CircleRadius')
            .id('PatternLockChangeCircleRadius')
            .margin('5vp')
            .onClick(() => {
              this.patternLockCircleRadius = '12vp';
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.patternLockCircleRadius == '12vp' && this.timeHelper.printTime(true)) {
          }

          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)
          PatternLock().circleRadius(this.patternLockCircleRadius)

          if (this.patternLockCircleRadius == '12vp' && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}