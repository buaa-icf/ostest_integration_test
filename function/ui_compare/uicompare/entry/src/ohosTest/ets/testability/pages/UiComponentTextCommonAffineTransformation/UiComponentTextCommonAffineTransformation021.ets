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
struct UiComponentTextCommonAffineTransformation021 {
  @State inputscalesize:ScaleOptions = {
    x: 1,
    y: 1,
    z: 1,
    centerX:'50%',
    centerY:'50%'
  }
  @State areascalesize:ScaleOptions = {
    x: 1,
    y: 1,
    z: 1,
    centerX:'50%',
    centerY:'50%'
  }
  @State searchscalesize:ScaleOptions = {
    x: 1,
    y: 1,
    z: 1,
    centerX:'50%',
    centerY:'50%'
  }
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
  @State textarearotatesize:RotateOptions = {
    x: 0,
    y: 0,
    z: 0,
    centerX:' 50%',
    centerY: '50%',
    centerZ: 0,
    perspective: 0,
    angle: 0
  }
  @State searchrotatesize:RotateOptions = {
    x: 0,
    y: 0,
    z: 0,
    centerX:' 50%',
    centerY: '50%',
    centerZ: 0,
    perspective: 0,
    angle: 0
  }
  @State textwidth:string = '75%'
  @State textheight:number = 20
  textinputcontroller:TextInputController = new TextInputController()
  textareacontroller:TextAreaController = new TextAreaController()
  searchcontroller: SearchController = new SearchController()

  build() {
    Column() {
      Button('sizechange')
        .margin(5)
        .width('90%')
        .height(15)
        .fontSize(12)
        .onClick(()=> {
          this.textwidth = '95%'
          this.textheight = 50
        })
        .id('sizechange21')
      TextInput({
        placeholder:'text here',
        controller: this.textinputcontroller
      })
        .width(this.textwidth)
        .height(this.textheight)
        .placeholderColor(Color.Red)
        .margin(10)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .fontSize(12)
        .caretPosition(2)
        .defaultFocus(true)
        .scale(this.inputscalesize)
        .rotate(this.textinputrotatesize)
        .id('input021')
      Button('inputchange')
        .margin(10)
        .width('90%')
        .height('5%')
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
        .id('inputchange021')
      TextArea({
        placeholder:'text here',
        controller: this.textareacontroller
      })
        .width(this.textwidth)
        .height(this.textheight)
        .placeholderColor(Color.Red)
        .margin(10)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .fontSize(12)
        .defaultFocus(true)
        .scale(this.areascalesize)
        .rotate(this.textarearotatesize)
        .id('area021')
      Button('areachange')
        .margin(10)
        .width('90%')
        .height('5%')
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
        .id('areachange021')
      Search({
        placeholder:'text here',
        controller: this.searchcontroller
      })
        .width(this.textwidth)
        .height(this.textheight)
        .placeholderColor(Color.Red)
        .margin(10)
        .fontColor('#808080')
        .backgroundColor('#f8f8ff')
        .defaultFocus(true)
        .scale(this.searchscalesize)
        .rotate(this.searchrotatesize)
        .id('search021')
      Button('searchchange')
        .margin(10)
        .width('90%')
        .height('5%')
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
        .id('searchchange021')
    }
    .width('100%')
    .height('100%')
  }
}
