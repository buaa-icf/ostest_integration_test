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
 * Swiper组件自动轮播页面滑动布局
 */

import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper';

@Entry
@Component
struct SwiperLoopSample {
  timeHelper: TimeHelper = new TimeHelper('SwiperLoopSample');
  @State loop: boolean = false;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change loop false to true')
            .id('change loop false to true')
            .margin('5vp')
            .onClick(() => {
              this.loop = true;
            })
        }.width('100%')

        Swiper() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.loop != null && this.timeHelper.printTime(true)) {
            }
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
            if (this.loop != null && this.timeHelper.printTime(false)) {
            }
          })
        }.loop(this.loop)
      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}