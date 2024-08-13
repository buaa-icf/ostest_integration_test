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
struct UiTextBrighten077 {
  @State offsetXIndex: number = 0;
  @State offsetXMode: number[] = [10, 20, 30]
  @State offsetXModeStr: string[] = ['10', '20', '30']

  @State offsetYIndex: number = 0;
  @State offsetYMode: number[] = [10, 20, 30]
  @State offsetYModeStr: string[] = ['10', '20', '30']

  @State accumulateTime: number = 0
  @State SwitchNumber: number = 450

  textTimerController: TextTimerController = new TextTimerController()

  build() {
    Row() {
      Column() {
        TextTimer({ controller: this.textTimerController })
          .fontColor(Color.Black)
          .fontSize(30)
          .padding(20)
          .fontStyle(FontStyle.Italic)
          .textShadow([{ radius: 0, color: Color.Red, offsetX: -10, offsetY: -10 },
            { radius: 3, color: Color.Blue, offsetX: 10, offsetY: 10 },
            { radius: 8, color: Color.Green, offsetX: -10, offsetY: 10 },
            { radius: 10, color: Color.Black, offsetX: 10, offsetY: -10 }])
          .offset({ x: this.offsetXMode[this.offsetXIndex], y: this.offsetYMode[this.offsetYIndex] })

        Row() {
          Button('更改offsetx：' + this.offsetXModeStr[this.offsetXIndex]).onClick(() => {
            this.offsetXIndex++
            if (this.offsetXIndex > (this.offsetXModeStr.length - 1)) {
              this.offsetXIndex = 0
            }
          })
        }

        Row() {
          Button('更改offsety：' + this.offsetYModeStr[this.offsetYIndex]).onClick(() => {
            this.offsetYIndex++
            if (this.offsetYIndex > (this.offsetYModeStr.length - 1)) {
              this.offsetYIndex = 0
            }
          })
        }
      }
      .width('100%')
      .height('100%')
    }
  }
}