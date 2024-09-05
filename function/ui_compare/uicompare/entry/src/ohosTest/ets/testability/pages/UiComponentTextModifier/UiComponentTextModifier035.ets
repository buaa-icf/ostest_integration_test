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
    this.selectionMenuHidden(true)
  }
  public setGroup1() : void {
    this.selectionMenuHidden(false)
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
      .maxLength(4)
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
struct UiComponentTextModifier035 {
  @State myModifier: TextAreaModifier = new MyModifier()
  @State total : number = 2;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier035")
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'true, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'false, 第'+this.index % this.total
          }
          this.index ++;
        })
      MyTextArea({modifier:this.myModifier})
    }
    .width('100%')
  }
}
