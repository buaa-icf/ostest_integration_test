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
struct ArkUITabsLabelStyleUnselectedColor025 {
  @State resourceColorPink: Resource = $r('app.color.Pink');
  @State resourceColorRed: Resource = $r('app.color.colorRed');
  @State labelUnselectedColor: Resource = $r('app.color.Pink');
  build() {
    Column({ space: 5 }) {
      Button('unselectedColor设置').width('50%')
        .onClick(() => {
          if(this.labelUnselectedColor == this.resourceColorPink) {
            console.info("this.labelUnselectedColor is pink")
            this.labelUnselectedColor = this.resourceColorRed;
          }
          else
          {
            console.info("this.labelUnselectedColor is red")
            this.labelUnselectedColor = this.resourceColorPink;
          }
        }).id('ArkUITabsLabelStyleUnselectedColor025_001');
      Column() {
        Tabs({ barPosition: BarPosition.Start }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(new SubTabBarStyle('Pink')
            .labelStyle({ unselectedColor: this.labelUnselectedColor, selectedColor: Color.Blue }));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Yellow)
          }.tabBar(new SubTabBarStyle('Yellow')
            .labelStyle({ unselectedColor: this.labelUnselectedColor, selectedColor: Color.Blue }));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(new SubTabBarStyle('Blue')
            .labelStyle({ unselectedColor: this.labelUnselectedColor, selectedColor: Color.Blue }));

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(new SubTabBarStyle('Green')
            .labelStyle({ unselectedColor: this.labelUnselectedColor, selectedColor: Color.Blue }));
        }
        .vertical(false)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .width('100%')
        .backgroundColor(0xF1F3F5);
      }.width('100%').height(200);

    }
  }
}