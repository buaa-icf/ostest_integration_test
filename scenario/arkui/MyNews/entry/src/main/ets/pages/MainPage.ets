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
import { ProfilePage } from '../view/ProfilePage';
import { TaskPageBuilder } from '../view/TaskPage';
import { VideoPageBuilder } from '../view/VideoPage';
import router from '@ohos.router';
import { MainPageParams } from '../viewmodel/RouterParams';

/**
 * Common invisible button style
 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}

/**
 * Button list in the bottom navigation bar
 */
interface NavItem {
  title: Resource
  normalIcon: Resource // Not selected: outline icons
  selectedIcon: Resource // Selected: filled icons
  no: string
  label?: string // Labels on the top right corner
}

const navItemList: NavItem[] = [{
  title: $r('app.string.main_nav_home'),
  normalIcon: $r('app.media.ic_public_home'),
  selectedIcon: $r('app.media.ic_public_home_filled'),
  no: '01'
}, {
  title: $r('app.string.main_nav_video'),
  normalIcon: $r('app.media.ic_public_video'),
  selectedIcon: $r('app.media.ic_public_video_filled'),
  no: '02'
}, {
  title: $r('app.string.main_nav_task'),
  normalIcon: $r('app.media.ic_public_calendar'),
  selectedIcon: $r('app.media.ic_public_calendar_filled'),
  no: '03',
  label: '开宝箱'
}, {
  title: $r('app.string.main_nav_mall'),
  normalIcon: $r('app.media.ic_public_appstore'),
  selectedIcon: $r('app.media.ic_public_appstore_filled'),
  no: '04'
}, {
  title: (AppStorage.get('isLoggedIn')
    ? $r('app.string.main_nav_profile_loggedIn')
    : $r('app.string.main_nav_profile_notLoggedIn')),
  normalIcon: $r('app.media.ic_public_contacts'),
  selectedIcon: $r('app.media.ic_public_contacts_filled'),
  no: '05'
}]

@Entry
@Component
struct MainPage {
  @State curNavIdx: number = 0
  private tabsController: TabsController = new TabsController()

  aboutToAppear() {
    const params: MainPageParams = router.getParams() as MainPageParams
    if (params?.isLoggedIn !== undefined) {
      AppStorage.setOrCreate('isLoggedIn', params.isLoggedIn)
    } else {
      AppStorage.setOrCreate('isLoggedIn', false)
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      ForEach(navItemList, (item: NavItem, itemIdx: number) => {
        TabContent() {
          if (itemIdx === 1) {
            VideoPageBuilder()
          }
          else if (itemIdx === 2) {
            TaskPageBuilder()
          }
          else if (itemIdx === 3) {
            MallPageBuilder()
          }
          else if (itemIdx === 4) {
            ProfilePage()
          }
          else {
            HomePage() // Default
          }
        }
        .id('main_tabs_tabContent_01')
        .width('100%')
        .height('100%')
        .align(Alignment.Top)
        .backgroundColor($r('app.color.light_bg'))
        .tabBar(this.tabBuilder(item.title, itemIdx, item.normalIcon, item.selectedIcon, item.no, item.label))
      })
    }
    .id('main_tabs_01')
    .width('100%')
    .height('100%')
    .barHeight(40)
    .scrollable(false)
    .animationDuration(0)
    .backgroundColor($r('app.color.main_tab_bg'))
  }

  /**
   * Buttons in the bottom navigation bar (icon + title)
   */
  @Builder
  tabBuilder(title: Resource, targetIdx: number, normalIcon: Resource, selectedIcon: Resource, no: string, label: string) {
    Button() {
      Stack({ alignContent: Alignment.TopEnd }) {
        Column() {
          Image(this.curNavIdx === targetIdx ? selectedIcon : normalIcon)
            .id(`main_tabs_button_image_${no}`)
            .size({ width: 20, height: 20 })
            .fillColor(this.curNavIdx === targetIdx ? $r('app.color.primary') : $r('app.color.light_fg'))
          Text(title)
            .id(`main_tabs_button_text_${no}`)
            .fontSize(8)
            .fontColor(this.curNavIdx === targetIdx ? $r('app.color.primary') : $r('app.color.light_fg'))
        }
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Center)

        /* The label on the top right corner */
        if (label) {
          Text(label)
            .borderRadius(999)
            .backgroundColor($r('app.color.primary'))
            .fontColor($r('app.color.primary_fg'))
            .fontSize(8)
            .padding(2)
            .margin({ top: 2 })
        }
      }
    }
    .id(`main_tabs_button_${no}`)
    .commonBtnStyle(() => {
      /* Profile */
      if (targetIdx === 4 && !AppStorage.get('isLoggedIn')) {
        router.pushUrl({ url: 'pages/LoginPage' })
      }
      /* Others */
      else {
        this.tabsController.changeIndex(targetIdx)
        this.curNavIdx = targetIdx
      }
    })
  }

  pageTransition() {
    PageTransitionEnter({ type: RouteType.None, duration: 0 })
    PageTransitionExit({ type: RouteType.None, duration: 0 })
  }
}