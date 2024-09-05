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

import {TextModifier} from "@ohos.arkui.modifier"

class MyModifier extends TextModifier {
  applyNormalAttribute(instance: TextAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.wordBreak(WordBreak.NORMAL)
  }
  public setGroup1() : void {
    this.wordBreak(WordBreak.BREAK_ALL)
  }
  public setGroup2() : void {
    this.wordBreak(WordBreak.BREAK_WORD)
  }
}

@Component
struct MyText {
  @Link modifier : TextModifier
  @State text: string = 'This is set wordBreak to WordBreak text content This is set wordBreak to WordBreak text content.'

  build(){
    Text(this.text)
      .textAlign(TextAlign.End)
      .fontSize(12)
      .border({ width: 1 })
      .padding(10)
      .width('100%')
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier050 {
  @State myModifier: TextModifier = new MyModifier()
  @State total : number = 3;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier050")
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'NORMAL, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'BREAK_ALL, 第'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'BREAK_WORD, 第'+this.index % this.total
          }
          this.index ++;
        })
      MyText({modifier:this.myModifier})
    }
    .width('100%')
  }
}
