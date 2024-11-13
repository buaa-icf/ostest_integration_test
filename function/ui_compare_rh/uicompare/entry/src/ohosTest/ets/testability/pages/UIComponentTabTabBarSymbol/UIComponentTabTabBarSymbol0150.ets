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
struct UIComponentTabTabBarSymbol0150 {
  @State symbolModifier1: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ohos_wifi')).fontColor([Color.Red])
    .renderingStrategy(SymbolRenderingStrategy.SINGLE);
  @State flag: boolean = false;

  build() {
    Column({ space: 5 }) {
      Text("底部页签样式")
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor('#66000000')
          }.tabBar(new BottomTabBarStyle(this.flag ? $r("app.media.magnifier"):{
            normal: (this.symbolModifier1),
          }, 'Pink'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor('#66000000')
          }.tabBar(new BottomTabBarStyle(this.flag ? $r("app.media.magnifier"):{
            normal: (this.symbolModifier1),
          }, 'Orange'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor('#66000000')
          }.tabBar(new BottomTabBarStyle(this.flag ? $r("app.media.magnifier"):{
            normal: (this.symbolModifier1),
          }, 'Blue'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor('#66000000')
          }.tabBar(new BottomTabBarStyle(this.flag ? $r("app.media.magnifier"):{
            normal: (this.symbolModifier1),
          }, 'Green'));
        }
        .vertical(false)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .width('100%')
        .backgroundColor(0xF1F3F5);

      }.width('100%').height(200)
    }
  }
}