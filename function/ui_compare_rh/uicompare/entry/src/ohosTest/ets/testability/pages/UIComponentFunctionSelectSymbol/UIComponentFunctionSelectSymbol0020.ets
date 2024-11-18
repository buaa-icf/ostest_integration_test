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

import { MenuItemModifier, SymbolGlyphModifier } from '@kit.ArkUI'

class MyMenuItemContentModifier implements ContentModifier<MenuItemConfiguration> {
  applyContent(): WrappedBuilder<[MenuItemConfiguration]> {
    return wrapBuilder(MenuItemBuilder)
  }
}

@Builder
function MenuItemBuilder(configuration: MenuItemConfiguration) {
  Row() {
    Text(configuration.value)
    Blank(100)
    SymbolGlyph().attributeModifier(configuration.symbolIcon)
  }
}

@Entry
@Component
struct UIComponentFunctionSelectSymbol0020 {
  @State beChange: boolean = false
  @State symbolModifier1: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ohos_star'))
    .fontColor([Color.Blue])
    .fontSize(50)
  @State symbolModifier2: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ohos_wifi'))
    .fontColor([Color.Red])
    .fontSize(100)
  @State symbolModifier: SymbolGlyphModifier = this.symbolModifier1

  build() {
    Row() {
      Column() {
        Button('020_动态切换')
          .onClick(() => {
            this.beChange = !this.beChange
          })
          .id('UIComponentFunctionSelectSymbol0020_001')
        if (this.beChange) {
          Button('symbolicon++、symbilicon样式++')
            .onClick(() => {
              this.symbolModifier = this.symbolModifier === this.symbolModifier1 ?
              this.symbolModifier2 : this.symbolModifier1
            })
            .id('UIComponentFunctionSelectSymbol0020_002')
          Select([{ value: 'aaa', symbolIcon: this.symbolModifier }])
            .menuItemContentModifier(new MyMenuItemContentModifier())
            .id('UIComponentFunctionSelectSymbol0020_003')
        }
      }
      .width('100%')
      .height('100%')
    }
  }
}
