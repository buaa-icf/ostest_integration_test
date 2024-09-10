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
import router from '@ohos.router'

class MyModifier extends NavigationModifier {
  applyNormalAttribute(instance: NavigationAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
    this.hideToolBar(false)
    this.subTitle('子标题')
    this.titleMode(NavigationTitleMode.Full)
    this.backButtonIcon('cat.jpg')
    this.hideBackButton(false)
    this.hideTitleBar(false)
  }
  public setGroup1() : void {
    this.hideToolBar(null)
    this.subTitle(null)
    this.titleMode(null)
    this.backButtonIcon(null)
    this.hideBackButton(null)
    this.hideTitleBar(null)
  }
  public setGroup2() : void {
    this.hideToolBar(true)
    this.subTitle('subTitle')
    this.titleMode(NavigationTitleMode.Free)
    this.backButtonIcon($r('app.media.icon'))
    this.hideBackButton(true)
    this.hideTitleBar(true)
  }
  public setGroup3() : void {
    this.hideToolBar(undefined)
    this.subTitle(undefined)
    this.titleMode(NavigationTitleMode.Mini)
    this.backButtonIcon(undefined)
    this.hideBackButton(undefined)
    this.hideTitleBar(undefined)
  }
  public setGroup4() : void {
    this.hideToolBar(undefined)
    this.subTitle('')
    this.titleMode(undefined)
    this.backButtonIcon(undefined)
  }
}

@Component
struct MyNavigation {
  @Link modifier : NavigationModifier
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
    .attributeModifier(this.modifier as MyModifier)
  }
}

@Entry
@Component
struct UiComponentLayoutModifier069 {
  @State myModifier: NavigationModifier = new MyModifier().width(300).height(300).margin(10)
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
            this.text = 'hideToolBar: false, subTitle: 子标题, titleMode: Full, backButtonIcon: string, hideBackButton: false, hideTitleBar: false '+this.index % this.total
          }
          if(this.index % this.total == 1){
            (this.myModifier as MyModifier).setGroup1()
            console.log("Modifier","setGroup1")
            this.text = 'hideToolBar: null, subTitle: null, titleMode: null, backButtonIcon: null, hideBackButton: null, hideTitleBar: null '+this.index % this.total
          }
          if(this.index % this.total == 2){
            (this.myModifier as MyModifier).setGroup2()
            console.log("Modifier","setGroup2")
            this.text = 'hideToolBar: true, subTitle: subTitle, titleMode: Free, backButtonIcon: Resource, hideBackButton: true, hideTitleBar: true '+this.index % this.total
          }
          if(this.index % this.total == 3){
            (this.myModifier as MyModifier).setGroup3()
            console.log("Modifier","setGroup3")
            this.text = 'hideToolBar: undefined, subTitle: undefined, titleMode: Mini, backButtonIcon: undefined, hideBackButton: undefined, hideTitleBar: undefined '+this.index % this.total
          }
          if(this.index % this.total == 4){
            (this.myModifier as MyModifier).setGroup4()
            console.log("Modifier","setGroup4")
            this.text = 'hideToolBar: undefined, subTitle: , titleMode: undefined, backButtonIcon: undefined '+this.index % this.total
          }
          this.index ++;
        })
      Navigation() {
        MyNavigation({modifier:this.myModifier})
      }
    }
    .width('100%')
  }
}