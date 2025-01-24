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
struct TextInput01 {

  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['jz_textInput_withoutSubnode_id', ''],
    ['', 'jz_textInput_withoutSubnode_key'],
    ['jz_textInput_withoutSubnode_id', 'jz_textInput_withoutSubnode_key'],
  ];

  build() {
    Scroll() {
      Column() {
        Text('TextInput without subnode')
          .fontSize(18)
          .margin({bottom: 24})

        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          TextInput({ placeholder: 'TEST' })
            .width('95%')
            .height(40)
            .margin(20)
            .type(InputType.Normal)
            .showUnderline(true)
            .showCounter(false)
            .showError()
            .id(item[0])
            .key(item[1])
        })
      }.width('100%')
    }
  }
}
