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
    this.allowScale(true)
  }
  public setGroup1() : void {
    this.allowScale(false)
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
struct UiComponentTextModifier006 {
  @State myModifier: MarqueeModifier = new MyModifier().width(300).height(300).margin(10)
  @State total : number = 2;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .id("UiComponentTextModifier006")
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'true，第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'false，第'+this.index % this.total
          }
          this.index ++;
        })
      MyMarquee({modifier:this.myModifier})
    }
    .width('100%')
  }
}
