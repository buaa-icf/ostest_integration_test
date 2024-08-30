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
struct UiComponentTextCommonAffineTransformation011 {
  @State textinputtranslatesize:TranslateOptions = {
    x: 0,
    y: 0,
    z: 0
  }
  @State textareatranslatesize:TranslateOptions = {
    x: 0,
    y: 0,
    z: 0
  }
  @State searchtranslatesize:TranslateOptions = {
    x: 0,
    y: 0,
    z: 0
  }
  textinputcontroller:TextInputController = new TextInputController()
  textareacontroller:TextAreaController = new TextAreaController()
  searchcontroller: SearchController = new SearchController()

  build() {
    Column() {
      TextInput({
        placeholder:'text here',
        controller: this.textinputcontroller
      })
        .placeholderColor(Color.Red)
        .margin(10)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .fontSize(12)
        .caretPosition(2)
        .defaultFocus(true)
        .translate(this.textinputtranslatesize)
        .id('input011')
      Button('translate')
        .margin(10)
        .width('90%')
        .height('5%')
        .fontSize(12)
        .onClick(()=>{
          this.textinputtranslatesize={
            x: 100,
            y: 10
          }
        })
        .id('inputtranslate011')
      TextArea({
        placeholder:'text here',
        controller: this.textareacontroller
      })
        .placeholderColor(Color.Red)
        .margin(10)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .fontSize(12)
        .defaultFocus(true)
        .translate(this.textareatranslatesize)
        .id('area011')
      Button('translate')
        .margin(10)
        .width('90%')
        .height('5%')
        .fontSize(12)
        .onClick(()=>{
          this.textareatranslatesize={
            x: 100,
            y: 10
          }
        })
        .id('areatranslate011')
      Search({
        placeholder:'text here',
        controller: this.searchcontroller
      })
        .placeholderColor(Color.Red)
        .margin(10)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .defaultFocus(true)
        .translate(this.searchtranslatesize)
        .id('search011')
      Button('translate')
        .margin(10)
        .width('90%')
        .height('5%')
        .fontSize(12)
        .onClick(()=>{
          this.searchtranslatesize={
            x: 100,
            y: 10
          }
        })
        .id('searchtranslate011')
    }
    .width('100%')
    .height('100%')
  }
}
