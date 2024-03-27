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

import router from '@ohos.router'
import HomeTabContent from '../view/Home/Home'
import MallTabContent from '../view/Mall/Mall'
import { ProfileTabContent } from '../view/Profile/Profile'
import { TaskTabContent } from '../view/Task'
import { VideoTabContent } from '../view/Video'
import { MainPageParams } from '../viewmodel/RouterParams'

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

@Entry
@Component
struct MainPage {
  @State curNavIdx: number = 0 // Default: Home
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
    Tabs({ index: this.curNavIdx, barPosition: BarPosition.End, controller: this.tabsController }) {
      /* Home */
      TabContent() {
        HomeTabContent()
      }.tabBar(this.tabBuilder(
        0,
        $r('app.string.main_nav_home'),
        $r('app.media.ic_public_home'),
        $r('app.media.ic_public_home_filled')
      ))

      /* Video */
      TabContent() {
        VideoTabContent()
      }.tabBar(this.tabBuilder(
        1,
        $r('app.string.main_nav_video'),
        $r('app.media.ic_public_video'),
        $r('app.media.ic_public_video_filled')
      ))

      /* Task */
      TabContent() {
        TaskTabContent()
      }.tabBar(this.tabBuilder(
        2,
        $r('app.string.main_nav_task'),
        $r('app.media.ic_public_calendar'),
        $r('app.media.ic_public_calendar_filled')
      ))

      /* Mall */
      TabContent() {
        MallTabContent()
      }.tabBar(this.tabBuilder(
        3,
        $r('app.string.main_nav_mall'),
        $r('app.media.ic_public_appstore'),
        $r('app.media.ic_public_appstore_filled')
      ))

      /* Profile */
      TabContent() {
        ProfileTabContent()
      }.tabBar(this.tabBuilder(
        4,
        (AppStorage.get('isLoggedIn') ? $r('app.string.main_nav_profile_loggedIn') : $r('app.string.main_nav_profile_notLoggedIn')),
        $r('app.media.ic_public_contacts'),
        $r('app.media.ic_public_contacts_filled'),
        (AppStorage.get('isLoggedIn') ? undefined : $r('app.string.main_nav_profile_label_login'))
      ))
    }
    .barHeight(40)
    .scrollable(false)
    .animationDuration(0)
    .backgroundColor($r('app.color.main_tab_bg'))
  }

  /**
   * Buttons in the bottom navigation bar (icon + title)
   */
  @Builder
  tabBuilder(targetIdx: number, text: Resource, normalIcon: Resource, selectedIcon: Resource, label?: Resource | string) {
    Button() {
      Stack({ alignContent: Alignment.Top }) {
        Column() {
          Image(this.curNavIdx === targetIdx ? selectedIcon : normalIcon)
            .size({ width: 20, height: 20 })
            .fillColor(this.curNavIdx === targetIdx ? $r('app.color.primary') : $r('app.color.light_fg'))
          Text(text)
            .fontSize(8)
            .fontColor(this.curNavIdx === targetIdx ? $r('app.color.primary') : $r('app.color.light_fg'))
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)

        /* The label on the top right corner */
        if (label) {
          Text(label)
            .borderRadius(999)
            .backgroundColor($r('app.color.primary'))
            .fontColor($r('app.color.primary_fg'))
            .fontSize(8)
            .padding({ left: 4, right: 4, top: 2, bottom: 2 })
            .margin({ left: 30 })
        }
      }
    }
    .commonBtnStyle(() => {
      /* Task, Mall and Profile */
      if ((targetIdx === 2 || targetIdx === 3 || targetIdx === 4) && !AppStorage.get('isLoggedIn')) {
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