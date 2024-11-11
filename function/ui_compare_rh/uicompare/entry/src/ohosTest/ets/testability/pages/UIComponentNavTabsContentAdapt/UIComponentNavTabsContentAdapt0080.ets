/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
@Entry
@Component
struct UIComponentNavTabsContentAdapt0080 {
  private controller: TabsController = new TabsController()
  @State subTabBorderRadius: number = 10;

  build() {
    Column() {

      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        TabContent() {
          Column().width('100%').height(50).backgroundColor(Color.Pink).borderRadius(this.subTabBorderRadius)
        }.tabBar('pink')

        TabContent() {
          Column().width('100%').height(60).backgroundColor(Color.Yellow).borderRadius(this.subTabBorderRadius)
        }.tabBar('yellow')

        TabContent() {
          Column().width('100%').height(70).backgroundColor(Color.Blue).borderRadius(this.subTabBorderRadius)
        }.tabBar('blue')

        TabContent() {
          Column().width('100%').height(80).backgroundColor(Color.Green).borderRadius(this.subTabBorderRadius)
        }.tabBar('green')
      }
      .vertical(false)
      .scrollable(true)
      .barMode(BarMode.Scrollable)
      .barHeight(140)
      .animationDuration(400)
      .onChange((index: number) => {
        console.info(index.toString())
      })
      .backgroundColor(0xF5F5F5)
      .height('auto')

      Button('addBorderRadius').width('50%').margin({ top: 20 })
        .onClick(()=>{
          this.subTabBorderRadius = 20
        }).id('UIComponentNavTabsContentAdapt0080_001')

      Button('resetBorderRadius').width('50%').margin({ top: 20 })
        .onClick(()=>{
          this.subTabBorderRadius = 10
        }).id('UIComponentNavTabsContentAdapt0080_002')

    }.width('100%').height(250).padding({ top: '24vp', left: '24vp', right: '24vp' })
  }
}