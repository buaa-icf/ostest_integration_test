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

import {ImageSpanModifier} from "@ohos.arkui.modifier"

class MyModifier extends ImageSpanModifier {
  applyNormalAttribute(instance: ImageSpanAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.objectFit(ImageFit.Contain)
  }
  public setGroup1() : void {
    this.objectFit(ImageFit.Cover)
  }
  public setGroup2() : void {
    this.objectFit(ImageFit.Auto)
  }
  public setGroup3() : void {
    this.objectFit(ImageFit.Fill)
  }
  public setGroup4() : void {
    this.objectFit(ImageFit.ScaleDown)
  }
  public setGroup5() : void {
    this.objectFit(ImageFit.None)
  }
  public setGroup6() : void {
    this.objectFit(99)
  }
  public setGroup7() : void {
    this.objectFit(0.5)
  }
  public setGroup8() : void {
    this.objectFit(-99)
  }
  public setGroup9() : void {
    this.objectFit(-0.5)
  }
  public setGroup10() : void {
    this.objectFit(undefined)
  }
}

@Component
struct MyImageSpan {
  @Link modifier : ImageSpanModifier
  build(){
    ImageSpan($r('app.media.icon'))
      .width('200px')
      .height('200px')
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier002 {
  @State myModifier: ImageSpanModifier = new MyModifier().width(300).height(300).margin(10)
  @State total : number = 11;
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
            this.text = 'Contain'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'Cover'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'Auto'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'Fill'+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = 'ScaleDown'+this.index % this.total
          }
          if(this.index % this.total == 5){
            (this.myModifier as MyModifier).setGroup5()
            console.log("Modifier","setGroup5")
            this.text = 'None'+this.index % this.total
          }
          if(this.index % this.total == 6){
            (this.myModifier as MyModifier).setGroup6()
            console.log("Modifier","setGroup6")
            this.text = '99+'+this.index % this.total
          }
          if(this.index % this.total == 7){
            (this.myModifier as MyModifier).setGroup7()
            console.log("Modifier","setGroup7")
            this.text = '0.5+'+this.index % this.total
          }
          if(this.index % this.total == 8){
            (this.myModifier as MyModifier).setGroup8()
            console.log("Modifier","setGroup8")
            this.text = '-99+'+this.index % this.total
          }
          if(this.index % this.total == 9){
            (this.myModifier as MyModifier).setGroup9()
            console.log("Modifier","setGroup9")
            this.text = '-0.5+'+this.index % this.total
          }
          if(this.index % this.total == 10){
            (this.myModifier as MyModifier).setGroup10()
            console.log("Modifier","setGroup10")
            this.text = 'undefined+'+this.index % this.total
          }
          this.index ++;
        })
      Text() {
        MyImageSpan({modifier:this.myModifier})
        Span('I am Underline-span')
          .decoration({ type: TextDecorationType.Underline, color: Color.Red }).fontSize(25)
      }
    }
    .width('100%')
  }
}
