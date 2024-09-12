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
    this.maxFontSize(30)
    this.minFontSize(5)
  }
  public setGroup1() : void {
    this.maxFontSize(10)
    this.minFontSize(5)
  }
  public setGroup2() : void {
    this.heightAdaptivePolicy(TextHeightAdaptivePolicy.MAX_LINES_FIRST)
  }
  public setGroup3() : void {
    this.heightAdaptivePolicy(TextHeightAdaptivePolicy.MIN_FONT_SIZE_FIRST)
  }
  public setGroup4() : void {
    this.heightAdaptivePolicy(TextHeightAdaptivePolicy.LAYOUT_CONSTRAINT_FIRST)
  }
}

@Component
struct MyText {
  @Link modifier : TextModifier
  @State text: string = 'This is text content. This is text content.'

  build(){
    Text(this.text)
      .textAlign(TextAlign.Start)
      .fontSize(12)
      .border({ width: 1 })
      .maxLines(3)
      .padding(10)
      .width('100%')
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier052 {
  @State myModifier: TextModifier = new MyModifier()
  @State total : number = 5;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier052")
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'maxFontSize为30, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'maxFontSize为10, 第'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'maxLines为3, 第'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'MAX_LINES_FIRST, 第'+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'MIN_FONT_SIZE_FIRST, 第'+this.index % this.total
          }
          this.index ++;
        })
      MyText({modifier:this.myModifier})
    }
    .width('100%')
  }
}
