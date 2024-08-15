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

import {TextInputModifier} from "@ohos.arkui.modifier"

class MyModifier extends TextInputModifier {
  applyNormalAttribute(instance: TextInputAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.showError('Error')
  }
  public setGroup1() : void {
    this.showError()
  }
}

@Component
struct MyTextInput {
  @Link modifier : TextInputModifier
  @State text: string = 'This is text content. This is text content.'

  build(){
    TextInput({ placeholder: 'input your password...' })
      .fontSize(10)
      .width('300')
      .height(40)
      .margin(20)
      .maxLength(10)
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier071 {
  @State myModifier: TextInputModifier = new MyModifier()
  @State total : number = 2;
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
            this.text = 'Error, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'null, 第'+this.index % this.total
          }
          this.index ++;
        })
      MyTextInput({modifier:this.myModifier})
    }
    .width('100%')
  }
}
