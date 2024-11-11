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
struct UIComponentNavTabsAction0011 {
  @State height1: number = 200;
  @State width1: number = 200;
  build() {
    Column({ space: 5 }) {

      Text("底部页签样式")
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Pink').id('Pink'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Yellow)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Yellow').id('Yellow'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Blue').id('Blue'));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), 'Green').id('Green'));
        }
        .vertical(false)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .id('UIComponentNavTabsAction0011_001')
        .width(this.width1)
        .height(this.height1)
        .backgroundColor(0xF1F3F5);

        Button('增加宽高').width('50%').margin({ top: 20 })
          .onClick(() => {
            if(this.height1 == 200)
            {
              this.height1 = 250
            }
            else
            {
              this.height1 = 200
            }
            if(this.width1 == 200)
            {
              this.width1 = 250
            }
            else
            {
              this.width1 = 200
            }
          }).id('UIComponentNavTabsAction0011_002');
      }.width('100%').height(200)

    }
  }
}