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
struct UIComponentNavTabsContentAdapt0210 {
  @State barHeight: number = 100;

  build() {
    Column({ space: 5 }) {
      Text("底部页签样式")
      Column() {
        Tabs({ barPosition: BarPosition.Start }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Pink'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Yellow)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Yellow'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Blue'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Green'));
        }
        .vertical(false)
        .scrollable(true)
        .barHeight(this.barHeight)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString());
        })
        .width('100%')
        .height('auto')
        .backgroundColor(0xF1F3F5);
        Button('高度改变').width('50%')
          .onClick(() => {
            this.barHeight += 50;
            if (this.barHeight >= 200) {
              this.barHeight = 100;
            }
          }).id('UIComponentNavTabsContentAdapt0210_001');

      }.width('100%').height(200)

    }
  }
}