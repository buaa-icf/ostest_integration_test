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
struct UiComponentWordbreak003 {
  @State text: string =''
  @State style: TextInputStyle = TextInputStyle.Default
  @State wordBreakIndex: number = 0;
  @State wordBreak: WordBreak[] = [WordBreak.NORMAL, WordBreak.BREAK_ALL, WordBreak.BREAK_WORD]
  @State wordBreakStr: string[] = ['NORMAL', 'BREAK_ALL', 'BREAK_WORD']
  controller: TextInputController = new TextInputController()

  build() {
    Column() {
      Button('Style')
        .width('90%')
        .margin(50)
        .height(50)
        .fontSize(12)
        .border({ width: 1 })
        .onClick(() => {
          this.style = TextInputStyle.Inline
        })
        .id('style3')
      TextInput({text:this.text})
        .margin(20)
        .width('90%')
        .height(50)
        .fontSize(12)
        .border({ width: 1 })
        .maxLines(2)
        .wordBreak(this.wordBreak[this.wordBreakIndex])
        .lineHeight(20)
        .style((this.style))
        .onChange((value) => {
          this.text = value
        })
        .id('input3')
      Row() {
        Button('wordBreak：' + this.wordBreakStr[this.wordBreakIndex])
          .margin(20)
          .width('90%')
          .height(50)
          .fontSize(12)
          .id('break3')
          .onClick(() => {
            this.wordBreakIndex=1
          })
      }
    }
    .width('100%')
    .height('100%')
  }
}