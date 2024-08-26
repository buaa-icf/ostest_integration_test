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
let myarrar02 = [Color.Blue ,0xff0000,'rgba(0,255,0,0)','$r(app.color.pink)',undefined,null,-100]
@Entry
@Component
struct UIComponentTextinputUnderlinecolor003 {
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
        .underlineColor({normal:myarrar02[this.m]})
        .showError(this.error)
        .id('UIComponentTextinputUnderlinecolor003')

      Button('underlineColor')
      .onClick(()=>{
        this.m+=1
      })
      .id('underline003')
      Button('stopEditing003')
        .onClick(()=>{
          this.controller.stopEditing()
        })
        .id('stopEditing003')
      Button('showError')
        .onClick(()=>{
          this.error='error'
        })
        .id('showError003')
      Button('enabled')
        .onClick(()=>{
          this.bool=false
        })
        .id('enabled003')
    }
    .width('100%')
    .height('100%')
  }
}