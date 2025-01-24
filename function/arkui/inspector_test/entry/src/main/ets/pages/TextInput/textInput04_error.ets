/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
struct TextInput04 {
  controller: TextInputController = new TextInputController()
  @State text: string = 'test_text'
  @State textError: string = 'ERROR'
  @State nameText: string = 'name'

  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['jz_textInput_error_id', ''],
    ['', 'jz_textInput_error_key'],
    ['jz_textInput_error_id', 'jz_textInput_error_key'],
  ];


  build() {
    Scroll() {
      Column() {
        Text('TextInput with error message')
          .fontSize(18)
          .margin({bottom: 24})

        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          TextInput({ placeholder: '请输入用户名(name)', text: this.text })
            .showUnderline(true)
            .width(350)
            .showError(this.textError)
            .onChange((value: string) => {
              this.text = value
            })
            .onSubmit((enterKey: EnterKeyType, event: SubmitEvent) => {
              if (this.text == this.nameText) {
                this.textError = ''
              } else {
                this.textError = '用户名输入错误'
                this.text = ''
                event.keepEditableState()
              }
            })
            .id(item[0])
            .key(item[1])
        })

      }.width('100%')
    }
  }
}
