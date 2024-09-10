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

import {MarqueeModifier} from "@ohos.arkui.modifier"

class MyModifier extends MarqueeModifier {
  applyNormalAttribute(instance: MarqueeAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.fontColor(Color.Pink)
  }
  public setGroup1() : void {
    this.fontColor(0x008000)
  }
  public setGroup2() : void {
    this.fontColor('rgb(255,0,0)')
  }
  public setGroup3() : void {
    this.fontColor($r('app.color.blue'))
  }
  public setGroup4() : void {
    this.fontColor(-1)
  }
  public setGroup5() : void {
    this.fontColor(null)
  }
}

@Component
struct MyMarquee {
  @Link modifier : MarqueeModifier
  @State start: boolean = true
  private fromStart: boolean = true
  private step: number = 50
  private loop: number = Number.POSITIVE_INFINITY
  private src: string = "Running Marquee starts rolling"

  build(){
    Marquee({
      start: this.start,
      step: this.step,
      loop: this.loop,
      fromStart: this.fromStart,
      src: this.src
    })
      .width(360)
      .height(80)
      .fontSize(48)
      .fontWeight(700)
      .backgroundColor('#FFFFFF')
      .margin({ bottom: 40 })
      .onStart(() => {
        console.info('Marquee animation complete onStart')
      })
      .onBounce(() => {
        console.info('Marquee animation complete onBounce')
      })
      .onFinish(() => {
        console.info('Marquee animation complete onFinish')
      })
      .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentTextModifier004 {
  @State myModifier: MarqueeModifier = new MyModifier().width(300).height(300).margin(10)
  @State total : number = 6;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier004")
        .margin(10)
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
      MyMarquee({modifier:this.myModifier})
    }
    .width('100%')
  }
}
