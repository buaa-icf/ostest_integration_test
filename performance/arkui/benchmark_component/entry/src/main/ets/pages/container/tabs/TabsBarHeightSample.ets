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
struct TabsBarHeightSample {
  timeHelper: TimeHelper = new TimeHelper('TabsBarHeightSample');
  @State barHeight: number = 100;

  build() {
    Scroll() {
      Column() {
        Button('change barHeight 100 to 200')
          .id('TabChangeBarHeight')
          .margin('15vp')
          .onClick(() => {
            this.barHeight = 200;
          })

        ForEach(ArrEntity.arr, (index: number) => {
          if (this.barHeight == 200 && this.timeHelper.printTime(true)) {
          }
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          Tabs().barHeight(this.barHeight)
          if (this.barHeight == 200 && this.timeHelper.printTime(false)) {
          }
        }, (item: number) => JSON.stringify(item))


      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}