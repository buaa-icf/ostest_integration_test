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
@Entry
@Component
struct UiComponentTextTextareaInterface061{
  @State inputtext: string = '这是预置文本'
  controller: TextAreaController = new TextAreaController()
  build() {
    Column() {
      TextArea({
        text: this.inputtext,
        placeholder:'这是提示文本',
        controller: this.controller
      })
        .width(300)
        .height(300)
        .margin(30)
        .fontSize(20)
        .placeholderColor('rgb(0,0,255)')
        .placeholderFont({size:20,style:FontStyle.Normal})
        .fontColor('#ff338cef')
        .defaultFocus(true)
        .caretColor('#ff338cef')
        .onChange((value: string) => {
          this.inputtext = value
          this.controller.caretPosition (-1)
        })
    }.width('100%').height('100%')
  }
}