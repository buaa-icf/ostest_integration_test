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
struct UIComponentNavTabsInterception0150 {
  @State simpleList: Array<string> = ['one', 'two', 'three', 'four', 'five'];

  build() {
    Row() {
      Column() {
        Tabs({ barPosition: BarPosition.End, }) {
          ForEach(this.simpleList, (item: string) => {
            TabContent() {
              Column() {
                Text(`Content:${item}`)
              }
            }.tabBar(item)
          }, (item: string) => item)
        }
        .vertical(false)
        .barMode(BarMode.Fixed)
        .barWidth(360)
        .barHeight(60)
        .animationDuration(0)
        .onContentWillChange((currentIndex, comingIndex) => {
          if (comingIndex == 3) {
            return false;
          }
          return true;
        })
        .width(360)
        .height(200)
        .backgroundColor('#F1F3F5')
        .scrollable(true)

        Button('delTabContent').width('50%').margin({ top: 20 })
          .onClick(() => {
            this.simpleList.pop();
          }).id('UIComponentNavTabsInterception0150_001')

        Button('addTabContent').width('50%').margin({ top: 20 })
          .onClick(() => {
            this.simpleList.push('five');
          }).id('UIComponentNavTabsInterception0150_002')
      }
      .width('100%')
      .height('100%')

    }
    .height('100%')
    .backgroundColor(0xF1F3F5)
  }
}