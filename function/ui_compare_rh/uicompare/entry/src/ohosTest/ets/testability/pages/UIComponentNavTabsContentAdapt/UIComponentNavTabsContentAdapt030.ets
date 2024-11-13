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
struct UIComponentNavTabsContentAdapt030 {
  private controller: TabsController = new TabsController()
  @State barOverlap: boolean = true;
  @State barBackgroundColor: string = '#88888888';

  build() {
    Column() {

      Tabs({ barPosition: BarPosition.Start, index: 2, controller: this.controller }) {
        TabContent() {
          Column() {
            Text(`barOverlap ${this.barOverlap}`).fontSize(16).margin({ top: this.barOverlap ? '56vp' : 0 })
            Text(`barBackgroundColor ${this.barBackgroundColor}`).fontSize(16)
          }.width('100%').width('100%').height(200)
          .backgroundColor(Color.Pink)
        }
        .tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), "1"))

        TabContent() {
          Column() {
            Text(`barOverlap ${this.barOverlap}`).fontSize(16).margin({ top: this.barOverlap ? '56vp' : 0 })
            Text(`barBackgroundColor ${this.barBackgroundColor}`).fontSize(16)
          }.width('100%').width('100%').height(300)
          .backgroundColor(Color.Yellow)
        }
        .tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), "2"))

        TabContent() {
          Column() {
            Text(`barOverlap ${this.barOverlap}`).fontSize(16).margin({ top: this.barOverlap ? '56vp' : 0 })
            Text(`barBackgroundColor ${this.barBackgroundColor}`).fontSize(16)
          }.width('100%').width('100%').height(400)
          .backgroundColor(Color.Green)
        }
        .tabBar(new BottomTabBarStyle($r('sys.media.ohos_app_icon'), "3"))
      }
      .vertical(false)
      .barMode(BarMode.Fixed)
      .height('60%')
      .barOverlap(true)
      .scrollable(true)
      .animationDuration(10)
      .barBackgroundColor(this.barBackgroundColor)
    }
    .height(500)
    .padding({ top: '24vp', left: '24vp', right: '24vp' })
  }
}