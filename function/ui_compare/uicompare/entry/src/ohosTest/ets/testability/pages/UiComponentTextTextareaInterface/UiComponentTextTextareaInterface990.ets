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
struct UiComponentTextTextareaInterface099{
  @State inputtext: string = '0123456'
  controller: TextAreaController = new TextAreaController()
  build() {
    Column() {
      TextArea({
        text: this.inputtext,
        controller: this.controller
      })
        .width(300)
        .height(300)
        .margin(30)
        .maxLength(20)
        .fontSize('abc')
        .fontColor('#ff338cef')
        .caretColor('#ff338cef')
        .defaultFocus(true)
        .onChange((value: string) => {
          this.inputtext = value
          this.controller.setTextSelection(-3, 3)
        })



    }.width('100%').height('100%')
  }
}