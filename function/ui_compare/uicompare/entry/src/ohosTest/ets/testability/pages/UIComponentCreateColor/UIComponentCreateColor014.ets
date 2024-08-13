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
  @State booltext:boolean = false
  @State caretcolorIndex: number = 0;
  @State caretcolor: Color[] = [Color.Red, Color.Green, Color.Blue]
  @State caretcolorStr: string[] = ['Red', 'Green', 'Blue']
  controller:SearchController = new SearchController()

  build() {
    Column() {
      //change selection
      Button('setTextSelection')
        .width('90%')
        .margin(50)
        .id('setTextSelection')
        .onClick(()=>{
          this.booltext=true
        })
      //change caretcolor
      Button('caretColor')
        .width('90%')
        .margin(50)
        .backgroundColor(Color.Orange)
        .id('caretColor')
        .onClick(()=>{
          this.caretcolorIndex++
          if (this.caretcolorIndex > (this.caretcolorStr.length - 1)) {
            this.caretcolorIndex = 0
          }
        })
      //select(0,5)
      if(this.booltext){
        Search({
          value: 'rgbcolorrgb',
          controller: this.controller
        })
          .caretStyle({color:'#007DFF'})
          .width(300)
          .defaultFocus(true)
          .onFocus(() => {
            this.controller.setTextSelection(0, 5)
          })
          .id('rgb')
      }
      //caretcolor
      Search({
        controller: this.controller
      })
        .caretStyle({color:this.caretcolor[this.caretcolorIndex]})
        .width(300)
        .margin(20)
        .id('colorstr')
    }
    .width('100%')
    .height('100%')
  }
}
