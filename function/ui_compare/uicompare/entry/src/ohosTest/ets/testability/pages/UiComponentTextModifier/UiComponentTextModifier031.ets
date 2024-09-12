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

import {SpanModifier} from "@ohos.arkui.modifier"

class MyModifier extends SpanModifier {
  applyNormalAttribute(instance: SpanAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.font({size:10, weight :100, family:'HarmonyOS Sans', style: FontStyle.Italic})
  }
  public setGroup1() : void {
    this.font({size:-1, weight :900, family:'HarmonyOS Sans', style: FontStyle.Normal})
  }
}

@Component
struct MySpan {
  @Link modifier : SpanModifier

  build(){
    Text() {
      Span('I am Underline-span')
        .decoration({ type: TextDecorationType.Underline, color: Color.Red })
        .attributeModifier(this.modifier as MyModifier)
        .width('100%')
    }
  }
}

@Entry
@Component
struct UiComponentTextModifier031 {
  @State myModifier: SpanModifier = new MyModifier()
  @State total : number = 2;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .id("UiComponentTextModifier031")
        .margin(10)
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = '款式0, 第'+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = '款式1 , 第'+this.index % this.total
          }
          this.index ++;
        })
      MySpan({modifier:this.myModifier})
    }
    .width('100%')
  }
}
