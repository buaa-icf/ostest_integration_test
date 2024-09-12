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

@Entry
@Component

struct UIComponentCreateColor014 {
  @State selectionStart: number = 0
  @State selectionEnd: number = 0
  @State caretcolorIndex: number = 0;
  @State caretcolor: Color[] = [Color.Red, Color.Green, Color.Blue]
  @State caretcolorStr: string[] = ['Red', 'Green', 'Blue']
  controller:SearchController = new SearchController()

  build() {
    Column() {
      //change selection
      Button('setTextSelection')
        .width('90%')
        .height('10%')
        .margin(20)
        .id('setTextSelection014')
        .onClick(()=>{
          this.selectionStart=0
          this.selectionEnd=5
        })
      //change caretcolor
      Button('caretColor')
        .width('90%')
        .height('10%')
        .margin(20)
        .backgroundColor(Color.Orange)
        .id('caretColor014')
        .onClick(()=>{
          this.caretcolorIndex++
          if (this.caretcolorIndex > (this.caretcolorStr.length - 1)) {
            this.caretcolorIndex = 0
          }
        })
      //caretcolor
      Search({
        controller: this.controller
      })
        .caretStyle({color:this.caretcolor[this.caretcolorIndex]})
        .width(300)
        .height('20%')
        .margin(20)
        .defaultFocus(true)
        .onClick(() => {
          this.controller.setTextSelection(this.selectionStart, this.selectionEnd)
        })
        .id('colorstr014')
    }
    .width('100%')
    .height('100%')
  }
}
