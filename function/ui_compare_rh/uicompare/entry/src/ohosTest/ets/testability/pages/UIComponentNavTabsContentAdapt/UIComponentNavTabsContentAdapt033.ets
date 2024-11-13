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
import { SymbolGlyphModifier } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  @State symbolModifier1: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ohos_wifi'));
  @State symbolModifier2: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ellipsis_bubble'));
  @State symbolModifier3: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.dot_video'));
  @State symbolModifier4: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.exposure'));

  @State barPosition: BarPosition = BarPosition.Start // 新增状态以动态改变 barPosition

  build() {
    Column({space: 5}) {
      Text("底部页签样式")
      Column(){
        Tabs({barPosition: this.barPosition}) {
          TabContent() {
            Column(){
              Text('Tab_1')
                .fontSize(36)
                .fontColor('#182431')
                .fontWeight(500)
                .opacity(0.4)
                .margin({ top: 0, bottom: 6.5 })
            }.width('100%').height('auto').backgroundColor(Color.Pink)
          }.tabBar(new BottomTabBarStyle({
            normal: this.symbolModifier1,
          }, 'Pink'))
          .onWillShow(() => {
            console.info("Pink will show")
          })
          .onWillHide(() => {
            console.info("Pink will hide")
          })

          TabContent() {
            Column(){
              Text('Tab_222')
                .fontSize(36)
                .fontColor('#182431')
                .fontWeight(500)
                .opacity(0.4)
                .margin({ top: 10, bottom: 16.5 })
            }.width('100%').height('auto').backgroundColor(Color.Orange)
          }.tabBar(new BottomTabBarStyle({
            normal: this.symbolModifier2,
          }, 'Orange'))
          .onWillShow(() => {
            console.info("Orange will show")
          })
          .onWillHide(() => {
            console.info("Orange will hide")
          })

          TabContent() {
            Column(){
              Text('Tab_333333')
                .fontSize(36)
                .fontColor('#182431')
                .fontWeight(500)
                .opacity(0.4)
                .margin({ top: 20, bottom: 26.5 })
            }.width('100%').height('auto').backgroundColor(Color.Blue)
          }.tabBar(new BottomTabBarStyle({
            normal: this.symbolModifier3,
          }, 'Blue'))
          .onWillShow(() => {
            console.info("Blue will show")
          })
          .onWillHide(() => {
            console.info("Blue will hide")
          })

          TabContent() {
            Column(){
              Text('Tab_444444444')
                .fontSize(36)
                .fontColor('#182431')
                .fontWeight(500)
                .opacity(0.4)
                .margin({ top: 30, bottom: 36.5 })
            }.width('100%').height('auto').backgroundColor(Color.Green)
          }.tabBar(new BottomTabBarStyle({
            normal: this.symbolModifier4,
          }, 'Green'))
          .onWillShow(() => {
            console.info("Green will show")
          })
          .onWillHide(() => {
            console.info("Green will hide")
          })
        }
        .vertical(false)
        .scrollable(true)
        .barMode(BarMode.Fixed)
        .onChange((index:number)=>{
          console.info(index.toString())
        })
        .width('100%')
        .backgroundColor(0xF1F3F5)

        // 按钮用于切换 barPosition
        Button('Toggle Bar Position')
          .margin(5)
          .onClick(() => {
            // 切换 barPosition
            this.barPosition = this.barPosition === BarPosition.Start ? BarPosition.End : BarPosition.Start;
            console.info('Bar position changed to: ' + this.barPosition);
          })
          .id('UIComponentNavTabs033_001')

      }.width('100%').height(200)


    }
  }
}