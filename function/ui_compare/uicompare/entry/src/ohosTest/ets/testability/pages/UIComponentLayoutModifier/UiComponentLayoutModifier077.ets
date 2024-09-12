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

import {NavigationModifier} from "@ohos.arkui.modifier"
import window from '@ohos.window';
import common from '@ohos.app.ability.common';
import router from '@ohos.router'

class MyModifier1 extends NavigationModifier {
  applyNormalAttribute(instance: NavigationAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.hideTitleBar(true)
  }
}

class MyModifier2 extends NavigationModifier {
  applyNormalAttribute(instance: NavigationAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup2() : void {
    this.hideToolBar(true)
  }
}

@Component
struct MyNavigation {
  @Link modifier1 : NavigationModifier
  @Link modifier2 : NavigationModifier
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  @State currentIndex: number = 0

  @Builder NavigationTitle() {
    Column() {
      Text('Title')
        .fontColor('#182431')
        .fontSize(30)
        .lineHeight(41)
        .fontWeight(700)
      Text('subtitle')
        .fontColor('#182431')
        .fontSize(14)
        .lineHeight(19)
        .opacity(0.4)
        .margin({ top: 2, bottom: 20 })
    }.alignItems(HorizontalAlign.Start)
  }

  @Builder NavigationMenus() {
    Row() {
      Image('cat.jpg')
        .width(24)
        .height(24)
      Image('cat.jpg')
        .width(24)
        .height(24)
        .margin({ left: 24 })
    }
  }

  build(){
    Navigation() {
      TextInput({ placeholder: 'search...' })
        .width('90%')
        .height(40)
        .backgroundColor('#FFFFFF')
        .margin({ top: 8 })

      List({ space: 12, initialIndex: 0 }) {
        ForEach(this.arr, (item: number) => {
          ListItem() {
            Text('' + item)
              .width('90%')
              .height(72)
              .backgroundColor('#FFFFFF')
              .borderRadius(24)
              .fontSize(16)
              .fontWeight(500)
              .textAlign(TextAlign.Center)
          }
        }, (item: number) => item.toString())
      }
      .height(324)
      .width('100%')
      .margin({ top: 12, left: '10%' })
    }
    .title(this.NavigationTitle)
    .menus(this.NavigationMenus)
    .toolbarConfiguration([
      {
        value: '0',
        icon: $r("app.media.icon")
      },
      {
        value: '1',
        icon: $r("app.media.icon")
      },
      {
        value: '2',
        icon: $r("app.media.icon")
      }
    ])
    .onTitleModeChange((titleModel: NavigationTitleMode) => {
      console.info('titleMode' + titleModel)
    })
    .mode(NavigationMode.Split)
    .attributeModifier(this.modifier1 as MyModifier1)
    .attributeModifier(this.modifier2 as MyModifier2)
  }
}

@Entry
@Component
struct UiComponentLayoutModifier077 {
  @State myModifier1: NavigationModifier = new MyModifier1().width(300).height(300).margin(10)
  @State myModifier2: NavigationModifier = new MyModifier2().width(300).height(300).margin(10)
  @State total : number = 1;
  @State index : number = 0;
  @State text1 : String = 'init';
  @State text2 : String = 'init';
  @State currentIndex: number = 0

  build() {
    Column() {
      Text((this.text1).toString()).width(100).height(100)
      Text((this.text2).toString()).width(100).height(100)
      Button('button1', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .id("Button1")
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier1 as MyModifier1).setGroup0()
            console.log("Modifier","setGroup0")
            this.text1 = 'hideTitleBar: true '+this.index % this.total
          }
        })
      Button('button2', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .id("Button2")
        .onClick(() => {
          console.log("Modifier","onClick")
          if(this.index % this.total == 0){
            (this.myModifier2 as MyModifier2).setGroup2()
            console.log("Modifier","setGroup0")
            this.text2 = 'hideToolBar: true '+this.index % this.total
          }
        })
      Navigation() {
        MyNavigation({modifier1:this.myModifier1, modifier2:this.myModifier2})
      }
    }
    .width('100%')
  }
}