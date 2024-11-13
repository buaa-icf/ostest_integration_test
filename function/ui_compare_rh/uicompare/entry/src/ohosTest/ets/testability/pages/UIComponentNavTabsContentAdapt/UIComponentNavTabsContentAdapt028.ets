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
struct UIComponentNavTabsContentAdapt028 {
  private controller1: TabsController = new TabsController()
  @State dividerColor: string = 'blue'
  @State startMargin: number = 0
  @State endMargin: number = 0
  @State nullFlag: boolean = false

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, controller: this.controller1 }) {
        TabContent() {
          Column().width('100%').height(50).backgroundColor(Color.Pink)
        }.tabBar('pink')

        TabContent() {
          Column().width('100%').height(70).backgroundColor(Color.Yellow)
        }.tabBar('yellow')

        TabContent() {
          Column().width('100%').height(80).backgroundColor(Color.Blue)
        }.tabBar('blue')

        TabContent() {
          Column().width('100%').height(100).backgroundColor(Color.Green)
        }.tabBar('green')

      }
      .vertical(false)
      .direction(Direction.Ltr)
      .scrollable(true)
      .barMode(BarMode.Fixed)
      .barWidth('auto')
      .barHeight('auto')
      .animationDuration(400)
      .onChange((index: number) => {
        console.info(index.toString())
      })
      .height('auto')
      .margin({ bottom: '12vp' })
      .divider(this.nullFlag ? null : {
        strokeWidth: 2,
        color: this.dividerColor,
        startMargin: this.startMargin,
        endMargin: this.endMargin
      })
      Button('上边距增加').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          this.startMargin += 2
        }).id('UIComponentNavTabsContentAdapt028_001')

      Button('上边距减少').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          if (this.startMargin > 2) {
            this.startMargin -= 2
          }
        }).id('UIComponentNavTabsContentAdapt028_002')

      Button('下边距增加').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          this.endMargin += 2
        }).id('UIComponentNavTabsContentAdapt028_003')

      Button('下边距减少').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          if (this.endMargin > 2) {
            this.endMargin -= 2
          }
        }).id('UIComponentNavTabsContentAdapt028_004')

      Button('颜色变为红色').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          this.dividerColor = 'red'
        }).id('UIComponentNavTabsContentAdapt028_005')


    }.padding({ top: '24vp', left: '24vp', right: '24vp' })
  }
}