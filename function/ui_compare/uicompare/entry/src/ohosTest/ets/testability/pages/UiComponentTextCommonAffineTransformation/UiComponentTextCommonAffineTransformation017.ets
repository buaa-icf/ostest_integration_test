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
struct UiComponentTextCommonAffineTransformation017 {
  @State inputscalesize:ScaleOptions = {
    x: 1,
    y: 1,
    z: 1,
    centerX:'50%',
    centerY:'50%'
  }
  @State areascalesize:ScaleOptions = this.inputscalesize
  @State searchscalesize:ScaleOptions = this.inputscalesize
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
        .scale(this.inputscalesize)
        .rotate(this.textinputrotatesize)
        .id('input017')
      Button('inputchange')
        .margin(5)
        .width('90%')
        .height(20)
        .fontSize(12)
        .onClick(()=>{
          this.inputscalesize={
            x: -2,
            y: 0.5,
            z: -5,
            centerX:'50%',
            centerY:'50%'
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
        .id('inputchange017')
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
        .scale(this.areascalesize)
        .rotate(this.textarearotatesize)
        .id('area017')
      Button('areachange')
        .margin(5)
        .width('90%')
        .height(20)
        .fontSize(12)
        .onClick(()=>{
          this.areascalesize={
            x: -2,
            y: 0.5,
            z: -5,
            centerX:'50%',
            centerY:'50%'
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
        .id('areachange017')
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
        .scale(this.searchscalesize)
        .rotate(this.searchrotatesize)
        .id('search017')
      Button('searchchange')
        .margin(5)
        .width('90%')
        .height(20)
        .fontSize(12)
        .onClick(()=>{
          this.searchscalesize={
            x: -2,
            y: 0.5,
            z: -5,
            centerX:'50%',
            centerY:'50%'
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
        .id('searchchange017')
    }
    .width('100%')
    .height('100%')
  }
}
