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

import {HyperlinkModifier} from "@ohos.arkui.modifier"

class MyModifier extends HyperlinkModifier {
  applyNormalAttribute(instance: HyperlinkAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.color(Color.Pink)
  }
  public setGroup1() : void {
    this.color(0x008000)
  }
  public setGroup2() : void {
    this.color('rgb(255,0,0)')
  }
  public setGroup3() : void {
    this.color($r('app.color.blue'))
  }
  public setGroup4() : void {
    this.color(-1)
  }
  public setGroup5() : void {
    this.color(null)
  }
}

@Component
struct MyHyperlink {
  @Link modifier : HyperlinkModifier
  build(){
    Hyperlink('https://www.baidu.com/', 'Dynamic HyperlinkModifier') {
      }
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier001 {
  @State myModifier: HyperlinkModifier = new MyModifier().width(300).height(300).margin(10)
  @State total : number = 6;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .id("UiComponentTextModifier001")
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = '粉色'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = '绿色'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = '红色'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = '蓝色'+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = '-1默认蓝色'+this.index % this.total
          }
          if(this.index % this.total == 5){
            (this.myModifier as MyModifier).setGroup5()
            console.log("Modifier","setGroup5")
            this.text = 'null默认蓝色'+this.index % this.total
          }
          this.index ++;
        })
      MyHyperlink({modifier:this.myModifier})
    }
    .width('100%')
  }
}
