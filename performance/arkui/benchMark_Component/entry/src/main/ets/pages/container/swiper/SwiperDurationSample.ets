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
 * Swiper组件duration属性更新滑动布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct SwiperDurationSample {
  // timeHelper: TimeHelper = new TimeHelper('SwiperDurationSample');
  @State duration: number = 200;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change duration 200 to 500')
            .id('change duration 200 to 500')
            .margin('5vp')
            .onClick(() => {
              this.duration = 500;
            })
        }.width('100%')

        // if (this.duration != null && this.timeHelper.printTime(true)) {
        // }

        Swiper() {
          ForEach(ArrEntity.arr, (index: number) => {
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
            Text("" + index).width('100%').height('80%')
          })
        }.duration(this.duration)

        // if (this.duration != null && this.timeHelper.printTime(false)) {
        // }

      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}