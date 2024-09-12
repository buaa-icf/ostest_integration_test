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

import {NavDestinationModifier} from "@ohos.arkui.modifier"

class PageParam {
  constructor(num_: number) {
    this.num = num_;
  }
  num: number = 0;
}

class MyModifier extends NavDestinationModifier {
  applyNormalAttribute(instance: NavDestinationAttribute) : void{
    super.applyNormalAttribute?.(instance);
  }
  public setGroup0() : void {
  }
}

@Component
struct MyNavDestination {
  private stack: NavPathStack | null = null;
  private name: string = "";
  private paramNum: number = 0;
  @State myModifier: NavDestinationModifier = new MyModifier().width(300).height(300).margin(10).hideTitleBar(true)
  @State total : number = 4;
  @State index : number = 0;
  @State text : String = 'init';

  build() {
    NavDestination() {
      Column() {
        Text((this.text).toString()).width(100).height(100)
        Button('button', { type: ButtonType.Capsule, stateEffect: true })
          .margin(10)
          .id('UiComponentLayoutModifier017_modifier')
          .onClick(() => {
            console.log("Modifier","onClick")
            if(this.index % this.total == 0){
              (this.myModifier as MyModifier).setGroup0()
              console.log("Modifier","setGroup0")
              this.text = 'hideTitleBar:true '+this.index % this.total
            }
            this.index ++;
          })

        Text("NavPathInfo: name: " + this.name + ", paramNum: " + this.paramNum)
        Button('pushPath', { stateEffect: true, type: ButtonType.Capsule })
          .width('80%')
          .height(40)
          .margin(20)
          .onClick(() => {
            if (this.stack) {
              let p = new PageParam(this.paramNum + 1);
              this.stack.pushPath({name: "pageOne", param: p});
            }
          })
        Button('pop', { stateEffect: true, type: ButtonType.Capsule })
          .width('80%')
          .height(40)
          .margin(20)
          .onClick(() => {
            this.stack?.pop()
          })
      }
      .width('100%')
      .height('100%')
    }
    .title('pageOne')
    .attributeModifier(this.myModifier as MyModifier)
    .onReady((ctx: NavDestinationContext) => {
      try {
        this.name = ctx?.pathInfo?.name;
        this.paramNum = (ctx?.pathInfo?.param as PageParam)?.num;
        this.stack = ctx.pathStack;
      } catch (e) {
        console.log(`testTag onReady catch exception: ${JSON.stringify(e)}`)
      }
    })
  }
}

@Entry
@Component
struct UiComponentLayoutModifier017 {
  private stack : NavPathStack = new NavPathStack();

  @Builder
  PageMap(name: string) {
    if (name === 'pageOne') {
      MyNavDestination()
    }
  }

  build() {
    Navigation(this.stack) {
      Stack({alignContent: Alignment.Center}) {
        Button('pushPath', { stateEffect: true, type: ButtonType.Capsule })
          .width('80%')
          .height(40)
          .margin(20)
          .onClick(() => {
            let p = new PageParam(1);
            this.stack.pushPath({ name: "pageOne", param: p })
          })
          .id('UiComponentLayoutModifier017')
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
    .navDestination(this.PageMap)
    .title('Navigation')
  }
}