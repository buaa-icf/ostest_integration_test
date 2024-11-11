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
struct UIComponentNavTabsBlurStyle0027 {
  @State fontColor: string = '#182431';
  @State selectedFontColor: string = '#007DFF';
  @State currentIndex: number = 0;
  @State blurStyle: BlurStyle = BlurStyle.BACKGROUND_THICK;
  @State indicatorColor: ResourceColor = Color.Blue;
  @State indicatorHeight: number = 30;
  @State indicatorWidth: number = 70;
  private controller: TabsController = new TabsController();

  @Builder
  tabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(16)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ top: 17, bottom: 7 })
      Divider()
        .strokeWidth(2)
        .color('#007DFF')
        .opacity(this.currentIndex === index ? 1 : 0)
    }.width('100%')
  }

  build() {
    Column() {
      Button('下划线颜色变化')
        .onClick(() => {
          this.getUIContext()?.animateTo(
            {
              duration: 1000,
              curve: Curve.Linear,
              delay: 200,
              iterations: 1,
              playMode: PlayMode.Normal
            }, () => {
            if (this.indicatorColor === Color.Red) {
              this.indicatorColor = Color.Yellow;
            } else {
              this.indicatorColor = Color.Red;
            }
          })
        })
      Button('下划线高度变化')
        .onClick(()=>{
          this.getUIContext()?.animateTo(
            {
              duration: 1000,
              curve: Curve.Linear,
              delay: 200,
              iterations: 1,
              playMode: PlayMode.Normal
            }, () => {
            if (this.indicatorHeight === 20) {
              this.indicatorHeight = 10;
            } else {
              this.indicatorHeight = 20;
            }
          })
        })
      Button('下划线宽度变化')
        .onClick(()=>{
          this.getUIContext()?.animateTo(
            {
              duration: 1000,
              curve: Curve.Linear,
              delay: 200,
              iterations: 1,
              playMode: PlayMode.Normal
            }, () => {
            if (this.indicatorWidth === 30) {
              this.indicatorWidth = 50;
            } else {
              this.indicatorWidth = 30;
            }
          })
        })
      Tabs({ barPosition: BarPosition.Start, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Pink)
        }.tabBar(SubTabBarStyle.of('pink')
        )

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Yellow)
        }.tabBar(SubTabBarStyle.of('Yellow')
        )

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Blue)
        }.tabBar(SubTabBarStyle.of('Blue')
        )

        TabContent() {
          Column().width('100%').height('100%').backgroundColor(Color.Green)
        }.tabBar(SubTabBarStyle.of('Green')
        )
      }
      .divider({
        strokeWidth: this.indicatorWidth,
        color: this.indicatorColor,
      })
      .barBackgroundBlurStyle(this.blurStyle)
      .backgroundColor(0xF5F5F5)
      .barOverlap(true)
      .barMode(BarMode.Fixed)
      .barWidth(100)
      .padding('10vp')
      .barPosition(BarPosition.Start)
      .vertical(false)
      .width(360)
      .height(296)
    }.width('100%')
  }
}
