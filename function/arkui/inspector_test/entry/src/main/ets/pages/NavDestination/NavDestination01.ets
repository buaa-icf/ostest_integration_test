/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import { SymbolGlyphModifier } from '@kit.ArkUI';
import router from '@ohos.router'
@Entry
@Component
struct navigation01 {
  @State hideTitleBar: boolean = true
  @State hideToolBar: boolean = false
  @State menuItems: Array<NavigationMenuItem> = [
    {
      value: 'menuItem1',
      icon: 'resources/base/media/ic_public_ok.svg'
    },
    {
      value: 'menuItem2',
      icon: 'resources/base/media/ic_public_ok.svg',
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_folder_badge_plus')).fontColor([Color.Red, Color.Green])
        .renderingStrategy(SymbolRenderingStrategy.MULTIPLE_COLOR),
    },
    {
      value: 'menuItem3',
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_lungs')),
    },
  ]
  @State toolItems: Array<ToolbarItem> = [
    {
      value: 'toolItem1',
      icon: 'resources/base/media/ic_public_ok.svg', // 图标资源路径
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_lungs')),
      status: ToolbarItemStatus.ACTIVE,
      activeSymbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_folder_badge_plus')).fontColor([Color.Red,
        Color.Green]).renderingStrategy(SymbolRenderingStrategy.MULTIPLE_COLOR),
      action: () => {
      }
    },
    {
      value: 'toolItem2',
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_star')),
      status: ToolbarItemStatus.ACTIVE,
      activeIcon: 'resources/base/media/ic_public_more.svg', // 图标资源路径
      action: () => {
      }
    },
    {
      value: 'toolItem3',
      symbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_star')),
      status: ToolbarItemStatus.ACTIVE,
      activeSymbolIcon: new SymbolGlyphModifier($r('sys.symbol.ohos_lungs')),
      action: () => {
      }
    }
  ]
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['qzq_NavDestination_id', ''],
    ['', 'qzq_NavDestination_key'],
    ['qzq_NavDestination_id', 'qzq_NavDestination_key'],
  ];
  private arr01: number[] = [1, 2, 3]

  build() {
    Scroll() {
    Column() {
      Text("NavDestination")
        .fontSize(18)
        Navigation() {
          TextInput({ placeholder: "请搜索" })
            .width("90%")
            .height(40)
            .backgroundColor('#FFFFFF')
          List({ space: 12 }) {
            ForEach(this.idOrKeyArray, (item: Array<string>) => {
              ListItem() {
                NavRouter() {
                  Text("NavRouter" + item)
                    .width("100%")
                    .height(70)
                    .backgroundColor('#FFFFFF')
                    .borderRadius(24)
                    .fontSize(16)
                    .fontWeight(300)
                    .textAlign(TextAlign.Center)
                  NavDestination() {
                    Text("内容页内容" + item)
                    Button("change hideTitleBar")
                      .onClick(() => {
                        this.hideTitleBar = !this.hideTitleBar
                      })
                  }
                  .id(item[0])
                  .key(item[1])
                  .hideTitleBar(this.hideTitleBar)
                  .mode(NavDestinationMode.STANDARD)
                  .backButtonIcon($r('app.media.foreground'))
                  .title({ main: "内容页主标题" + item, sub: "内容页主标题" + item })
                  .onShown(() => {
                    console.info('onShown')
                  })
                  .onHidden(() => {
                    console.info('onHidden')
                  })
                }
              }
            })
          }
          .width("90%")
          .margin({ top: 12 })
        }
        .title("主标题")
        .mode(NavigationMode.Stack)
        .titleMode(NavigationTitleMode.Full)
        .hideToolBar(this.hideToolBar)
        .hideTitleBar(this.hideTitleBar)
        .menus(this.menuItems)
        .toolbarConfiguration(this.toolItems)

        Button("change hideToolBar")
          .onClick(() => {
            this.hideToolBar = !this.hideToolBar
          })
        Button("change hideTitleBar")
          .onClick(() => {
            this.hideTitleBar = !this.hideTitleBar
          })
      }
    }
  }
}

