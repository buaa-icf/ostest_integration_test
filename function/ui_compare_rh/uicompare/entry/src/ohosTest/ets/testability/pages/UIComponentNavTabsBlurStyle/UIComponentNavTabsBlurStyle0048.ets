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
struct UIComponentNavTabsBlurStyle0048 {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  @State blurStyle: BlurStyle = BlurStyle.NONE
  @State selectedMode: SelectedMode = SelectedMode.INDICATOR;
  private controller: TabsController = new TabsController()

  @Builder

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Pink)
        }.tabBar(new SubTabBarStyle('Pink')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Pink })
          .selectedMode(this.selectedMode))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Yellow)
        }.tabBar(new SubTabBarStyle('Yellow')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Yellow })
          .selectedMode(this.selectedMode))
        .backgroundBlurStyle(this.blurStyle)

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }.tabBar(new SubTabBarStyle('Blue')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Blue })
          .selectedMode(this.selectedMode))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Green)
        }.tabBar(new SubTabBarStyle('Green')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Green })
          .selectedMode(this.selectedMode))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Yellow)
        }.tabBar(new SubTabBarStyle('Red')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Red })
          .selectedMode(this.selectedMode))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }.tabBar(new SubTabBarStyle('Blue')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Blue })
          .selectedMode(this.selectedMode))
      }
      .divider({
        strokeWidth: 2,
        color: Color.Red,
      })
      .barBackgroundBlurStyle(this.blurStyle)
      .backgroundColor(0xF5F5F5)
      .barOverlap(true)
      .barMode(BarMode.Scrollable)
      .barWidth(100)
      .padding('10vp')
      .barPosition(BarPosition.End)
      .vertical(true)
      .width(360)
      .height(196)
      .fadingEdge(true)
      Button('打开模糊').width('50%')
        .onClick(()=>{
          this.blurStyle = BlurStyle.COMPONENT_ULTRA_THICK
        }).id('UIComponentNavTabsBlurStyle0048_001')
      Button('关闭模糊').width('50%')
        .onClick(()=>{
          this.blurStyle = BlurStyle.NONE
        }).id('UIComponentNavTabsBlurStyle0048_002')

    }.width('100%')
  }
}
