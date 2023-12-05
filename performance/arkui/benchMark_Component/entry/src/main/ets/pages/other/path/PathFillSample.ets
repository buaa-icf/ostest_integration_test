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
struct PathFillSample {
  timeHelper: TimeHelper = new TimeHelper('PathFillSample');
  @State pathFill: Color = Color.Red;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change Fill')
            .id('PathChangeFill')
            .margin('5vp')
            .onClick(() => {
              this.pathFill = Color.Yellow;
            })
        }.width('100%')

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.pathFill == Color.Yellow && this.timeHelper.printTime(true)) {
          }

          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)
          Path().fill(this.pathFill)

          if (this.pathFill == Color.Yellow && this.timeHelper.printTime(false)) {
          }
        })

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}