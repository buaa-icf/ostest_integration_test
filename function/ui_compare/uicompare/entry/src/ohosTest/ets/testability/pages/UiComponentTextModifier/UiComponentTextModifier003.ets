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
    this.verticalAlign(ImageSpanAlignment.BOTTOM)
  }
  public setGroup1() : void {
    this.verticalAlign(ImageSpanAlignment.TOP)
  }
  public setGroup2() : void {
    this.verticalAlign(ImageSpanAlignment.CENTER)
  }
  public setGroup3() : void {
    this.verticalAlign(ImageSpanAlignment.BASELINE)
  }
  public setGroup4() : void {
    this.verticalAlign(undefined)
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
struct UiComponentTextModifier003 {
  @State myModifier: ImageSpanModifier = new MyModifier().width(300).height(300).margin(10)
  @State total : number = 5;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier003")
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'BOTTOM'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'TOP'+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'CENTER'+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'BASELINE'+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = 'undefined'+this.index % this.total
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
