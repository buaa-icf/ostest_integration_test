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
struct UIComponentCommonattrDrawingLayout001 {
  build() {
      Column() {
        Row() {
          Text('1')
            .fontSize(16)
            .backgroundColor(0xF5DEB3)
            .height(50)
            .width(50)
        }
        .direction(Direction.Ltr)
        .position({top:LengthMetrics.px(150),end:LengthMetrics.px(100)})
        .height(200)
        .width(200)
        Row() {
          Text('2')
            .fontSize(16)
            .backgroundColor(0xF5DEB3)
            .height(50)
            .width(50)
        }
        .direction(Direction.Rtl)
        .position({top:LengthMetrics.vp(150),end:LengthMetrics.vp(100)})
        .height(200)
        .width(200)
      }
      .width('100%').margin({ top: 5 })
    }
}