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
struct UIComponentNavTabsInterface012 {
  @State message: string = 'Hello World'
  private controller: TabsController = new TabsController()
  private controller1: TabsController = new TabsController()

  build() {
    Column() {

      Tabs({ barPosition: BarPosition.End, index: 0, controller: this.controller }) {
        TabContent() {
          Column().width(200).height('100%').backgroundColor(Color.Pink)
        }.tabBar('pink111111111111111111111111111111111111111')

        TabContent() {
          Column().width(250).height('100%').backgroundColor(Color.Yellow)
        }.tabBar('yellow222222222222222222222222222222')

        TabContent() {
          Column().width(300).height('100%').backgroundColor(Color.Blue)
        }.tabBar('blue33333333333333333333333333333333')

        TabContent() {
          Column().width(300).height('100%').backgroundColor(Color.Green)
        }.tabBar('green444444444444444444444444444')
      }
      .vertical(false)
      .scrollable(true)
      .barMode(BarMode.Scrollable)
      .barHeight(80)
      .barWidth(400)
      .animationDuration(400)
      .onChange((index: number) => {
        console.info(index.toString())
      })
      .height('30%')
      .width(200)

    }
    .padding({ top: '24vp', left: '24vp', right: '24vp' })
  }
}