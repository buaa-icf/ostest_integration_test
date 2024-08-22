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
struct UiComponentDividerStyle004 {
  build() {
    Row() {
      Column() {
        Text('1')
        Divider()
          .strokeWidth(8)
          .width(100)
          .lineCap(LineCapStyle.Butt)
          .key('UiComponentDividerStyle004_001')
        Text('2')
        Divider()
          .strokeWidth(8)
          .width(100)
          .lineCap(LineCapStyle.Round)
          .key('UiComponentDividerStyle004_002')
        Text('3')
        Divider()
          .strokeWidth(8)
          .width(100)
          .lineCap(LineCapStyle.Square)
          .key('UiComponentDividerStyle004_003')
        Text('4')
        Divider()
          .strokeWidth(8)
          .width(100)
          .lineCap(LineCapStyle.Butt)
          .key('UiComponentDividerStyle004_004')

      }
      .width('100%')
      .height('100%')
    }
  }
}