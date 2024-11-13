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
struct ArkUITabsIconStyleUnselectedColor016 {
  @State currentIndex: number = 0;
  @State blurStyle: BlurStyle = BlurStyle.BACKGROUND_THICK;
  private controller: TabsController = new TabsController();

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column().width(500).height('100%').backgroundColor(Color.Pink)
        }
        .tabBar(new BottomTabBarStyle($r('sys.media.ohos_ic_public_text'), 'Pink')
          .iconStyle({ unselectedColor: 0xffc0cb })
        )

        TabContent() {
          Column().width(500).height('100%').backgroundColor(Color.Black)
        }
        .tabBar(new BottomTabBarStyle($r('sys.media.ohos_ic_public_text'), 'Black')
          .iconStyle({ unselectedColor: 0xffc0cb })
        )

      }
      .backgroundColor(Color.Green)
      .barBackgroundBlurStyle(BlurStyle.BACKGROUND_REGULAR)
      .height('50%')
    }.width('100%')
  }
}