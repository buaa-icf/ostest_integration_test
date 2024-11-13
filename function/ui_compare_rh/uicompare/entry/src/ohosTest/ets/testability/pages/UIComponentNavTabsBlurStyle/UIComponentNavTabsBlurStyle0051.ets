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
struct UIComponentNavTabsBlurStyle0051 {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  @State blurStyle: BlurStyle = BlurStyle.BACKGROUND_THICK
  private controller: TabsController = new TabsController()

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Pink)
        }
        .tabBar(SubTabBarStyle.of('Pink')
          .selectedMode(SelectedMode.BOARD)
        )

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Yellow)
        }
        .tabBar(SubTabBarStyle.of('Yellow')
          .selectedMode(SelectedMode.BOARD)
        )

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }
        .tabBar(SubTabBarStyle.of('Blue')
          .selectedMode(SelectedMode.BOARD)
        )

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Green)
        }
        .tabBar(SubTabBarStyle.of('Green')
          .selectedMode(SelectedMode.BOARD)
        )

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }
        .tabBar(SubTabBarStyle.of('Blue')
          .selectedMode(SelectedMode.BOARD)
        )

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Red)
        }
        .tabBar(SubTabBarStyle.of('Red')
          .selectedMode(SelectedMode.BOARD)
        )
      }
      .barBackgroundBlurStyle(this.blurStyle)
      .backgroundColor(0xF5F5F5)
      .barOverlap(true)
      .barMode(BarMode.Fixed)
      .barWidth(50)
      .barPosition(BarPosition.End)
      .vertical(true)
      .width(360)
      .height(296)
    }.width('100%')
  }
}
