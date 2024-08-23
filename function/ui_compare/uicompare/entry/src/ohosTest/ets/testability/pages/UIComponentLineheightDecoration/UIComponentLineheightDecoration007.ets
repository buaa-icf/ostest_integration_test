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
struct UIComponentLineheightDecoration007 {
  @State mytype: TextDecorationOptions  [] = [{ type: TextDecorationType.Underline }, {
    type: TextDecorationType.LineThrough
  }, { type: TextDecorationType.Overline }, { type: TextDecorationType.None }
    , { type: TextDecorationType.LineThrough, color: Color.Pink }, {
      type: TextDecorationType.LineThrough,
      color: 0x008000
    }, { type: TextDecorationType.LineThrough, color: 'rgb(255, 0, 0)' },
    { type: TextDecorationType.LineThrough, color: '#0000ff' }, {
      type: TextDecorationType.LineThrough,
      color: $r('app.color.yellow')
    }]
  @State password: InputType[] = [InputType.Normal, InputType.Password, InputType.Email, InputType.Number, InputType.PhoneNumber, InputType.USER_NAME, InputType.NEW_PASSWORD, InputType.NUMBER_PASSWORD, InputType.NUMBER_DECIMAL]
  @State t: number = 0
  @State m: number = 0
  build() {
    Column() {
      TextInput({ placeholder: 'this is placeholder text' })
        .type(InputType.Normal)
        .border({ width: 1 })
        .padding(10)
        .margin(5)
        .caretColor(Color.Blue)
        .type(this.password[this.m])
        .decoration(this.mytype[this.t])
        .id('UIComponentLineheightDecoration007')
      Row() {
        Button('type')
          .onClick(() => {
            this.m += 1
          })
          .id('type007')
      }
      Row() {
        Button('decoration.type')
          .onClick(() => {
            this.t += 1
          })
          .id('buttonlineheight007')
      }
    }
    .width('100%')
    .height('100%')
  }
}