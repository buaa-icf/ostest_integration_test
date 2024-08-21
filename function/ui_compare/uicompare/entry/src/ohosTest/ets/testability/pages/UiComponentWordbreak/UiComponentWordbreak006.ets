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

struct UiComponentWordbreak006 {
  @State text: string =''
  @State style: TextInputStyle = TextInputStyle.Default
  //wordbreak
  @State wordBreakIndex: number = 0;
  @State wordBreak: WordBreak[] = [WordBreak.NORMAL, WordBreak.BREAK_ALL, WordBreak.BREAK_WORD]
  @State wordBreakStr: string[] = ['NORMAL', 'BREAK_ALL', 'BREAK_WORD']
  //clip
  @State textClip: boolean = false
  controller: TextInputController = new TextInputController()

  build() {
    Column() {
      Button('Style')
        .id('style6')
        .width('90%')
        .margin(50)
        .height(50)
        .fontSize(12)
        .border({ width: 1 })
        .onClick(() => {
          this.style = TextInputStyle.Inline
        })
      TextInput({text:this.text})
        .id('input6')
        .style((this.style))
        .margin(20)
        .width(330)
        .height(10)
        .fontSize(12)
        .border({ width: 1 })
        .maxLines(2)
        .wordBreak(this.wordBreak[this.wordBreakIndex])
        .lineHeight(20)
        .onChange((value) => {
          this.text = value
        })
      Button('wordBreak：NORMAL')
        .id('break6')
        .margin(20)
        .width('90%')
        .height(50)
        .fontSize(12)
        .onClick(() => {
          this.wordBreakIndex=0
        })
      Button('clip:'+this.textClip)
        .margin(20)
        .width('90%')
        .height(50)
        .fontSize(12)
        .id('changetextclip6')
        .onClick(() => {
        this.textClip = !this.textClip
      })
    }
    .width('100%')
    .height('100%')
  }
}