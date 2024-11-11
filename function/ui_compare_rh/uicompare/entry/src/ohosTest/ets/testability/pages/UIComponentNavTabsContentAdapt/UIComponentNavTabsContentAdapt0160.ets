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
@Entry
@Component
struct UIComponentNavTabsContentadapt0160 {
  @State currentIndex: number = 0;
  @State blurStyle: BlurStyle = BlurStyle.BACKGROUND_THICK;
  @State barWidth: number = 200;
  private controller: TabsController = new TabsController();

  build() {
    Column() {
      Button('change barWidth')
        .id('UIComponentNavTabsContentadapt0160_001')
        .onClick(() => {
          this.barWidth += 50;
        })
      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Pink)
        }.tabBar(SubTabBarStyle.of('Pink'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Green)
        }.tabBar(SubTabBarStyle.of('Green'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }.tabBar(SubTabBarStyle.of('Blue'))
      }
      .backgroundColor(Color.Green)
      .barBackgroundBlurStyle(BlurStyle.BACKGROUND_REGULAR)
      .height('auto')
      .barWidth(this.barWidth)
    }.width('100%')
  }
}