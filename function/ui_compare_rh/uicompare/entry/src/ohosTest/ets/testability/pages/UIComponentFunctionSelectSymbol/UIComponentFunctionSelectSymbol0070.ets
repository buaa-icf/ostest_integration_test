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
import { SymbolGlyphModifier } from '@kit.ArkUI';

@Entry
@Component
struct UIComponentFunctionSelectSymbol0070 {
  @State symbolModifier: SymbolGlyphModifier | null = null
  @State resource: ResourceStr | null = null

  build() {
    Row() {
      Column() {
        Button('070_symbolicon_icon')
          .onClick(() => {
            this.symbolModifier = new SymbolGlyphModifier($r('sys.symbol.exposure'))
              .fontSize(getContext().resourceManager.getNumber($r("app.integer.50")))
              .fontColor([getContext().resourceManager.getColorSync($r("app.color.txt_color"))])
            this.resource = $r('app.media.icon')
          })
          .id('UIComponentFunctionSelectSymbol0070_001')
        Select([{ value: 'aaa', icon: this.resource, symbolIcon: this.symbolModifier }])
          .id('UIComponentFunctionSelectSymbol0070_002')
      }
      .width('100%')
      .height('100%')
    }
  }
}