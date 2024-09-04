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
struct ComponentTextCommonAffineTransformation007 {
  @State text: string = 'this is test string'
  @State changeValue: string = ''
  @State submitValue: string = ''
  @State TextAreaTypeState: TextAreaType = TextAreaType.NORMAL
  @State InputTypeState: InputType = InputType.Normal
  @State SearchTypeState: SearchType = SearchType.NORMAL

  @State caretStyleIndex: number = 0;
  @State caretStyleMode: number[] = [1, 1.5, 2, 2.5]
  @State caretStyleModeStr: string[] = ['1', '1.5', '2', '2.5']

  @State fontSizeIndex: number = 0;
  @State fontSizeMode: number[] = [10, 15, 20, 25]
  @State fontSizeModeStr: string[] = ['10', '15', '20', '25']

  controllerArea: TextAreaController = new TextAreaController()
  controllerInput: TextInputController = new TextInputController()
  controllerSearch: SearchController = new SearchController()

  build() {
    Column(){
      TextArea({
        text: this.text,
        placeholder: 'The text area can hold an unlimited amount of text. input your word...',
        controller: this.controllerArea
      })
        .caretStyle({width: this.caretStyleMode[this.caretStyleIndex]})
        .fontSize(this.fontSizeMode[this.fontSizeIndex])
        .type(this.TextAreaTypeState)
        .width("40%")
        .scale({x: -2, y: 0.5, z: -5})
        .translate({x: 10, y: 100, z: 10})
        .rotate({ x: 0, y: 1, z:0, centerX: '0%',centerY: '0%',angle: 300})

      TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controllerInput })
        .caretStyle({width: this.caretStyleMode[this.caretStyleIndex]})
        .fontSize(this.fontSizeMode[this.fontSizeIndex])
        .type(this.InputTypeState)
        .width("40%")
        .scale({x: -2, y: 0.5, z: -5})
        .translate({x: 10, y: 100, z: 10})
        .rotate({ x: 0, y: 1, z:0, centerX: '0%',centerY: '0%',angle: 300})

      Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controllerSearch })
        .caretStyle({width: this.caretStyleMode[this.caretStyleIndex]})
        .textFont({ size: this.fontSizeMode[this.fontSizeIndex], weight: 400 })
        .type(this.SearchTypeState)
        .width("40%")
        .scale({x: -2, y: 0.5, z: -5})
        .translate({x: 10, y: 100, z: 10})
        .rotate({ x: 0, y: 1, z:0, centerX: '0%',centerY: '0%',angle: 300})

      Row() {
        Button('更改CaretStyle：' + this.caretStyleModeStr[this.caretStyleIndex]).onClick(() => {
          this.caretStyleIndex++
          if (this.caretStyleIndex > (this.caretStyleModeStr.length - 1)) {
            this.caretStyleIndex = 0
          }
        })
      }

      Row() {
        Button('更改fontSize：' + this.fontSizeModeStr[this.fontSizeIndex]).onClick(() => {
          this.fontSizeIndex++
          if (this.fontSizeIndex > (this.fontSizeModeStr.length - 1)) {
            this.fontSizeIndex = 0
          }
        })
      }
    }
    .width("100%")
  }
}