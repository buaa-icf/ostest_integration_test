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
struct UIComponentNavTabsImproTrace0020 {
  @State fontColor: string = '#182431';
  @State selectedFontColor: string = '#007DFF';
  @State currentIndex: number = 0;
  @State selectedIndex: number = 0;
  @State simpleList: Array<number> = [1];
  private controller: TabsController = new TabsController();

  @Builder
  tabBuilder(index: number) {
    Column() {
      Image(this.selectedIndex === index ? $r("app.media.magnifier") : $r("app.media.tick"))
        .width(24)
        .height(24)
        .margin({ bottom: 4 })
        .objectFit(ImageFit.Contain)
      Text(`Tab${index}`)
        .fontColor(this.selectedIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.width('100%')
  }

  build() {
    Column() {
      Button('addTabContents').width('50%').margin({ top: 20 })
        .onClick(() => {
          for (let i = 2; i <= 5; i++) {
            this.simpleList.push(i);
          }
        }).id('UIComponentNavTabsImproTrace0020_001');
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        ForEach(this.simpleList, (item: number) => {
          TabContent() {
            Column() {
              Text(`Content:${item}`)
            }
            .height(200)
            .width(200)
            .backgroundColor('#FF0000')
            .justifyContent(FlexAlign.Center);
          }.tabBar(this.tabBuilder(item));

        }, (item: string) => item);
      }
      .vertical(false)
      .barHeight(56)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .onAnimationStart((index: number, targetIndex: number, event: TabsAnimationEvent) => {
        if (index === targetIndex) {
          return
        }
        this.selectedIndex = targetIndex + 1
      })
      .width(360)
      .height(190)
      .backgroundColor('#F1F3F5')
      .margin({ top: 38 });
    }.width('100%')
  }
}