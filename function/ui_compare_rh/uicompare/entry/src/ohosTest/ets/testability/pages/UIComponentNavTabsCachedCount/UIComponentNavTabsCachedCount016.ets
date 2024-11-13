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
import { BusinessError } from '@kit.BasicServicesKit'

@Entry
@Component
struct UIComponentNavTabsCachedCount016 {
  @State currentIndex: number = 0
  @State barPosition: BarPosition = BarPosition.Start // 新增状态以动态改变 barPosition
  private tabsController: TabsController = new TabsController()

  build() {
    Column() {
      // Tabs 组件，使用动态 barPosition
      Tabs({ index: this.currentIndex, barPosition: this.barPosition, controller: this.tabsController }) {
        TabContent() {
          MyComponent({ color: '#00CB87' })
        }.tabBar(SubTabBarStyle.of('green'))

        TabContent() {
          MyComponent({ color: '#007DFF' })
        }.tabBar(SubTabBarStyle.of('blue'))

        TabContent() {
          MyComponent({ color: '#FFBF00' })
        }.tabBar(SubTabBarStyle.of('yellow'))

        TabContent() {
          MyComponent({ color: '#E67C92' })
        }.tabBar(SubTabBarStyle.of('pink'))
      }
      .width(360)
      .height(296)
      .backgroundColor('#F1F3F5')
      .onChange((index: number) => {
        this.currentIndex = index
      })

      Button('preload items: [1, 3]')
        .margin(5)
        .onClick(() => {
          // 预加载第1、3个子节点，提高滑动或点击切换至这些节点时的性能
          this.tabsController.preloadItems([1, 3])
            .then(() => {
              console.info('preloadItems success.')
            })
            .catch((error: BusinessError) => {
              console.error('preloadItems failed, error code: ' + error.code + ', error message: ' + error.message)
            })
        })
        .id('UIComponentNavTabs016_001')

      // 按钮用于切换 barPosition
      Button('Toggle Bar Position')
        .margin(5)
        .onClick(() => {
          // 切换 barPosition
          this.barPosition = this.barPosition === BarPosition.Start ? BarPosition.End : BarPosition.Start;
          console.info('Bar position changed to: ' + this.barPosition);
        })
        .id('UIComponentNavTabs016_002')
    }
  }
}

@Component
struct MyComponent {
  private color: string = ""

  aboutToAppear(): void {
    console.info('aboutToAppear backgroundColor:' + this.color)
  }

  aboutToDisappear(): void {
    console.info('aboutToDisappear backgroundColor:' + this.color)
  }

  build() {
    Column()
      .width('100%')
      .height('100%')
      .backgroundColor(this.color)
  }
}