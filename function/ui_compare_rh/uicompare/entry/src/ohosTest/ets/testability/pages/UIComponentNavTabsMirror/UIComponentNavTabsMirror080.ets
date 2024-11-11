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
struct UIComponentNavTabsMirror080 {
  private controller1: TabsController = new TabsController()
  @State dividerColor: string = 'blue'
  @State strokeWidth: number = -10
  @State strokeWidthDefaultValue: number = 2
  @State startMargin: number = 0
  @State endMargin: number = 0
  @State nullFlag: boolean = false
  @State direction1: Direction = Direction.Ltr
  aboutToAppear(): void {
    this.strokeWidth = (this.strokeWidth < 0? this.strokeWidthDefaultValue : this.strokeWidth)
  }
  build() {
    Column() {
      Tabs({ controller: this.controller1 }) {
        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Pink)
        }.tabBar('pink')

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Yellow)
        }.tabBar('yellow')

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }.tabBar('blue')

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Green)
        }.tabBar('green')

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Red)
        }.tabBar('red')
      }
      .vertical(true)
      .direction(this.direction1)
      .scrollable(true)
      .barMode(BarMode.Fixed)
      .barWidth(70)
      .barHeight(200)
      .animationDuration(400)
      .onChange((index: number) => {
        console.info(index.toString())
      })
      .height('200vp')
      .margin({ bottom: '12vp' })
      .divider(this.nullFlag ? null : {
        strokeWidth: this.strokeWidth,
        color: this.dividerColor,
        startMargin: this.startMargin,
        endMargin: this.endMargin
      })
      Button('上边距增加').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          this.startMargin += 2
        }).id('UIComponentNavTabsMirror080_001')

      Button('上边距减少').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          if (this.startMargin > 2) {
            this.startMargin -= 2
          }
        }).id('UIComponentNavTabsMirror080_002')

      Button('下边距增加').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          this.endMargin += 2
        }).id('UIComponentNavTabsMirror080_003')
      Button('下边距减少').width('100%').margin({ bottom: '12vp' })
        .onClick(() => {
          if (this.endMargin > 2) {
            this.endMargin -= 2
          }
        }).id('UIComponentNavTabsMirror080_004')

      Button('方向改变').width('50%').margin({ top: 20 })
        .onClick(()=>{
          if(this.direction1 == Direction.Ltr)
          {
            this.direction1 = Direction.Rtl
          }
          else if(this.direction1 == Direction.Rtl)
          {
            this.direction1 = Direction.Ltr
          }
        }).id('UIComponentNavTabsMirror080_005')


    }.padding({ top: '24vp', left: '24vp', right: '24vp' })
  }
}