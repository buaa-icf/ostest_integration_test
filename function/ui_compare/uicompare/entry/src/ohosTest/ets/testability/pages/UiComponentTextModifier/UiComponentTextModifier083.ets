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
    this.type(InputType.Normal)
  }
  public setGroup1() : void {
    this.type(InputType.Password)
  }
  public setGroup2() : void {
    this.type(InputType.Email)
  }
  public setGroup3() : void {
    this.type(InputType.Number)
  }
  public setGroup4() : void {
    this.type(InputType.PhoneNumber)
  }
  public setGroup5() : void {
    this.type(InputType.USER_NAME)
  }
  public setGroup6() : void {
    this.type(InputType.NEW_PASSWORD )
  }
  public setGroup7() : void {
    this.type(InputType.NUMBER_PASSWORD)
  }
  public setGroup8() : void {
    this.type(InputType.NUMBER_DECIMAL)
  }
  public setGroup9() : void {
    this.type(InputType.SCREEN_LOCK_PASSWORD)
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
struct UiComponentTextModifier083 {
  @State myModifier: TextInputModifier = new MyModifier()
  @State total : number = 10;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier083")
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'Normal, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'Password, 第'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'Email, 第'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'Number, 第'+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = 'PhoneNumber, 第'+this.index % this.total
          }
          if(this.index % this.total == 5){
            (this.myModifier as MyModifier).setGroup5()
            console.log("Modifier","setGroup5")
            this.text = 'USER_NAME, 第'+this.index % this.total
          }
          if(this.index % this.total == 6){
            (this.myModifier as MyModifier).setGroup6()
            console.log("Modifier","setGroup6")
            this.text = 'NEW_PASSWORD, 第'+this.index % this.total
          }
          if(this.index % this.total == 7){
            (this.myModifier as MyModifier).setGroup7()
            console.log("Modifier","setGroup7")
            this.text = 'NUMBER_PASSWORD, 第'+this.index % this.total
          }
          if(this.index % this.total == 8){
            (this.myModifier as MyModifier).setGroup8()
            console.log("Modifier","setGroup8")
            this.text = 'NUMBER_DECIMAL, 第'+this.index % this.total
          }
          if(this.index % this.total == 9){
            (this.myModifier as MyModifier).setGroup9()
            console.log("Modifier","setGroup9")
            this.text = 'SCREEN_LOCK_PASSWORD, 第'+this.index % this.total
          }
          this.index ++;
        })
      MyTextInput({modifier:this.myModifier})
    }
    .width('100%')
  }
}
