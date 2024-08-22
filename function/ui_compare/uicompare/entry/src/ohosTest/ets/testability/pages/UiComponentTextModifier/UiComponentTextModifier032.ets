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

import {TextAreaModifier} from "@ohos.arkui.modifier"

class MyModifier extends TextAreaModifier {
  applyNormalAttribute(instance: TextAreaAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.showCounter(
      true, { thresholdPercentage: 50, highlightBorder: true }
     )
  }
  public setGroup1() : void {
    this.showCounter(
      true, { thresholdPercentage: 50, highlightBorder: false }
    )
  }
  public setGroup2() : void {
    this.showCounter(
      true, { thresholdPercentage: -10, highlightBorder: true }
    )
  }
  public setGroup3() : void {
    this.showCounter(
      false, { thresholdPercentage: 10, highlightBorder: true }
    )
  }
}

@Component
struct MyTextArea {
  @Link modifier : TextAreaModifier
  @State text: string = 'test'
  @State counterVisible: boolean = false
  @State maxNumber: number = -1
  controller: TextAreaController = new TextAreaController()

  build(){
    TextArea({
      text: this.text,
      placeholder: 'The text area can hold an unlimited amount of text. input your word...',
      controller: this.controller
    })
      .placeholderFont({ size: 16, weight: 400 })
      .width(336)
      .height(56)
      .margin(20)
      .fontSize(16)
      .fontColor('#182431')
      .maxLength(6)
      .showCounter(true)
      .backgroundColor('#FFFFFF')
      .onChange((value: string) => {
        this.text = value
      })
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier032 {
  @State myModifier: TextAreaModifier = new MyModifier()
  @State total : number = 4;
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
            this.text = '款式0, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = '款式1 , 第'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = '款式2, 第'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = '款式3 , 第'+this.index % this.total
          }
          this.index ++;
        })
      MyTextArea({modifier:this.myModifier})
    }
    .width('100%')
  }
}
