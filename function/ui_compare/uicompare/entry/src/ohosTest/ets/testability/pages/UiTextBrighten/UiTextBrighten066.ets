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
struct UiTextBrighten066 {
  @State fontWeightIndex: number = 0;
  @State fontWeightMode: FontWeight[] = [FontWeight.Lighter, FontWeight.Normal, FontWeight.Regular]
  @State fontWeightModeStr: string[] = ['Lighter', 'Normal', 'Regular']

  textTimerController: TextTimerController = new TextTimerController()

  build() {
    Row() {
      Column() {
        TextTimer()
          .fontColor(Color.Black)
          .fontSize(30)
          .fontWeight(this.fontWeightMode[this.fontWeightIndex])
          .textShadow([{ radius: 0, color: Color.Red, offsetX: -10, offsetY: -10 },
            { radius: 3, color: Color.Blue, offsetX: 10, offsetY: 10 },
            { radius: 8, color: Color.Green, offsetX: -10, offsetY: 10 },
            { radius: 10, color: Color.Black, offsetX: 10, offsetY: -10 }])

        Row() {
          Button('更改fontSize：' + this.fontWeightModeStr[this.fontWeightIndex]).onClick(() => {
            this.fontWeightIndex++
            if (this.fontWeightIndex > (this.fontWeightModeStr.length - 1)) {
              this.fontWeightIndex = 0
            }
          })
        }
      }
      .width('100%')
      .height('100%')
    }
  }
}