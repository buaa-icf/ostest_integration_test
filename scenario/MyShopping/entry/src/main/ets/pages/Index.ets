/*
 * Copyright (c) 2023-2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { Home } from './components/homeTab/Home';
import matrix4 from '@ohos.matrix4'

@Entry
@Component
struct Index {
  @State tabsIndex: number = 0
  private homeTab: Array<Array<Resource>> = [
    [$r('app.media.ic_tabbar_home'), $r('app.media.ic_tabbar_home'), $r('app.string.tabbar_home')],
    [$r('app.media.ic_web'), $r('app.media.ic_web'), $r('app.string.tabbar_guang')],
    [$r('app.media.ic_select_component'), $r('app.media.ic_select_component'), $r('app.string.tabbar_new')],
    [$r('app.media.ic_select_universal'), $r('app.media.ic_select_universal'), $r('app.string.tabbar_cart')],
    [$r('app.media.ic_user'), $r('app.media.ic_user'), $r('app.string.tabbar_mine')]
  ]

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End }) {
        ForEach(this.homeTab, (item: Array<Resource>, index: number) => {
          TabContent() {
            Home({ title: $r('app.string.tabbar_home') })
          }.tabBar(this.TabBarBuilder(index, item[0], item[1], item[2]))
        }, (item: string) => item)
      }
      .barHeight(56)
      .barWidth('100%')
      .vertical(false)
      .backgroundColor($r('app.color.background_shallow_grey'))
      .onChange((index: number) => {
        this.tabsIndex = index
      })
    }
  }

  @Builder
  TabBarBuilder(index: number, selectedImage: Resource, unselectedImage: Resource, tabBarName: Resource) {
    Column() {
      if (this.tabsIndex === index) {
        Image(selectedImage)
          .width(24)
          .height(24)
          .transform(matrix4.identity()
            .scale({
              x: 1.5,
              y: 1.5
            }))
          .margin({ bottom: 4 })
      } else {
        Image(unselectedImage)
          .width(24)
          .height(24)
          .margin({ bottom: 4 })
      }

      Text(tabBarName)
        .fontSize(10)
        .fontFamily('HarmonyHeiTi-Medium')
        .fontColor($r('app.color.tab_bar_unselect'))
    }
    .width('100%')
    .padding({ top: 6, bottom: 6 })
    .alignItems(HorizontalAlign.Center)
    .id(`tabBar${index}`)
  }
}