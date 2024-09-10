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

class MyModifier_show extends TextInputModifier {
  applyNormalAttribute(instance: TextInputAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.showPasswordIcon(true)
  }
  public setGroup1() : void {
    this.showPasswordIcon(false)
  }
}
class MyModifier_copy extends TextInputModifier {
  applyNormalAttribute(instance: TextInputAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.copyOption(CopyOptions.None)
  }
  public setGroup1() : void {
    this.copyOption(CopyOptions.InApp)
  }
}

@Component
struct MyTextInput_show {
  @Link modifier : TextInputModifier
  @State text: string = 'This is show text content'

  build(){
    TextInput({placeholder: 'input your password...' })
      .type(InputType.Password)
      .fontSize(20)
      .width('200')
      .height(40)
      .margin(20)
      .maxLines(5)
      .attributeModifier(this.modifier as MyModifier_show)
  }
}

@Component
struct MyTextInput_copy {
  @Link modifier : TextInputModifier
  @State text: string = 'This is copy text content'

  build(){
    TextInput({text:this.text, placeholder: 'input your password...' })
      .fontSize(20)
      .width('200')
      .height(40)
      .margin(20)
      .maxLines(5)
      .attributeModifier(this.modifier as MyModifier_copy)
  }
}

@Entry
@Component
struct UiComponentTextModifier095  {
  @State myModifier_show: TextInputModifier = new MyModifier_show()
  @State myModifier_copy: TextInputModifier = new MyModifier_copy()
  @State total : number = 2;
  @State index_show : number = 0;
  @State index_copy : number = 0;
  @State text_show : String = 'init';
  @State text_copy : String = 'init';

  build() {
    Column() {
      Text((this.text_show).toString()).width(100).height(100)
      Button('button_show', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier095")
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index_show % this.total == 0){
            (this.myModifier_show as MyModifier_show).setGroup0()
            console.log("Modifier","setGroup0")
            this.text_show = 'show, true, 第'+this.index_show % this.total
          }
          if(this.index_show % this.total == 1){
            (this.myModifier_show as MyModifier_show).setGroup1()
            console.log("Modifier","setGroup1")
            this.text_show = 'show, false, 第'+this.index_show % this.total
          }
          this.index_show ++;
        })
      MyTextInput_show({modifier:this.myModifier_show})

      Text((this.text_copy).toString()).width(100).height(100)
      Button('button_copy', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index_copy % this.total == 0){
            (this.myModifier_copy as MyModifier_copy).setGroup0()
            console.log("Modifier","setGroup0")
            this.text_copy = 'copy, None, 第'+this.index_copy % this.total
          }
          if(this.index_copy % this.total == 1){
            (this.myModifier_copy as MyModifier_copy).setGroup1()
            console.log("Modifier","setGroup1")
            this.text_copy = 'copy, Inapp, 第'+this.index_copy % this.total
          }
          this.index_copy ++;
        })
      MyTextInput_copy({modifier:this.myModifier_copy})
    }
    .width('100%')
  }
}
