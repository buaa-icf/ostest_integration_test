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
struct ComponentTextCommonTextMinFontSize007 {
  @State text: string = ''
  @State changeValue: string = ''
  @State submitValue: string = ''
  controller1: TextInputController = new TextInputController()
  controller2: TextAreaController = new TextAreaController()
  controller3: SearchController = new SearchController()

  build() {
    Row() {
      Column() {
        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize('-10')
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize('-10')
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize('-10')

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize('0')
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize('0')
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize('0')

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize('20')
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize('20')
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize('20')

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize('50')
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize('50')
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize('50')

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize('100%')
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize('100%')
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize('100%')

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize('10abc')
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize('10abc')
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize('10abc')
      }
      .width('100%')
      .height('100%')
    }
  }
}