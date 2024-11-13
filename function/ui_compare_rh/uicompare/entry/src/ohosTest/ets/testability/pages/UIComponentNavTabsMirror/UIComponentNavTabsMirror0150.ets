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
struct UIComponentNavTabsMirror0150 {
  @State direction1: Direction = Direction.Rtl;
  @State tabPadding: number = 0;

  build() {
    Column({ space: 5 }) {

      Text("侧边页签样式")
      Column({ space: 5 }) {
        Tabs({ barPosition: BarPosition.Start }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Pink').padding(this.tabPadding));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Yellow)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Yellow').padding(this.tabPadding));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Blue').padding(this.tabPadding));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Green').padding(this.tabPadding));
        }
        .vertical(true)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .width('100%')
        .direction(this.direction1)
        .backgroundColor(0xF1F3F5);

        Button('镜像改变').width('50%')
          .onClick(() => {
            if (this.direction1 == Direction.Ltr) {
              this.direction1 = Direction.Rtl;
            }
            else if (this.direction1 == Direction.Rtl) {
              this.direction1 = Direction.Ltr;
            }
          }).id('UIComponentNavTabsMirror0150_001');

        Button('padding改变').width('50%')
          .onClick(() => {
            this.tabPadding = this.tabPadding+5;
          }).id('UIComponentNavTabsMirror0150_002');
      }.width('100%').height(400);
    }
  }
}