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
let owntype=[InputType.Password,InputType.NEW_PASSWORD,InputType.NUMBER_PASSWORD]
@Entry
@Component
struct UIComponentTextTextinputAction039 {
  @State result:number=0
  @State text: string = '';
  @State style001: TextInputStyle = TextInputStyle.Default;
  @State type: InputType = InputType.Normal
  @State boo: boolean = true;
  build() {
    Column() {
      TextInput({
        text: this.text,
        placeholder: '这里是提示文本' })
        .placeholderColor(0x008000)
        .width('80%')
        .height('50')
        .margin(20)
        .maxLength(30)
        .type(owntype[this.result])
        .showCounter(this.boo)
        .fontSize(18)
        .type(this.type)
        .fontColor(Color.Black)
        .style(this.style001)
        .id('textinputaction039')
      Button('change')
        .onClick(() => {
         this.result+=1
        })
        .id('typechange039')

      Button('changeshowcounter')
        .onClick(() => {
         this.boo=!this.boo
        })
        .id('showcounter039')
    }
  }
}
