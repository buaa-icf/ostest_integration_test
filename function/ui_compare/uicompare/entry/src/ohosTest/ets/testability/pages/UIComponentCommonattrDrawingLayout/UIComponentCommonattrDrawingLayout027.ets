/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { LengthMetrics } from '@ohos.arkui.node'
@Entry
@Component
struct UIComponentCommonattrDrawingLayout027 {
  build() {
    Row() {
      RelativeContainer() {
        Image($r('app.media.icon'))
          .width(20)
          .height(20)
          .backgroundColor("#FF3333")
          .direction(Direction.Rtl)
          .position({ top: LengthMetrics.px(100), start: LengthMetrics.px(100) })
          .markAnchor({ top: LengthMetrics.px(20), start: LengthMetrics.px(10) })
          .id("row1")
        Image($r('app.media.icon')).width(20).height(20)
          .backgroundColor("#FF3333")
          .direction(Direction.Ltr)
          .position({ top: LengthMetrics.px(100), start: LengthMetrics.px(100) })
          .markAnchor({ top: LengthMetrics.px(20), start: LengthMetrics.px(10) })
          .id("row2")
      }
      .width(300).height(300)
      .margin({ left: 50 })
      .border({ width: 2, color: "#6699FF" })
    }
    .height('100%')
  }
}