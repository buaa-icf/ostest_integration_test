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
struct UIComponentNavModifier0810 {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  @State selectedIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder tabBuilder(index: number) {
    Column() {
      Image(this.currentIndex === index ? $r("app.media.magnifier") : $r("app.media.tick"))
        .width(24)
        .height(24)
        .margin({ bottom: 4 })
        .objectFit(ImageFit.Contain)
      Text(`Tab${index + 1}`)
        .fontColor(this.selectedIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.width('100%')
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        TabContent() {
          Column() {
            Text('Tab1')
          }
        }.tabBar(this.tabBuilder(0)).backgroundColor(Color.Red)

        TabContent() {
          Column() {
            Text('Tab2')
          }
        }.tabBar(this.tabBuilder(1)).backgroundColor(Color.Green)

        TabContent() {
          Column() {
            Text('Tab3')
          }
        }.tabBar(this.tabBuilder(2)).backgroundColor(Color.Yellow)

        TabContent() {
          Column() {
            Text('Tab4')
          }
        }.tabBar(this.tabBuilder(3)).backgroundColor(Color.Green)
      }
      .vertical(false)
      .barHeight(250)
      .barWidth('100%')
      .width(360)
      .height(300)
      .backgroundColor('#F1F3F5')
      .margin({ top: 38 })
    }.width('100%')
  }
}