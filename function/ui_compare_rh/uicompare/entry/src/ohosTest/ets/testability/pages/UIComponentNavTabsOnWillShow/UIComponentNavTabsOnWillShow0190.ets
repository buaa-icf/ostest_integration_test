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
struct UIComponentNavTabsOnWillShow0190 {
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()
  @Builder tabBuilder(title: string,targetIndex: number) {
    Column(){
      Text(title)
    }.width('100%')
    .height(50)
    .id(title)
    .justifyContent(FlexAlign.Center)
  }

  @Builder tabBuilder1(title: string,targetIndex: number) {
    Column(){
      Text(title)
    }.width('100%')
    .height(50)
    .id(title)
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column({ space: 5 }) {

      Text("底部页签样式")
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(this.tabBuilder('tab1',0))
          .onWillShow(() => {
            console.info("Pink will show");
          });

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Yellow)
          }.tabBar(this.tabBuilder('tab2',1))
          .onWillShow(() => {
            console.info("Yellow will show");
          });

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(this.tabBuilder('tab3',2))
          .onWillShow(() => {
            console.info("Blue will show");
          });

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(this.tabBuilder('tab4',3))
          .onWillShow(() => {
            console.info("Green will show");
          });
        }
        .vertical(false)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .width('100%')
        .backgroundColor(0xF1F3F5);
      }.width('100%').height(200)
      Text("侧边页签样式");
      Column() {
        Tabs({ barPosition: BarPosition.Start }) {
          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(this.tabBuilder1('tab_1',0))
          .onWillShow(() => {
            console.info("Pink will show")
          });

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Yellow)
          }.tabBar(this.tabBuilder1('tab_2',1))
          .onWillShow(() => {
            console.info("Yellow will show")
          });

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(this.tabBuilder1('tab_3',2))
          .onWillShow(() => {
            console.info("Blue will show")
          });

          TabContent() {
            Column().width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(this.tabBuilder1('tab_4',3))
          .onWillShow(() => {
            console.info("Green will show")
          });
        }
        .vertical(true).scrollable(true).barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .width('100%')
        .backgroundColor(0xF1F3F5);
      }.width('100%').height(400);
    }
  }
}