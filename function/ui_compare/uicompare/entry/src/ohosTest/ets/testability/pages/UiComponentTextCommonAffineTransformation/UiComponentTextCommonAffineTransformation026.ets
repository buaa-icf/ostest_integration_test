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
struct UiComponentTextCommonAffineTransformation026 {
  @State inputtranslatesize:TranslateOptions = {
    x: 0,
    y: 0,
    z: 0
  }
  @State areatranslatesize:TranslateOptions = this.inputtranslatesize
  @State searchtranslatesize:TranslateOptions = this.inputtranslatesize
  @State textinputrotatesize:RotateOptions = {
    x: 0,
    y: 0,
    z: 0,
    centerX:' 50%',
    centerY: '50%',
    centerZ: 0,
    perspective: 0,
    angle: 0
  }
  @State textarearotatesize:RotateOptions = this.textinputrotatesize
  @State searchrotatesize:RotateOptions = this.textinputrotatesize
  textinputcontroller:TextInputController = new TextInputController()
  textareacontroller:TextAreaController = new TextAreaController()
  searchcontroller: SearchController = new SearchController()

  build() {
    Column() {
      TextInput({
        placeholder:'text here',
        controller: this.textinputcontroller
      })
        .width('75%')
        .height(75)
        .placeholderColor(Color.Red)
        .margin(5)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .fontSize(12)
        .caretPosition(2)
        .defaultFocus(true)
        .translate(this.inputtranslatesize)
        .rotate(this.textinputrotatesize)
        .id('input026')
      Button('inputchange')
        .margin(5)
        .width('90%')
        .height(20)
        .fontSize(12)
        .onClick(()=>{
          this.inputtranslatesize={
            x: 100,
            y: 10
          }
          this.textinputrotatesize={
            x: 1,
            y: 0,
            z: 0,
            centerX: '0%',
            centerY: '0%',
            angle: 300
          }
        })
        .id('inputchange026')
      TextArea({
        placeholder:'text here',
        controller: this.textareacontroller
      })
        .width('75%')
        .height(75)
        .placeholderColor(Color.Red)
        .margin(5)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .fontSize(12)
        .defaultFocus(true)
        .translate(this.areatranslatesize)
        .rotate(this.textarearotatesize)
        .id('area026')
      Button('areachange')
        .margin(5)
        .width('90%')
        .height(20)
        .fontSize(12)
        .onClick(()=>{
          this.areatranslatesize={
            x: 100,
            y: 10
          }
          this.textarearotatesize={
            x: 1,
            y: 0,
            z: 0,
            centerX: '0%',
            centerY: '0%',
            angle: 300
          }
        })
        .id('areachange026')
      Search({
        placeholder:'text here',
        controller: this.searchcontroller
      })
        .width('75%')
        .height(75)
        .placeholderColor(Color.Red)
        .margin(5)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .defaultFocus(true)
        .translate(this.searchtranslatesize)
        .rotate(this.searchrotatesize)
        .id('search026')
      Button('searchchange')
        .margin(5)
        .width('90%')
        .height(20)
        .fontSize(12)
        .onClick(()=>{
          this.searchtranslatesize={
            x: 100,
            y: 10
          }
          this.searchrotatesize={
            x: 1,
            y: 0,
            z: 0,
            centerX: '0%',
            centerY: '0%',
            angle: 300
          }
        })
        .id('searchchange026')
    }
    .width('100%')
    .height('100%')
  }
}
