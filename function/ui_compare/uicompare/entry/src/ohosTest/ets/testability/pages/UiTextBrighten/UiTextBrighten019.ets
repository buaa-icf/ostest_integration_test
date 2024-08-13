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
import { LengthMetrics, LengthUnit } from '@ohos.arkui.node';

@Entry
@Component
struct UiTextBrighten019 {
  @State radiusIndex: number = 0;
  @State radiusMode: number[] = [0, 10, 20]
  @State radiusModeStr: string[] = ['0', '10', '20']

  @State colorIndex: number = 0;
  @State colorMode: Color[] = [Color.White, Color.Black, Color.Blue, Color.Brown]
  @State colorModeStr: string[] = ['White', 'Black', 'Blue', 'Brown']

  @State offsetXIndex: number = 0;
  @State offsetXMode: number[] = [-20, -15, -10, -5]
  @State offsetXModeStr: string[] = ['-20', '-15', '-10', '-5']

  @State offsetYIndex: number = 0;
  @State offsetYMode: number[] = [-20, -15, -10, -5]
  @State offsetYModeStr: string[] = ['-20', '-15', '-10', '-5']

  @State message: string = '这是一段测试文字'
  mutableStyledString1: MutableStyledString = new MutableStyledString("这是一段测试文字",
    [{start:0, length:8, styledKey: StyledStringKey.FONT, styledValue: new TextStyle({fontSize:new LengthMetrics(40, LengthUnit.PX)})}]);

  controller1: TextController = new TextController();

  build() {
    Row() {
      Column() {
        Text(undefined, { controller: this.controller1 })
          .onAreaChange(() => {
            this.controller1.setStyledString(this.mutableStyledString1)
          })
          .textShadow({ radius: this.radiusMode[this.radiusIndex], color: this.colorMode[this.colorIndex], offsetX: this.offsetXMode[this.offsetXIndex], offsetY: this.offsetYMode[this.offsetYIndex] })
          .margin({ top: 20 })

        Row() {
          Button('更改color：' + this.colorModeStr[this.colorIndex]).onClick(() => {
            this.colorIndex++
            if (this.colorIndex > (this.colorModeStr.length - 1)) {
              this.colorIndex = 0
            }
          })
        }

        Row() {
          Button('更改radius：' + this.radiusModeStr[this.radiusIndex]).onClick(() => {
            this.radiusIndex++
            if (this.radiusIndex > (this.radiusModeStr.length - 1)) {
              this.radiusIndex = 0
            }
          })
        }

        Row() {
          Button('更改offsetX：' + this.offsetXModeStr[this.offsetXIndex]).onClick(() => {
            this.offsetXIndex++
            if (this.offsetXIndex > (this.offsetXModeStr.length - 1)) {
              this.offsetXIndex = 0
            }
          })
        }

        Row() {
          Button('更改offsetY：' + this.offsetYModeStr[this.offsetYIndex]).onClick(() => {
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