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

struct UiComponentWordbreak007 {
  @State text: string =''
  @State style: TextInputStyle = TextInputStyle.Inline
  //wordbreak
  @State wordBreakIndex: number = 0;
  @State wordBreak: WordBreak[] = [WordBreak.NORMAL, WordBreak.BREAK_ALL, WordBreak.BREAK_WORD]
  @State wordBreakStr: string[] = ['NORMAL', 'BREAK_ALL', 'BREAK_WORD']
  //clip
  @State textClip: boolean = false
  @State initwidth: number = 260
  @State pluswidth: number = -10
  controller: TextInputController = new TextInputController()

  build() {
    Column() {
      Button('Style')
        .width('90%')
        .margin(10)
        .height(20)
        .fontSize(12)
        .onClick(() => {
          this.style = TextInputStyle.Inline
        })
        .id('style7')
      TextInput({text:this.text})
        .style((this.style))
        .margin(10)
        .width(this.initwidth)
        .height(50)
        .fontSize(12)
        .border({ width: 1 })
        .maxLines(2)
        .wordBreak(WordBreak.NORMAL)
        .lineHeight(20)
        .clip(true)
        .onChange((value) => {
          this.text = value
        })
        .id('input7')
      Button('wordBreak：' + this.wordBreakStr[this.wordBreakIndex])
        .width('90%')
        .margin(10)
        .height(50)
        .fontSize(12)
        .onClick(() => {
          this.wordBreakIndex=0
        })
        .id('wordbreak7')
      Button('width' + this.pluswidth)
        .width('90%')
        .margin(10)
        .height(20)
        .fontSize(12)
        .onClick(() => {
          this.initwidth = this.initwidth + this.pluswidth
        })
        .id('texttextwidth7')
      Button('width+10')
        .id('plustextwidth')
        .width('90%')
        .height(20)
        .margin(10)
        .onClick(() => {
          this.pluswidth=10
          this.initwidth = this.initwidth + this.pluswidth
        })
    }
    .width('100%')
    .height('100%')
  }
}