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

import {NavRouterModifier} from "@ohos.arkui.modifier"
import router from '@ohos.router'

class MyModifier extends NavRouterModifier {
  applyNormalAttribute(instance: NavRouterAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.mode(NavRouteMode.PUSH_WITH_RECREATE)
  }
  public setGroup1() : void {
    this.mode(NavRouteMode.PUSH)
  }
  public setGroup2() : void {
    this.mode(NavRouteMode.REPLACE)
  }
  public setGroup3() : void {
    this.mode(null)
  }
  public setGroup4() : void {
    this.mode(undefined)
  }
}

@Component
struct MyNavRouter {
  @Link modifier : NavRouterModifier
  @State isActiveWLAN: boolean = false
  @State isActiveBluetooth: boolean = false

  build(){
    NavRouter() {
      Row() {
        Row()
          .width(30)
          .height(30)
          .borderRadius(30)
          .margin({ left: 3, right: 10 })
          .backgroundColor(Color.Pink)
        Text("Page New")
          .fontSize(22)
          .fontWeight(500)
          .textAlign(TextAlign.Center)
      }
      .width('90%')
      .height(60)
      NavDestination() {
        Flex({ direction: FlexDirection.Row }) {
          Text('This is page new').fontSize(30).padding({ left: 15 })
        }
      }
      .title("Page New")
      .onShown(() =>{
        console.log("NavDestination","Page New show")
      })
      .onHidden(() => {
        console.log("NavDestination","Page New hidden")
      })
      .onDisAppear(() =>{
        console.log("NavDestination","Page New disappear")
      })
    }
    .margin({ top: 10, bottom: 10 })
    .backgroundColor(this.isActiveWLAN ? '#ccc' : '#fff')
    .borderRadius(20)
    .onStateChange((isActivated: boolean) => {
      this.isActiveWLAN = isActivated
    })
    .attributeModifier(this.modifier as MyModifier)
  }
}

@Component
struct AnotherNavRouter {
  @State isActiveWLAN: boolean = false
  @State isActiveBluetooth: boolean = false

  build(){
    NavRouter() {
      Row() {
        Row()
          .width(30)
          .height(30)
          .borderRadius(30)
          .margin({ left: 3, right: 10 })
          .backgroundColor(Color.Pink)
        Text(`page two`)
          .fontSize(22)
          .fontWeight(500)
          .textAlign(TextAlign.Center)
      }
      .width('90%')
      .height(60)
      NavDestination() {
        Flex({ direction: FlexDirection.Row }) {
          Text('page two').fontSize(30).padding({ left: 15 })
        }
      }.title("page two")
    }
    .margin({ top: 10, bottom: 10 })
    .backgroundColor(this.isActiveBluetooth ? '#ccc' : '#fff')
    .borderRadius(20)
    .mode(NavRouteMode.REPLACE)
    .onStateChange((isActivated: boolean) => {
      this.isActiveBluetooth = isActivated
    })
  }
}
@Entry
@Component
struct UiComponentLayoutModifier060 {
  @State myModifier: NavRouterModifier = new MyModifier().width(300).height(300).margin(10)
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
            this.text = 'PUSH_WITH_RECREATE, '+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'PUSH, '+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'REPLACE, '+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'null, '+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = 'undefined, '+this.index % this.total
          }
          this.index ++;
        })
      Navigation() {
        MyNavRouter({modifier:this.myModifier})
        AnotherNavRouter()
      }
    }
    .width('100%')
  }
}