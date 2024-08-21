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

import prompt from '@system.prompt';
import measure from '@ohos.measure'

@Entry
@Component
struct UiComponentWordbreak016 {
  @State text: string =''
  //wordbreak
  @State wordBreakIndex: number = 0;
  @State wordBreak: WordBreak[] = [WordBreak.NORMAL, WordBreak.BREAK_ALL, WordBreak.BREAK_WORD]
  @State wordBreakStr: string[] = ['NORMAL', 'BREAK_ALL', 'BREAK_WORD']
  //textareatype
  @State TextAreaTypeIndex: number = 0;
  @State TextAreaType: TextAreaType[] = [TextAreaType.NORMAL,TextAreaType.EMAIL,TextAreaType.NUMBER,TextAreaType.PHONE_NUMBER ]
  @State TextAreaTypeStr: string[] = ['NORMAL', 'EMAIL', 'NUMBER','PHONE_NUMBER']
  controller: TextAreaController = new TextAreaController()

  build() {
    Column() {
      Row() {
        Button('TextAreaType：' + this.TextAreaTypeStr[this.TextAreaTypeIndex])
          .margin(20)
          .width('90%')
          .onClick(() => {
            this.TextAreaTypeIndex++
            if (this.TextAreaTypeIndex > (this.TextAreaTypeStr.length - 1)) {
              this.TextAreaTypeIndex = 0
            }
          })
          .id('areatype22')
      }
      TextArea({text:this.text})
        .type(this.TextAreaType[this.TextAreaTypeIndex])
        .margin(20)
        .width('90%')
        .height(50)
        .fontSize(12)
        .border({ width: 1 })
        .maxLines(2)
        .wordBreak(this.wordBreak[this.wordBreakIndex])
        .lineHeight(20)
        .onChange((value) => {
          this.text = value;
        })
        .id('area22')
      Row() {
        Button('wordBreak：' + this.wordBreakStr[this.wordBreakIndex])
          .onClick(() => {
            this.wordBreakIndex++
            if (this.wordBreakIndex > (this.wordBreakStr.length - 1)) {
              this.wordBreakIndex = 0
            }
          })
          .id('wordbreak22')
      }
    }
    .width('100%')
    .height('100%')
  }
}