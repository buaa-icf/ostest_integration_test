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
struct UIComponentNavTabsImproTrace0160 {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State tarBarMode: BarMode = BarMode.Scrollable
  @State currentIndex: number = 0
  @State tarVertical: boolean = false
  @State direction1: Direction = Direction.Rtl
  @State gridMargin: number = 10
  @State gridGutter: number = 10
  @State sm: number = -2
  @State selectedIndex: number = 0
  @State selectedMode: SelectedMode = SelectedMode.INDICATOR;
  @State symmetricExtensible: boolean = false;
  @State layoutMode: LayoutMode = LayoutMode.VERTICAL;
  @State symbolModifier1: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ohos_wifi'));
  @State symbolModifier2: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ellipsis_bubble'));
  @State symbolModifier3: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.dot_video'));
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

  @Builder
  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column() {
            Text('Tab1')
              .fontSize(36)
              .fontColor('#182431')
              .fontWeight(500)
              .opacity(0.4)
              .margin({ top: 30, bottom: 56.5 })
            Divider()
              .strokeWidth(0.5)
              .color('#182431')
              .opacity(0.05)
          }.width('100%')
        }.tabBar(this.tabBuilder(0))

        TabContent() {
          Column() {
            Text('Tab2')
              .fontSize(36)
              .fontColor('#182431')
              .fontWeight(500)
              .opacity(0.4)
              .margin({ top: 30, bottom: 56.5 })
            Divider()
              .strokeWidth(0.5)
              .color('#182431')
              .opacity(0.05)
          }.width('100%')
        }.tabBar(this.tabBuilder(1))

        TabContent() {
          Column() {
            Text('Tab3')
              .fontSize(36)
              .fontColor('#182431')
              .fontWeight(500)
              .opacity(0.4)
              .margin({ top: 30, bottom: 56.5 })
            Divider()
              .strokeWidth(0.5)
              .color('#182431')
              .opacity(0.05)
          }.width('100%')
        }.tabBar(this.tabBuilder(2))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Pink)
        }.tabBar(new BottomTabBarStyle({normal: this.symbolModifier1,}, "3")
          .layoutMode(this.layoutMode)
          .symmetricExtensible(this.symmetricExtensible));

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Green)
        }.tabBar(new BottomTabBarStyle({normal: this.symbolModifier2,},  "4")
          .layoutMode(this.layoutMode)
          .symmetricExtensible(this.symmetricExtensible));

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }.tabBar(new BottomTabBarStyle({normal: this.symbolModifier3,},  "4")
          .layoutMode(this.layoutMode)
          .symmetricExtensible(this.symmetricExtensible));


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
      .vertical(this.tarVertical)
      .margin('10vp')
      .width('auto')
      .height(396)
      .fadingEdge(true)
      .barGridAlign({ sm: this.sm, margin: this.gridMargin, gutter: this.gridGutter })
      .direction(this.direction1);

      Button('index改变').width('50%')
        .onClick(() => {
          this.currentIndex++;
          if (this.currentIndex >= 6) {
            this.currentIndex = 0;
          }
        }).id('UIComponentNavTabsImproTrace0160_001');

      Button('方向改变').width('50%')
        .onClick(() => {
          this.tarVertical = !this.tarVertical
        }).id('UIComponentNavTabsImproTrace0160_002');

      Button('barMode改变').width('50%')
        .onClick(() => {
          if (this.tarBarMode == BarMode.Scrollable) {
            this.tarBarMode = BarMode.Fixed
          }
          else {
            this.tarBarMode = BarMode.Scrollable
          }
        }).id('UIComponentNavTabsImproTrace0160_003');
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
        }).id('UIComponentNavTabsImproTrace0160_004')

      Button('barGridAlign改变').width('50%')
        .onClick(()=>{
          this.gridMargin += 10
        }).id('UIComponentNavTabsImproTrace0160_005')

      Button('gridGutter改变').width('50%')
        .onClick(()=>{
          this.gridGutter += 10
        }).id('UIComponentNavTabsImproTrace0160_006')

      Button('sm改变').width('50%')
        .onClick(()=>{
          this.sm += 2;
          if(this.sm>=8)
          {
            this.sm = -2;
          }
        }).id('UIComponentNavTabsImproTrace0160_007')

      Button('symmetricExtensible改变').width('50%')
        .onClick(()=>{
          this.symmetricExtensible = !this.symmetricExtensible
        }).id('UIComponentNavTabsImproTrace0160_008')

      Button('layoutMode改变').width('50%')
        .onClick(()=>{
          if(this.layoutMode == LayoutMode.VERTICAL)
          {
            this.layoutMode = LayoutMode.HORIZONTAL;
          }
          else if(this.layoutMode == LayoutMode.HORIZONTAL)
          {
            this.layoutMode = LayoutMode.VERTICAL;
          }
        }).id('UIComponentNavTabsImproTrace0160_009')

    }.width('100%')
  }
}
