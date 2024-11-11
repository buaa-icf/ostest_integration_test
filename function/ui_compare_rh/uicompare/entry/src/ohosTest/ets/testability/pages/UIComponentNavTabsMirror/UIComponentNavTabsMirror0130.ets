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
struct UIComponentNavTabsMirror0130 {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  @State selectedIndex: number = 0
  @State direction1: Direction = Direction.Rtl;
  private controller: TabsController = new TabsController()

  @Builder
  tabBuilder(index: number) {
    Column() {
      Text(`Tab${index}`)
        .fontColor(this.selectedIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(20)
        .fontWeight(500)
        .lineHeight(200)
    }.width('100%')
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        TabContent() {
          Column() {
            Text('TabContent0')
          }.width('100%')
        }
        .tabBar(this.tabBuilder(0))

        TabContent() {
          Column() {
            Text('TabContent1')
          }.width('100%')
        }
        .tabBar(this.tabBuilder(1))

        TabContent() {
          Column() {
            Text('TabContent2')
          }.width('100%')
        }
        .tabBar(this.tabBuilder(2))

        TabContent() {
          Column() {
            Text('TabContent3')
          }.width('100%')
        }
        .tabBar(this.tabBuilder(3))
      }
      .vertical(true)
      .barWidth(200)
      .barHeight(200)
      .barMode(BarMode.Scrollable)
      .scrollable(true)
      .direction(this.direction1)
      .width(400)
      .height(200)
      .backgroundColor('#F1F3F5')
      .margin({ top: 52 });

      Button('镜像改变').width('50%')
        .onClick(() => {
          if (this.direction1 == Direction.Ltr) {
            this.direction1 = Direction.Rtl;
          }
          else if (this.direction1 == Direction.Rtl) {
            this.direction1 = Direction.Ltr;
          }
        }).id('UIComponentNavTabsMirror0130_001');

    }.width('100%')
  }
}