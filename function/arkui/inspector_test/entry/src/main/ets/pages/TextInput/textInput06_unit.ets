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
struct TextInput06 {
  controller: TextInputController = new TextInputController()
  @State showUnderline: boolean = true

  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['jz_textInput_unit_id', ''],
    ['', 'jz_textInput_unit_key'],
    ['jz_textInput_unit_id', 'jz_textInput_unit_key'],
  ];

  @Builder itemEnd() {
    Select([{ value: 'KB' },
      { value: 'MB' },
      { value: 'GB' },
      { value: 'TB', }])
      .height("48vp")
      .borderRadius(0)
      .selected(2)
      .align(Alignment.Center)
      .value('MB')
      .font({ size: 20, weight: 500 })
      .fontColor('#182431')
      .selectedOptionFont({ size: 20, weight: 400 })
      .optionFont({ size: 20, weight: 400 })
      .backgroundColor(Color.Transparent)
      .responseRegion({ height: "40vp", width: "80%", x: '10%', y: '6vp' })
      .onSelect((index: number) => {
        console.info('Select:' + index)
      })
  }

  @Builder itemTest() {
    Button('test_button_1')
    Button('test_button_2')
    Text('test_text_1')
  }

  build() {
    Scroll() {
      Column() {
        Text('TextInput with customized unit')
          .fontSize(18)
          .margin({bottom: 24})

        // 下划线模式及自定义控件
        Button('切换showUnderline = true/false')
          .margin(30)
          .onClick(() => {
            this.showUnderline = !this.showUnderline
          })

        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          TextInput({ placeholder: 'underline style' })
            .showUnderline(this.showUnderline)
            .width(350)
            .height(60)
            .showUnit(this.itemEnd)
            .id(item[0])
            .key(item[1])
          TextInput({ placeholder: 'underline style' })
            .showUnderline(this.showUnderline)
            .width(350)
            .height(60)
            .showUnit(this.itemTest)
            .id(item[0])
            .key(item[1])
        })

      }.width('100%')
    }
  }
}
