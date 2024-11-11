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
struct UIComponentNavTabsImproTrace0010 {
  @State currentIndex: number = 0;
  @State tabVertical: boolean = false;
  @State direction1: Direction = Direction.Rtl;
  @State simpleList: Array<string> = ['1'];
  private controller: TabsController = new TabsController();

  @Builder
  tabBuilder(title: string, targetIndex: number) {
    Column() {
      Text(title)
    }.width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center);
  }

  aboutToAppear(): void {
    for (let i = 2; i <= 10; i++) {
      this.simpleList.push(i.toString());
    }
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
              .height(100)
              .width(100)
              .backgroundColor('#FF0000')
              .justifyContent(FlexAlign.Center);
            }.tabBar(this.tabBuilder(item, 1));
          }, (item: string) => item)
        }
        .vertical(true)
        .barMode(BarMode.Fixed)
        .barWidth(60)
        .barHeight(360)
        .animationDuration(0)
        .onChange((index: number) => {
          this.currentIndex = index;
        })
        .width(200)
        .height('auto')
        .backgroundColor('#F1F3F5')
        .scrollable(true)
        .direction(this.direction1);
      }
      .width('100%')
      .height('100%');
    }
    .height('100%')
    .backgroundColor(0xF1F3F5);
  }
}