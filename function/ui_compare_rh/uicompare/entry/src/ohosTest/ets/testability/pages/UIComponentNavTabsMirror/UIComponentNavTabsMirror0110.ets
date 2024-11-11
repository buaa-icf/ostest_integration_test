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
import { SymbolGlyphModifier } from '@kit.ArkUI'
@Entry
@Component
struct UIComponentNavTabsMirror0110 {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State tarBarMode: BarMode = BarMode.Scrollable
  @State currentIndex: number = 0
  @State tarVertical: boolean = false
  @State direction1: Direction = Direction.Rtl
  @State selectedIndex: number = 0
  @State selectedMode: SelectedMode = SelectedMode.INDICATOR;
  private controller: TabsController = new TabsController()

  @Builder
  build() {
    Column() {
      Button('镜像改变').width('50%')
        .onClick(()=>{
          if(this.direction1 == Direction.Ltr)
          {
            this.direction1 = Direction.Rtl
          }
          else if(this.direction1 == Direction.Rtl)
          {
            this.direction1 = Direction.Ltr
          }
        }).id('UIComponentNavTabsMirror0110_001')

      Tabs({ barPosition: BarPosition.End, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Pink)
        }.tabBar(new SubTabBarStyle('Pink')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Pink })
          .selectedMode(this.selectedMode));

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Yellow)
        }.tabBar(new SubTabBarStyle('Yellow')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Yellow })
          .selectedMode(this.selectedMode));

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }.tabBar(new SubTabBarStyle('Blue')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Blue })
          .selectedMode(this.selectedMode));

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Green)
        }.tabBar(new SubTabBarStyle('Green')
          .labelStyle({ unselectedColor: Color.Black, selectedColor: Color.Green })
          .selectedMode(this.selectedMode));
      }
      .divider({
        strokeWidth: 1,
        color: Color.Red,
      })
      .backgroundColor(0xF5F5F5)
      .barOverlap(true)
      .barMode(this.tarBarMode)
      .barWidth(200)
      .barHeight(200)
      .vertical(true)
      .margin('10vp')
      .width('auto')
      .height(396)
      .fadingEdge(true)
      .direction(this.direction1);

    }.width('100%')
  }
}
