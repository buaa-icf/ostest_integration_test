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
import matrix4 from '@ohos.matrix4';

let matrix1 = matrix4.init([1.0, 0.0, 0.0, 0.0,
  0.0, 1.0, 0.0, 0.0,
  0.0, 0.0, 1.0, 0.0,
  0.0, 0.0, 0.0, 1.0])
let matrix2 = matrix1.copy()
  .translate({ x: 100, y: 10 })
  .rotate({
    x: 1,
    y: 1,
    z: 0,
    centerX:0,
    centerY: 0,
    angle: 300
  })
let mars = [matrix1, matrix2]

@Entry
@Component
struct UIComponentTextCommonAffingTran0300 {
  @State result: number = 0;
  @State m: number = 0;
  @State n: number = 0;
  @State texts: string = '';
  controller0: TextInputController = new TextInputController()
  controller1: TextAreaController = new TextAreaController()
  controller2: SearchController = new SearchController()

  build() {
    Column() {
      TextInput({
        text: this.texts,
        placeholder: '这里是提示文本',
        controller: this.controller0 })
        .placeholderColor(0x008000)
        .width('95%')
        .height(50)
        .height(75)
        .margin(20)
        .fontSize(18)
        .fontColor(Color.Black)
        .transform(mars[this.result])
        .id('TextCommonAffing0300')
      TextArea({
        text: this.texts,
        controller: this.controller1
      })
        .width('95%')
        .height(50)
        .fontSize(20)
        .fontColor('#ff338cef')
        .fontStyle(FontStyle.Normal)
        .fontWeight(100)
        .backgroundColor('#ffece6e6')
        .transform(mars[this.m])
        .caretColor('#ff338cef')
        .onChange((value: string) => {
          this.texts = value
        })
        .id('TextArea0300')
      Search({ placeholder: this.texts, controller: this.controller2 })
        .width('95%')
        .height(50)
        .fontColor('#ffc0d3e9')
        .transform(mars[this.n])
        .backgroundColor('#ffecc3c3')
        .onChange((value: string) => {
          this.texts = value
        })
        .id('searchAffing0300')
      Row() {
        Button('transform')
          .onClick(() => {
            this.result += 1
          })
          .id('transform0300')
        Button('transform')
          .onClick(() => {
            this.m += 1
          })
          .id('transform0300-1')
        Button('transform')
          .onClick(() => {
            this.n += 1
          })
          .id('transform0300-2')
      }
    }
  }
}
