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

import {SpanModifier} from "@ohos.arkui.modifier"

class MyModifier extends SpanModifier {
  applyNormalAttribute(instance: SpanAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.letterSpacing(-5)
  }
  public setGroup1() : void {
    this.letterSpacing(0)
  }
  public setGroup2() : void {
    this.letterSpacing(5)
  }
  public setGroup3() : void {
    this.letterSpacing('10fp')
  }
  public setGroup4() : void {
    this.letterSpacing('10abc')
  }
  public setGroup5() : void {
    this.letterSpacing('20%')
  }
}

@Component
struct MySpan {
  @Link modifier : SpanModifier

  build(){
    Text() {
      Span('I am Underline-span')
        .decoration({ type: TextDecorationType.Underline, color: Color.Red })
        .fontSize(12)
        .attributeModifier(this.modifier as MyModifier)
        .width('100%')
    }
  }
}

@Entry
@Component
struct UiComponentTextModifier024 {
  @State myModifier: SpanModifier = new MyModifier()
  @State total : number = 6;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = '-5, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = '0, 第'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = '5, 第'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = '10fp, 第'+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = '10abc, 第'+this.index % this.total
          }
          if(this.index % this.total == 5){
            (this.myModifier as MyModifier).setGroup5()
            console.log("Modifier","setGroup5")
            this.text = '20%, 第'+this.index % this.total
          }
          this.index ++;
        })
      MySpan({modifier:this.myModifier})
    }
    .width('100%')
  }
}
