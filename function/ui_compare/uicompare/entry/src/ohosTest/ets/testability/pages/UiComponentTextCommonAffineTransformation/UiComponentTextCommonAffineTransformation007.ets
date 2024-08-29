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
struct UiComponentTextCommonAffineTransformation007 {
  @State textrotatesize:RotateOptions = {
    x: 0,
    y: 0,
    z: 0,
    centerX:' 50%',
    centerY: '50%',
    centerZ: 0,
    perspective: 0,
    angle: 0
  }

  build() {
    Row() {
      Column() {
        Text('this is the text007 here')
          .margin(20)
          .fontColor('#ffff0000')
          .fontSize(20)
          .defaultFocus(true)
          .rotate(this.textrotatesize)
          .id('text007')
        Button('rotate')
          .margin(20)
          .width('90%')
          .height('5%')
          .fontSize(12)
          .onClick(() => {
            this.textrotatesize = {
              x: 0,
              y: 0,
              z: 1,
              centerX: '0%',
              centerY: '0%',
              angle: 300
            }
          })
          .id('textrotate007')
      }
    }
    .width('100%')
    .height('100%')
  }
}
