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
import { webview } from '@kit.ArkWeb';
@Entry
@Component
struct UIComponentNavTabsMirror0250 {
  controller: webview.WebviewController = new webview.WebviewController();
  @State fontColor: string = '#182431';
  @State selectedFontColor: string = '#007DFF';
  @State currentIndex: number = 0;
  @State selectedIndex: number = 0;
  @State direction1: Direction = Direction.Rtl;
  @State arr: String[] = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @Builder tabBuilder(index: number) {
    Column() {
      Text(`Tab${index}`)
        .fontColor(this.selectedIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.id(`Tab${index}`).width('100%')
  }

  build() {
    Column({ space: 5 }) {

      Text("侧边页签样式")
      Column() {
        Tabs({ barPosition: BarPosition.Start }) {
          TabContent() {
            Column() {
              Text('www.sohu.com');
              Web({ src: 'www.sohu.com', controller: this.controller })
                .fileAccess(true);
            }
            .width('100%').height('100%').backgroundColor(Color.Pink)
          }.tabBar(this.tabBuilder(0));

          TabContent() {
            Column() {
              Text('www.sina.com');
              Web({ src: 'www.sina.com', controller: this.controller })
                .fileAccess(true);
            }.width('100%').height('100%').backgroundColor(Color.Yellow)
          }.tabBar(this.tabBuilder(1));

          TabContent() {
            Column() {
              Text('www.baidu.com');
              Web({ src: 'www.baidu.com', controller: this.controller })
                .fileAccess(true);
            }.width('100%').height('100%').backgroundColor(Color.Blue)
          }.tabBar(this.tabBuilder(2));

          TabContent() {
            Column() {
              Text('www.jd.com');
              Web({ src: 'www.jd.com', controller: this.controller })
                .fileAccess(true);
            }.width('100%').height('100%').backgroundColor(Color.Green)
          }.tabBar(this.tabBuilder(3));
        }
        .vertical(true)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index: number) => {
          console.info(index.toString())
        })
        .onAnimationStart((index: number, targetIndex: number, event: TabsAnimationEvent) => {
          if (index === targetIndex) {
            return
          }
          // selectedIndex控制自定义TabBar内Image和Text颜色切换
          this.selectedIndex = targetIndex
        })
        .width('100%')
        .backgroundColor(0xF1F3F5)
        .direction(this.direction1);

        Button('镜像改变').width('50%')
          .onClick(() => {
            if (this.direction1 == Direction.Ltr) {
              this.direction1 = Direction.Rtl
            }
            else if (this.direction1 == Direction.Rtl) {
              this.direction1 = Direction.Ltr
            }
          }).id('UIComponentNavTabsMirror0250_001')

      }.width('100%').height(400)
    }
  }
}