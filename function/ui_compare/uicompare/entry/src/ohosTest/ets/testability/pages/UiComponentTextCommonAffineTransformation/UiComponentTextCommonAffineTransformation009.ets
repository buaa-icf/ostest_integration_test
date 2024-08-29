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
struct UiComponentTextCommonAffineTransformation009 {
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
        .placeholderColor(Color.Red)
        .margin(10)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .fontSize(12)
        .caretPosition(2)
        .defaultFocus(true)
        .rotate(this.textinputrotatesize)
        .id('input009')
      Button('rotate')
        .margin(10)
        .width('90%')
        .height('5%')
        .fontSize(12)
        .onClick(()=>{
          this.textinputrotatesize={
            x: 0,
            y: 0,
            z: 1,
            centerX: '0%',
            centerY: '0%',
            angle: 300
          }
        })
        .id('inputrotate009')
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
        .rotate(this.textarearotatesize)
        .id('area009')
      Button('rotate')
        .margin(10)
        .width('90%')
        .height('5%')
        .fontSize(12)
        .onClick(()=>{
          this.textarearotatesize={
            x: 0,
            y: 0,
            z: 1,
            centerX: '0%',
            centerY: '0%',
            angle: 300
          }
        })
        .id('arearotate009')
      Search({
        placeholder:'text here',
        controller: this.searchcontroller
      })
        .placeholderColor(Color.Red)
        .margin(10)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .defaultFocus(true)
        .rotate(this.searchrotatesize)
        .id('search009')
      Button('scale')
        .margin(10)
        .width('90%')
        .height('5%')
        .fontSize(12)
        .onClick(()=>{
          this.searchrotatesize={
            x: 0,
            y: 0,
            z: 1,
            centerX: '0%',
            centerY: '0%',
            angle: 300
          }
        })
        .id('searchrotate009')
    }
    .width('100%')
    .height('100%')
  }
}
