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
struct UIComponentTabTabBarSymbol0040 {
  @State symbolModifier1: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ohos_wifi'));
  @State symbolModifier2: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ellipsis_bubble'));
  @State symbolModifier3: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.dot_video'));
  @State symbolModifier4: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.exposure'));
  @State normalIcocn: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.media.ohos_app_icon'));

  build() {
    Column({ space: 5 }) {
      Text("底部页签样式")
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(new BottomTabBarStyle({
            normal: this.normalIcocn,
            selected: this.symbolModifier1
          }, 'Pink').id('Pink'))
          .onWillShow(() => {
            console.info("Pink will show")
          })
          .onWillHide(() => {
            console.info("Pink will hide")
          })

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Orange)
          }.tabBar(new BottomTabBarStyle({
            normal: this.normalIcocn,
            selected: this.symbolModifier2
          }, 'Orange').id('Orange'))
          .onWillShow(() => {
            console.info("Orange will show")
          })
          .onWillHide(() => {
            console.info("Orange will hide")
          })

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(new BottomTabBarStyle({
            normal: this.normalIcocn,
            selected: this.symbolModifier3
          }, 'Blue').id('Blue'))
          .onWillShow(() => {
            console.info("Blue will show")
          })
          .onWillHide(() => {
            console.info("Blue will hide")
          })

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(new BottomTabBarStyle({
            normal: this.normalIcocn,
            selected: this.symbolModifier4
          }, 'Green').id('Green'))
          .onWillShow(() => {
            console.info("Green will show")
          })
          .onWillHide(() => {
            console.info("Green will hide")
          })
        }
        .vertical(false)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .width('100%')
        .backgroundColor(0xF1F3F5)
      }.width('100%').height(200)
    }
  }
}