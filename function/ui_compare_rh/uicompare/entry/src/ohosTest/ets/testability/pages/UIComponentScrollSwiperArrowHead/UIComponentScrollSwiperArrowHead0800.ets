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
struct UIComponentScrollSwiperArrowHead0800 {
  private swiperController: SwiperController = new SwiperController()
  @State modifier: SwiperModifier =  new SwiperModifier()
  @State leftV: number = 100

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
      .indicator( // 设置圆点导航点样式
        new DotIndicator()
          .top(15)
          .bottom(15)
          .left(this.leftV)
          .right(15))
      .displayArrow({ isSidebarMiddle: true }, true)
      Button('导航指示器左移按钮')
        .id('UIComponentScrollSwiperArrowHead0800_001')
        .onClick(() => {
          this.leftV = 0;
        })
    }.width('100%')
    .margin({ top: 5 })
  }
}
