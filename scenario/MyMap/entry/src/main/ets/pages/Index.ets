/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { travel } from './map/travel';

@Entry
@Component
struct Index {
  @State tabsIndex: number = 0

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        travel()
      }.tabBar(this.TabBarBuilder(0, $r('app.media.icon_blue_fMyMap'), $r('app.media.ic_gray_fMyMap'), $r('app.string.travel')))

      TabContent() {
        travel()
      }.tabBar(this.TabBarBuilder(1, $r('app.media.icon_blue_fMyMap'), $r('app.media.ic_gray_fMyMap'), $r('app.string.surrounding')))

      TabContent() {
        travel()
      }.tabBar(this.TabBarBuilder(2, $r('app.media.icon_blue_fMyMap'), $r('app.media.ic_gray_fMyMap'), $r('app.string.public_transport')))

      TabContent() {
        travel()
      }.tabBar(this.TabBarBuilder(3, $r('app.media.icon_blue_fMyMap'), $r('app.media.ic_gray_fMyMap'), $r('app.string.taxi')))

      TabContent() {
        travel()
      }.tabBar(this.TabBarBuilder(4, $r('app.media.icon_blue_fMyMap'), $r('app.media.ic_gray_fMyMap'), $r('app.string.personal')))
    }
    .barHeight(56)
    .barWidth('100%')
    .vertical(false)
    .backgroundColor($r('app.color.background_shallow_grey'))
    .onChange((index: number) => {
      this.tabsIndex = index
    })
  }

  @Builder TabBarBuilder(index: number, selectedImage: Resource, unselectedImage: Resource, tabBarName: Resource) {
    Column() {
      Image(this.tabsIndex === index ? selectedImage : unselectedImage)
        .width(24)
        .height(24)
        .margin({ bottom: 4 })

      Text(tabBarName)
        .fontSize(10)
        .fontFamily('HarmonyHeiTi-Medium')
        .fontColor(this.tabsIndex === index ? $r('app.color.tab_bar_select') : $r('app.color.tab_bar_unselect'))
    }
    .width('100%')
    .padding({ left: 2, right: 2, top: 6, bottom: 6 })
    .alignItems(HorizontalAlign.Center)
    .id(`tabBar${index}`)
  }
}
