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


@Entry
@Component
struct UiComponentDividerStyle001 {
  build() {
    Row() {
      Column() {
        Divider()
          .height(22)
          .margin({ left: 8, right: 8 })
          .opacity(0.6)
          .vertical(true)
          .color('#0000ff')
          .key('UiComponentDividerStyle001_001')
        Divider()
          .vertical(false)
          .color('#182431')
          .strokeWidth(8)
          .key('UiComponentDividerStyle001_002')
      }
      .width('100%')
      .height('100%')
    }
  }
}