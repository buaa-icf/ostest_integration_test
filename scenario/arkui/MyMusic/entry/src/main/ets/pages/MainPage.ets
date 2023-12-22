/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import CommonConstants from '../common/constants/CommonConstants';
import Home from "../view/Home"
import PodCast from "../view/PodCast"
import Mine from '../view/Mine'
import PlayerBar from '../view/PlayerBar';
import Community from "../view/Community"
import Follow from '../view/Follow';

/**
 * Main page
 */
@Entry
@Component
struct MainPage {
  @State currentIndex: number = CommonConstants.HOME_TAB_INDEX;
  private tabsController: TabsController = new TabsController();
  @Provide playingTitle: string = '红色的河'
  @Provide playingArtist: string = '旅行团乐队/吴青峰'
  @Provide playingImg: Resource = $r('app.media.ic_gallery_frame_overlay_soundphoto')
  @Provide rotateAngle: number = 0;

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImg : normalImg)
        .width($r('app.float.mainPage_baseTab_size'))
        .height($r('app.float.mainPage_baseTab_size'))
      Text(title)
        .margin({ top: $r('app.float.mainPage_baseTab_top') })
        .fontSize($r('app.float.main_tab_fontSize'))
        .fontColor(this.currentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
    }
    .justifyContent(FlexAlign.Center)
    .height($r('app.float.mainPage_barHeight'))
    .width(CommonConstants.FULL_PARENT)
    .onClick(() => {
      this.currentIndex = index;
      this.tabsController.changeIndex(this.currentIndex);
    })
  }

  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Tabs({
        barPosition: BarPosition.End,
        controller: this.tabsController
      }) {
        TabContent() {
          Home()
        }
        .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
        .tabBar(this.TabBuilder(CommonConstants.HOME_TITLE, CommonConstants.HOME_TAB_INDEX,
          $r('app.media.ic_public_home_select'), $r('app.media.ic_public_home')))

        TabContent() {
          PodCast()
        }
        //.padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
        .tabBar(this.TabBuilder(CommonConstants.PODCAST_TITLE, CommonConstants.PODCAST_TAB_INDEX,
          $r('app.media.ic_statusbar_cast_select'), $r('app.media.ic_statusbar_cast')))

        TabContent() {
          Mine()
        }
        .tabBar(this.TabBuilder(CommonConstants.MINE_TITLE, CommonConstants.MINE_TAB_INDEX,
          $r('app.media.ic_public_mine_select'), $r('app.media.ic_public_mine')))

        TabContent() {
          Follow()
        }
        .tabBar(this.TabBuilder(CommonConstants.FOLLOW_TITLE, CommonConstants.FOLLOW_TAB_INDEX,
          $r('app.media.ic_public_highlight_select'), $r('app.media.ic_public_highlight')))

        TabContent() {
          Community()
        }
        .tabBar(this.TabBuilder(CommonConstants.SOCIAL_TITLE, CommonConstants.SOCIAL_TAB_INDEX,
          $r('app.media.ic_public_community_messages_select'), $r('app.media.ic_public_community_messages')))
      }
      .width(CommonConstants.FULL_PARENT)
      .backgroundColor(Color.White)
      .barHeight($r('app.float.mainPage_barHeight'))
      .barMode(BarMode.Fixed)
      .onChange((index: number) => {
        this.currentIndex = index;
      })

      PlayerBar()
        .margin({ bottom: $r('app.float.mainPage_barHeight') })
        .backgroundColor(Color.White)
        .width('100%')
    }.width('100%').height('100%')
  }
}