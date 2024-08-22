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
struct UiComponentWordbreak015 {
  @State text: string =''
  @State undefined: string =''
  @State style: TextContentStyle = TextContentStyle.INLINE
  //wordbreak
  @State wordBreakIndex: number = 0;
  @State wordBreak: WordBreak[] = [WordBreak.NORMAL, WordBreak.BREAK_ALL, WordBreak.BREAK_WORD]
  @State wordBreakStr: string[] = ['NORMAL', 'BREAK_ALL', 'BREAK_WORD']
  //clip
  @State textClip: boolean = false

  build() {
    Column() {
      Button('Style')
        .width('90%')
        .margin(50)
        .onClick(() => {
          this.style = TextContentStyle.DEFAULT
        })
        .id('style15')
      TextArea({text:this.text})
        .style((this.style))
        .margin(20)
        .width(260)
        .height(100)
        .fontSize(12)
        .border({ width: 1 })
        .wordBreak(undefined)
        .onChange((value) => {
          this.text = value;
        })
        .id('area15')
      Row() {
        Button('wordBreak：' + this.undefined)
          .onClick(() => {
            this.undefined='undefined'
          })
          .id('wordbreak15')
      }
    }
    .width('100%')
    .height('100%')
  }
}