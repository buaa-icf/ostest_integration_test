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
struct TextInput03 {
  @State cancelButtonStyle: CancelButtonStyle = CancelButtonStyle.CONSTANT
  controller: TextInputController = new TextInputController()
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['jz_textInput_cancelButton_id', ''],
    ['', 'jz_textInput_cancelButton_key'],
    ['jz_textInput_cancelButton_id', 'jz_textInput_cancelButton_key'],
  ];

  build() {
    Scroll() {
      Column() {
        Text('TextInput with cancelButton')
          .fontSize(18)
          .margin({bottom: 24})

        // 设置右侧清除按钮样式
        Row() {
          Button('CONSTANT')
            .margin(30)
            .onClick(() => {
              this.cancelButtonStyle = CancelButtonStyle.CONSTANT
            })
          Button('INVISIBLE')
            .margin(30)
            .onClick(() => {
              this.cancelButtonStyle = CancelButtonStyle.INVISIBLE
            })
          Button('INPUT')
            .margin(30)
            .onClick(() => {
              this.cancelButtonStyle = CancelButtonStyle.INPUT
            })
        }

        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          TextInput({ placeholder: 'TextInput with cancelButton', controller: this.controller })
            .width(380)
            .height(60)
            .cancelButton({
              style: this.cancelButtonStyle,
              icon: {
                size: 45,
                src: $r('app.media.icon'),
                color: Color.Blue
              }
            })
            .id(item[0])
            .key(item[1])
          TextInput({ placeholder: 'TextInput with cancelButton', controller: this.controller })
            .width(380)
            .height(60)
            .cancelButton({})
            .id(item[0])
            .key(item[1])
        })

      }.width('100%')
    }
  }
}
