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
import matrix4 from '@ohos.matrix4'

@Entry
@Component
struct ComponentTextCommonAffineTransformation009 {
  @State text: string = 'this is test string'
  @State changeValue: string = ''
  @State submitValue: string = ''
  @State TextContentStyleState: TextContentStyle = TextContentStyle.DEFAULT
  @State TextInputStyleState: TextInputStyle = TextInputStyle.Default

  controllerArea: TextAreaController = new TextAreaController()
  controllerInput: TextInputController = new TextInputController()
  controllerSearch: SearchController = new SearchController()

  build() {
    Column(){
      TextArea({
        text: this.text,
        placeholder: 'The text area can hold an unlimited amount of text. input your word...',
        controller: this.controllerArea
      }).id("ComponentTextCommonAffineTransformation009_002")
        .style(this.TextContentStyleState)
        .width("10%")
        .scale({x: -2, y: 0.5, z: -5})
        .translate({x: 10, y: 100, z: 10})
        .rotate({ x: 0, y: 1, z:0, centerX: '0%',centerY: '0%',angle: 300})
        .transform(matrix4.identity().translate({ x: 50, y: 50 }).scale({ x: 1.5, y: 1 }).rotate({ x: 0, y: 0, z: 1, angle: 60 }))

      TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controllerInput })
        .style(this.TextInputStyleState)
        .width("10%")
        .scale({x: -2, y: 0.5, z: -5})
        .translate({x: 10, y: 100, z: 10})
        .rotate({ x: 0, y: 1, z:0, centerX: '0%',centerY: '0%',angle: 300})
        .transform(matrix4.identity().translate({ x: 50, y: 50 }).scale({ x: 1.5, y: 1 }).rotate({ x: 0, y: 0, z: 1, angle: 60 }))

      Row() {
        Button('更改Style')
          .onClick(() => {
            this.TextContentStyleState = TextContentStyle.INLINE
            this.TextInputStyleState = TextInputStyle.Inline
        }).id("ComponentTextCommonAffineTransformation009_001")
      }
    }
    .width("100%")
  }
}