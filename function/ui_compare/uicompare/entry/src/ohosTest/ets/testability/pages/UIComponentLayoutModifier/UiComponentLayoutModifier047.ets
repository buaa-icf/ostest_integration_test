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

import {NavigatorModifier} from "@ohos.arkui.modifier"
import router from '@ohos.router'

class MyModifier extends NavigatorModifier {
  applyNormalAttribute(instance: NavigatorAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.target('testability/pages/UiComponentLayoutModifier/FakePage')
  }
  public setGroup1() : void {
    this.target(null)
  }
  public setGroup2() : void {
    this.target(undefined)
  }
  public setGroup3() : void {
    this.target('testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifierPageB')
  }
  public setGroup4() : void {
    this.target('testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier047')
  }
}

@Component
struct MyNavigator {
  @Link modifier : NavigatorModifier
  @State active: boolean = false
  @State param: NameObject = { name: 'Hello World!', url: 'testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier047'}

  build(){
    Navigator({ target: '', type: NavigationType.Push }) {
      Text('Go to the next page')
        .width('100%').textAlign(TextAlign.Center)
    }
    .params(new TextObject(this.param))
    .active(this.active)
    .onClick(() => {
      this.active = true
    })
    .attributeModifier(this.modifier as MyModifier)
  }
}

interface NameObject {
  name: string;
  url: string
}

class TextObject {
  text: NameObject;
  constructor(text: NameObject) {
    this.text = text;
  }
}

@Entry
@Component
struct UiComponentLayoutModifier047 {
  @State myModifier: NavigatorModifier = new MyModifier().width(300).height(300).margin(10)
  @State total : number = 5;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    Column() {
      Text((this.text).toString()).width(100).height(100)
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .id("Button")
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier as MyModifier).setGroup0()
            console.log("Modifier","setGroup0")
            this.text = 'A, fake page, '+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'null, '+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'undefined, '+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'B, new page, '+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = 'C, this page, '+this.index % this.total
          }
          this.index ++;
        })
      Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.SpaceBetween }) {
        MyNavigator({modifier:this.myModifier})
      }.height(150).width(350).padding(35)
    }
    .width('100%')
  }
}