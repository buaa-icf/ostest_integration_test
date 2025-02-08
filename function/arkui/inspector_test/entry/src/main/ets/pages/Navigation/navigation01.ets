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
import { page1 } from './page1'
import { page2 } from './page2'
import { SymbolGlyphModifier } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['qzq_Navigation_id', ''],
    ['', 'qzq_Navigation_key'],
    ['qzq_Navigation_id', 'qzq_Navigation_key'],
  ];
  @State menuItems: Array<NavigationMenuItem> = [
    {
      value: 'menuItem1',
      icon: 'resources/base/media/ic_public_o k.svg'
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
  private toolbaritems: ToolbarItem[] = [
    {
      value: '工具1',
      icon: $r('app.media.startIcon'),
      action: () => {
      }
    },
    {
      value: '工具2',
      icon: $r('app.media.startIcon'),
      action: () => {
      }
    },
    {
      value: '工具3',
      icon: $r('app.media.startIcon'),
      action: () => {
      }
    },
    {
      value: '工具4',
      icon: $r('app.media.startIcon'),
      action: () => {
      }
    }
  ]
  // 页面路由栈
  @Provide('pathstack') pathstack: NavPathStack = new NavPathStack()
  // 内容页
  @Builder
  pagemap(pagename: string) {
    if (pagename == 'page1') {
      page1()
    } else if (pagename == 'page2') {
      page2()
    }
  }

  build() {
    Column() {
      Text("Navigation")
        .fontSize(18)
      List({ space: 30 }) {
        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          ListItem() {
            Navigation(this.pathstack) {
              Column({ space: 20 }) {
                Text('page1')
                  .fontSize(28)
                  .padding(10)
                  .border({ width: 2, color: Color.Black })
                  .onClick(() => {
                    this.pathstack.pushPath({ name: 'page1' })
                  })
                  .width('100%')
                Text('page2')
                  .fontSize(28)
                  .padding(10)
                  .border({ width: 2, color: Color.Black })
                  .onClick(() => {
                    this.pathstack.pushPath({ name: 'page2' })
                  })
                  .width('100%')
              }.width('100%')
              .height('100%')
              .backgroundColor(Color.Gray)
            }
            .id(item[0])
            .key(item[1])
            .title('主标题')
            .menus(this.menuItems)
            .toolbarConfiguration(this.toolbaritems)
            .navDestination(this.pagemap)
          }
        })
      }
    }
  }
}
