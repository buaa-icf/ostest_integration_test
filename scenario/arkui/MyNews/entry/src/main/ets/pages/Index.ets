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
import { MallPageBuilder } from '../view/MallPage';
import { ProfilePageBuilder } from '../view/ProfilePage';
import { TaskPageBuilder } from '../view/TaskPage';
import { VideoPageBuilder } from '../view/VideoPage';
import { IndexBottomNavItem } from '../viewmodel/IndexBottomNavItem';

// import { SearchPage } from '../view/SearchPage';


/* 定义通用无底色、无按压效果按钮样式 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}


/**
 * 应用底部导航栏中导航项列表
 */
const bottomNavItemList: IndexBottomNavItem[] = [{
  title: '首页',
  normalIcon: $r('app.media.ic_public_home'),
  selectedIcon: $r('app.media.ic_public_home_filled'),
  btnId: 'indexHomePageBtn'
}, {
  title: '视频',
  normalIcon: $r('app.media.ic_public_video'),
  selectedIcon: $r('app.media.ic_public_video_filled'),
  btnId: 'indexVideoPageBtn'
}, {
  title: '任务',
  normalIcon: $r('app.media.ic_public_calendar'),
  selectedIcon: $r('app.media.ic_public_calendar_filled'),
  btnId: 'indexTaskPageBtn',
  label: '开宝箱'
}, {
  title: '商城',
  normalIcon: $r('app.media.ic_public_appstore'),
  selectedIcon: $r('app.media.ic_public_appstore_filled'),
  btnId: 'indexMallPageBtn',
  label: ''
}, {
  title: '个人',
  normalIcon: $r('app.media.ic_public_contacts'),
  selectedIcon: $r('app.media.ic_public_contacts_filled'),
  btnId: 'indexProfilePageBtn'
}]


@Entry
@Component
struct Index {
  @State curNavIdx: number = 0
  private tabsController: TabsController = new TabsController()

  build() {
    // TODO: 搜索页开发用
    // if (1)
    //   SearchPage()
    // else
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      ForEach(bottomNavItemList, (item: IndexBottomNavItem, itemIndex: number) => {
        TabContent() {
          Column() {
            if (itemIndex === 1) {
              VideoPageBuilder()
            }
            else if (itemIndex === 2) {
              TaskPageBuilder()
            }
            else if (itemIndex === 3) {
              MallPageBuilder()
            }
            else if (itemIndex === 4) {
              ProfilePageBuilder()
            }
            else {
              HomePage() // 默认显示为首页
            }
          }
          .width('100%')
          .height('100%')
          .backgroundColor($r('app.color.light_bg'))
        }
        .width('100%')
        .height('100%')
        .align(Alignment.Top)
        .tabBar(this.TabBuilder(item.title, itemIndex, item.normalIcon, item.selectedIcon, item.btnId, item.label))
      })
    }
    .width('100%')
    .height('100%')
    .barHeight(40)
    .scrollable(false)
    .animationDuration(0)
    .backgroundColor($r('app.color.index_tab_bg'))
  }

  /**
   * 底部导航栏中自定义按钮样式（图标+文字）
   */
  @Builder
  TabBuilder(title: string, targetIndex: number, normalIcon: Resource, selectedIcon: Resource, btnId: string, label: string) {
    Button() {
      Stack({alignContent: Alignment.TopEnd}) {
        Column() {
          // 当被选中时变色，图标变为填充型
          Image(this.curNavIdx === targetIndex ? selectedIcon : normalIcon)
            .size({ width: 20, height: 20 })
            .fillColor(this.curNavIdx === targetIndex ? $r('app.color.primary') : $r('app.color.light_fg'))
          Text(title)
            .fontSize(8)
            .fontColor(this.curNavIdx === targetIndex ? $r('app.color.primary') : $r('app.color.light_fg'))
        }
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Center)
        if(label) {
          Text(label)
            .borderRadius(999)
            .backgroundColor('red')
            .fontColor('white')
            .fontSize(8)
            .padding(2)
            .margin({top: 2})
        }

      }
    }
    .id(btnId)
    .commonBtnStyle(() => {
      this.tabsController.changeIndex(targetIndex)
      this.curNavIdx = targetIndex
    })
  }

  pageTransition() {
    PageTransitionEnter({ type: RouteType.None, duration: 0 })
    PageTransitionExit({ type: RouteType.None, duration: 0 })
  }
}
