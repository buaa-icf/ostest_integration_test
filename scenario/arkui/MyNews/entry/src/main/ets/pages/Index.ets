/*
 * Copyright (c) 2023 Southeast University.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import { HomePage } from '../view/HomePage';
import { ProfilePageBuilder } from '../view/profilePage';
import { TaskPageBuilder } from '../view/TaskPage';
import { VideoPageBuilder } from '../view/VideoPage';
import { IndexBottomNavItem } from '../viewmodel/IndexBottomNavItem';


/**
 * All the items in the bottom navigation bar.
 * 应用底部导航栏中导航项列表。
 */
const bottomNavItemList: IndexBottomNavItem[] = [{
  title: '首页',
  normalIcon: $r("app.media.ic_public_home"),
  selectedIcon: $r("app.media.ic_public_home_filled")
}, {
  title: '视频',
  normalIcon: $r("app.media.ic_public_video"),
  selectedIcon: $r("app.media.ic_public_video_filled")
}, {
  title: '任务',
  normalIcon: $r("app.media.ic_public_calendar"),
  selectedIcon: $r("app.media.ic_public_calendar_filled")
}, {
  title: '个人',
  normalIcon: $r("app.media.ic_public_contacts"),
  selectedIcon: $r("app.media.ic_public_contacts_filled")
}]


@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private tabsController: TabsController = new TabsController()

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      ForEach(bottomNavItemList, (item: IndexBottomNavItem, itemIndex: number) => {
        TabContent() {
          /* Provide different content according to the tab index. */
          Column() {
            if (itemIndex === 1) {
              VideoPageBuilder()
            }
            else if (itemIndex === 2) {
              TaskPageBuilder()
            }
            else if (itemIndex === 3) {
              ProfilePageBuilder()
            }
            else {
              HomePage()
            }
          }
          .width('100%')
          .height('100%')
          .backgroundColor($r("app.color.light_bg"))
        }
        .width('100%')
        .height('100%')
        .align(Alignment.Top)
        .tabBar(this.TabBuilder(item.title, itemIndex, item.normalIcon, item.selectedIcon))
      })
    }
    .width('100%')
    .height('100%')
    .scrollable(false)
    .backgroundColor($r('app.color.index_tab_bg'))
  }

  /**
   * Custom buttons for the bottom navigation bar (icon + text).
   */
  @Builder
  TabBuilder(title: string, targetIndex: number, normalIcon: Resource, selectedIcon: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedIcon : normalIcon)
        .size({ width: 28, height: 28 })
        .fillColor(this.currentIndex === targetIndex ? $r("app.color.primary") : $r('app.color.light_fg'))
      Text(title)
        .fontSize(11)
        .fontColor(this.currentIndex === targetIndex ? $r("app.color.primary") : $r('app.color.light_fg'))
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.tabsController.changeIndex(targetIndex)
      this.currentIndex = targetIndex
    })
  }
}
