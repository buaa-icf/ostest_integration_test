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
struct UiComponentDividerStyle002 {
  build() {
    Row() {
      Column() {
        Text('1')
        Divider()
          .strokeWidth(4)
          .key('UiComponentDividerStyle002_001')
        Text('2')
        Divider()
          .strokeWidth(4)
          .color('#33182431')
          .key('UiComponentDividerStyle002_002')
        Text('3')
        Divider()
          .strokeWidth(4)
          .color(null)
          .key('UiComponentDividerStyle002_003')
        Text('4')
        Divider()
          .strokeWidth(4)
          .color(undefined)
          .key('UiComponentDividerStyle002_004')
        Text('5')
        Divider()
          .strokeWidth(4)
          .color(Color.Blue)
          .key('UiComponentDividerStyle002_005')
        Text('6')
        Divider()
          .strokeWidth(4)
          .color('#0000ff')
          .key('UiComponentDividerStyle002_006')
        Text('7')
        Divider()
          .strokeWidth(4)
          .color('rgb(0, 0, 255)')
          .key('UiComponentDividerStyle002_007')
        Text('8')
        Divider()
          .strokeWidth(4)
          .color(0x0000ff)
          .key('UiComponentDividerStyle002_008')
        Text('9')
        Divider()
          .strokeWidth(4)
          .color($r('app.color.blue'))
          .key('UiComponentDividerStyle002_009')
        Text('10')
        Divider()
          .strokeWidth(4)
          .color('@@')
          .key('UiComponentDividerStyle002_010')
        Text('11')
        Divider()
          .strokeWidth(4)
          .color($r('app.color.start_window_background'))
          .key('UiComponentDividerStyle002_011')
      }
      .width('100%')
      .height('100%')
    }
  }
}