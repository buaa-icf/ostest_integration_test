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
struct UiComponentDividerStyle003 {
  build() {
    Row() {
      Column() {
        Text('1')
        Divider()
          .key('UiComponentDividerStyle003_001')
        Text('2')
        Divider()
          .strokeWidth(1)
          .key('UiComponentDividerStyle003_002')
        Text('3')
        Divider()
          .strokeWidth(null)
          .key('UiComponentDividerStyle003_003')
        Text('4')
        Divider()
          .strokeWidth(undefined)
          .key('UiComponentDividerStyle003_004')
        Text('5')
        Divider()
          .strokeWidth(5)
          .key('UiComponentDividerStyle003_005')
        Text('6')
        Divider()
          .strokeWidth(0)
          .key('UiComponentDividerStyle003_006')
        Text('7')
        Divider()
          .strokeWidth(-5)
          .key('UiComponentDividerStyle003_007')
        Text('8')
        Divider()
          .strokeWidth('5vp')
          .key('UiComponentDividerStyle003_008')
        Text('9')
        Divider()
          .strokeWidth('5px')
          .key('UiComponentDividerStyle003_009')
        Text('10')
        Divider()
          .strokeWidth('5fp')
          .key('UiComponentDividerStyle003_010')
        Text('11')
        Divider()
          .strokeWidth('5lpx')
          .key('UiComponentDividerStyle003_011')
        Text('12')
        Divider()
          .strokeWidth('5abc')
          .key('UiComponentDividerStyle003_012')
        Text('13')
        Divider()
          .strokeWidth(5).height(20)
          .key('UiComponentDividerStyle003_013')
        Text('14')
        Divider()
          .strokeWidth(20).height(5)
          .key('UiComponentDividerStyle003_014')
      }
      .width('100%')
      .height('100%')
    }
  }
}