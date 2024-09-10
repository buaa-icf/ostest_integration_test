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
    this.enterKeyType(EnterKeyType.Go)
  }
  public setGroup1() : void {
    this.enterKeyType(EnterKeyType.Search)
  }
  public setGroup2() : void {
    this.enterKeyType(EnterKeyType.Send)
  }
  public setGroup3() : void {
    this.enterKeyType(EnterKeyType.Next)
  }
  public setGroup4() : void {
    this.enterKeyType(EnterKeyType.Done)
  }
  public setGroup5() : void {
    this.enterKeyType(EnterKeyType.PREVIOUS)
  }
}

@Component
struct MyTextInput {
  @Link modifier : TextInputModifier
  @State text: string = 'This is text content. This is long text content.'

  build(){
    TextInput({placeholder: 'input your password...' })
      .fontSize(20)
      .width('200')
      .height(40)
      .margin(20)
      .maxLines(5)
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier084 {
  @State myModifier: TextInputModifier = new MyModifier()
  @State total : number = 6;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier084")
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'Go, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'Search, 第'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'Send, 第'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'Next, 第'+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = 'Done, 第'+this.index % this.total
          }
          if(this.index % this.total == 5){
            (this.myModifier as MyModifier).setGroup5()
            console.log("Modifier","setGroup5")
            this.text = 'PREVIOUS, 第'+this.index % this.total
          }
          this.index ++;
        })
      MyTextInput({modifier:this.myModifier})
    }
    .width('100%')
  }
}
