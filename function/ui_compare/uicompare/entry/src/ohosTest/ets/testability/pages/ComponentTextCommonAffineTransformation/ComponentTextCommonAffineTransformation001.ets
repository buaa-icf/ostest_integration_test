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
struct ComponentTextCommonAffineTransformation001 {
  @State text: string = 'this is test string'
  @State changeValue: string = ''
  @State submitValue: string = ''
  @State TextAreaTypeState: TextAreaType = TextAreaType.NORMAL
  @State InputTypeState: InputType = InputType.Normal
  @State SearchTypeState: SearchType = SearchType.NORMAL

  controllerArea: TextAreaController = new TextAreaController()
  controllerInput: TextInputController = new TextInputController()
  controllerSearch: SearchController = new SearchController()

  build() {
    Column(){
      Button("inputType")
        .onClick(() => {
          this.TextAreaTypeState = TextAreaType.NUMBER
          this.InputTypeState = InputType.Number
          this.SearchTypeState = SearchType.NUMBER
        })
        .id("ComponentTextCommonAffineTransformation001_001")

      TextArea({
        text: this.text,
        placeholder: 'The text area can hold an unlimited amount of text. input your word...',
        controller: this.controllerArea
      })
        .id("ComponentTextCommonAffineTransformation001_002")
        .type(this.TextAreaTypeState)
        .width("40%")
        .scale({x: -2, y: 0.5, z: -5})
        .translate({x: 10, y: 100, z: 10})
        .rotate({ x: 0, y: 1, z:0, centerX: '0%',centerY: '0%',angle: 300})

      TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controllerInput })

        .type(this.InputTypeState)
        .width("40%")
        .scale({x: -2, y: 0.5, z: -5})
        .translate({x: 10, y: 100, z: 10})
        .rotate({ x: 0, y: 1, z:0, centerX: '0%',centerY: '0%',angle: 300})

      Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controllerSearch })
        .type(this.SearchTypeState)
        .width("40%")
        .scale({x: -2, y: 0.5, z: -5})
        .translate({x: 10, y: 100, z: 10})
        .rotate({ x: 0, y: 1, z:0, centerX: '0%',centerY: '0%',angle: 300})
    }
    .width("100%")
  }
}