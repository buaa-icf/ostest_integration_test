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
struct TextInput05 {
  controller: TextInputController = new TextInputController()
  @State passwordState: boolean = false
  @State passWordSrc1: Resource = $r('app.media.ImageOne')
  @State passWordSrc2: Resource = $r('app.media.ImageTwo')

  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['jz_textInput_password_id', ''],
    ['', 'jz_textInput_password_key'],
    ['jz_textInput_password_id', 'jz_textInput_password_key'],
  ];


  build() {
    Scroll() {
      Column() {
        Text('TextInput in password type')
          .fontSize(18)
          .margin({bottom: 24})

        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          TextInput({ placeholder: 'input your password...' })
            .width('95%')
            .height(40)
            .margin(20)
            .type(InputType.Password)
            .maxLength(9)
            .showPasswordIcon(true)
            .showPassword(this.passwordState)
            .onSecurityStateChange(((isShowPassword: boolean) => {
              console.info('isShowPassword',isShowPassword)
              this.passwordState = isShowPassword
            }))
            .id(item[0])
            .key(item[1])
          TextInput({ placeholder: 'NUMBER_PASSWORD' })
            .width('95%')
            .height(40)
            .margin(20)
            .type(InputType.NUMBER_PASSWORD)
            .showPasswordIcon(false)
            .id(item[0])
            .key(item[1])
          TextInput({ placeholder: 'NEW_PASSWORD' })
            .width('95%')
            .height(40)
            .margin(20)
            .type(InputType.NEW_PASSWORD)
            .id(item[0])
            .key(item[1])
          TextInput({ placeholder: 'user define password icon' })
            .type(InputType.Password)
            .width(350)
            .height(60)
            .passwordIcon({ onIconSrc: this.passWordSrc1, offIconSrc: this.passWordSrc2 })
            .id(item[0])
            .key(item[1])
        })

      }.width('100%')
    }
  }
}
