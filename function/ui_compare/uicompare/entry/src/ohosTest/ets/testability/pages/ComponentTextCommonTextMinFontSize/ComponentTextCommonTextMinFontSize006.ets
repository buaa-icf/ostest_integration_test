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
struct ComponentTextCommonTextMinFontSize006 {
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
          .minFontSize($r('app.string.test_value'))
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize($r('app.string.test_value'))
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize($r('app.string.test_value'))

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize($r('app.integer.0'))
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize($r('app.integer.0'))
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize($r('app.integer.0'))

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize($r('app.integer.20'))
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize($r('app.integer.20'))
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize($r('app.integer.20'))

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize($r('app.integer.50'))
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize($r('app.integer.50'))
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize($r('app.integer.50'))

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize($r('app.string.TestAbility_label_p'))
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize($r('app.string.TestAbility_label_p'))
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize($r('app.string.TestAbility_label_p'))

        TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller1 })
          .minFontSize($r('app.string.abc'))
        TextArea({
          text: this.text,
          placeholder: 'The text area can hold an unlimited amount of text. input your word...',
          controller: this.controller2
        })
          .minFontSize($r('app.string.abc'))
        Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller3 })
          .minFontSize($r('app.string.abc'))
      }
      .width('100%')
      .height('100%')
    }
  }
}