/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
let mytype=[InputType.Normal,InputType.Password,InputType.Email,InputType.Number,InputType.PhoneNumber,InputType.USER_NAME,InputType.NEW_PASSWORD,InputType.NUMBER_PASSWORD,InputType.NUMBER_DECIMAL]
@Entry
@Component
struct UIComponentTextinputUnderlinecolor009 {
  @State m:number=0
  controller: TextInputController = new TextInputController()
  @State inputValue: string = ""
  @State bool:boolean=true
  @State error: string = ""
  build() {
    Column() {
      TextInput({ controller: this.controller, text: this.inputValue })
        .border({ width: 1 }).padding(10).margin(5)
        .caretColor(Color.Blue)
        .showUnderline(true)
        .enabled (this.bool)
        .type(mytype[this.m])
        .underlineColor({typing:Color.Blue,normal: Color.Yellow,error: Color.Green, disable: Color.Red})
        .showError(this.error)
        .id('UIComponentTextinputUnderlinecolor009')
      Button('showError')
        .onClick(()=>{
          this.error='error'
        })
        .id('showError009')
      Button('inputtype')
        .onClick(()=>{
          this.m+=1
        })
        .id('inputtype009')
      Button('showError')
        .onClick(()=>{
          this.error='error'
        })
        .id('showError009')
      Button('enabled')
        .onClick(()=>{
          this.bool=false
        })
        .id('enabled009')
    }
    .width('100%')
    .height('100%')
  }
}