/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { SwiperModifier } from '@ohos.arkui.modifier'

@Entry
@Component
struct UIComponentScrollSwiperArrowHead0640 {
  private swiperController: SwiperController = new SwiperController()
  @State modifier: SwiperModifier =  new SwiperModifier()


  build() {
    Column({ space: 5 }) {
      Swiper(this.swiperController) {
        Text("1")
          .width('90%')
          .height(160)
          .backgroundColor(0xAFEEEE)
          .textAlign(TextAlign.Center)
        Text("2")
          .width('90%')
          .height(160)
          .backgroundColor(Color.Pink)
          .textAlign(TextAlign.Center)
      }
      .displayArrow({ isSidebarMiddle: true }, true)

    }.width('100%')
    .margin({ top: 5 })
  }
}
