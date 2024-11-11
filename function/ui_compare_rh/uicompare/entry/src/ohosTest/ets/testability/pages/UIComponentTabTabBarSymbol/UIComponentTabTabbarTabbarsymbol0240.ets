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
import { SymbolGlyphModifier } from '@ohos.arkui.modifier'

@Entry
@Component
struct UIComponentTabTabbarTabbarsymbol0240 {
  @State currentIndex: number = 0
  @State blurStyle: BlurStyle = BlurStyle.BACKGROUND_THICK
  private controller: TabsController = new TabsController()
  @State symbolModifier: SymbolGlyphModifier = new SymbolGlyphModifier($r('app.media.icon'))

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column().width(500).height('100%').backgroundColor(Color.Black)
        }
        .tabBar(new BottomTabBarStyle({
          normal: this.symbolModifier
        }, 'Black'))

        TabContent() {
          Column().width(500).height('100%').backgroundColor(Color.Pink)
        }
        .tabBar(new BottomTabBarStyle({
          normal: this.symbolModifier
        }, 'Pink'))

      }
      .barBackgroundBlurStyle(BlurStyle.BACKGROUND_REGULAR)
      .barOverlap(true)
      .barGridAlign(
        {
          lg:10
        }
      )
      .height(296)
    }.width('100%')
  }
}