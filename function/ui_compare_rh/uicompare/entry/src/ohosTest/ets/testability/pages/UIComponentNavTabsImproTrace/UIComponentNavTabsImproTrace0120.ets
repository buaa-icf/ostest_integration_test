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
struct UIComponentNavTabsImproTrace0120 {
  @State currentIndex: number = 0
  @State tabContentWidth: number = 60
  @State tabContentHeight: number = 60
  @State simpleList: Array<string> = ['1'];
  private controller: TabsController = new TabsController()

  @Builder
  tabBuilder(title: string, targetIndex: number) {
    Column() {
      Text(title)
    }.width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center);
  }

  build() {
    Row() {
      Column() {
        Tabs({ barPosition: BarPosition.End, controller: this.controller, index: this.currentIndex }) {
          ForEach(this.simpleList, (item: string) => {
            TabContent() {
              Column() {
                Text(`Content:${item}`)
              }
              .height(this.tabContentHeight)
              .width(this.tabContentWidth)
              .backgroundColor('#FF0000')
              .justifyContent(FlexAlign.Center)
            }.tabBar(this.tabBuilder(item, 1));
          }, (item: string) => item)
        }
        .vertical(false)
        .barMode(BarMode.Fixed)
        .barWidth(360)
        .barHeight(60)
        .animationDuration(0)
        .onChange((index: number) => {
          this.currentIndex = index
        })
        .width('auto')
        .height(200)
        .backgroundColor('#F1F3F5')
        .scrollable(true)

        Button('addTabContents').width('50%').margin({ top: 20 })
          .onClick(() => {
            for (let i = 2; i <= 10; i++) {
              this.simpleList.push(i.toString());
            }
          }).id('UIComponentNavTabsImproTrace0120_001');

        Button('增加宽和高').width('50%').margin({ top: 20 })
          .onClick(() => {
            this.tabContentHeight = this.tabContentHeight + 10;
            this.tabContentWidth = this.tabContentWidth + 10;
          }).id('UIComponentNavTabsImproTrace0120_002');

      }
      .width('100%')
      .height('100%');
    }
    .height('100%')
    .backgroundColor(0xF1F3F5);
  }
}