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
import PlayerManager from '../manager/PlayerManager'
import Logger from '../common/utils/Logger';
import curves from '@ohos.curves';
import PodCastHead from '../view/PodCastHead';
import Setting from '../view/Setting';
import PlayList from '../view/PlayList';

/**
 * Main page
 */
@Entry
@Component
struct MainPage {
  @State currentIndex: number = CommonConstants.HOME_TAB_INDEX;
  private tabsController: TabsController = new TabsController();
  @State playerManager: PlayerManager = new PlayerManager();
  normalIcon: Resource = $r("app.media.icon")
  selectedIcon: Resource = $r("app.media.icon")
  @State arr: number[] = [1, 2, 3]
  @State current: number = 1
  @State isShowSidebar: boolean = false;
  @State isShowPlayList: boolean = false;
  @State maskOpacity: number = 0.5;

  aboutToAppear() {
    AppStorage.setOrCreate('playerManager', this.playerManager);
  }

  aboutToDisappear() {
  }

  onBackPress() {
    if (this.isShowPlayList || this.isShowSidebar) {
      animateTo({ duration: 350 }, () => {
        this.isShowSidebar = false;
        this.isShowPlayList = false;
      }
      )
      return true;
    } else {
      return false;
    }
  }

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImg : normalImg)
        .width($r('app.float.head_icon_size'))
        .height($r('app.float.head_icon_size'))
      Text(title)
        .margin({ top: $r('app.float.mainPage_baseTab_top') })
        .fontSize('14fp')
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
    SideBarContainer(SideBarContainerType.Overlay) {
      Column() {
        Setting()
      }.width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
      .backgroundColor($r('app.color.background'))

      /*
      .onAreaChange((oldValue: Area, newValue: Area) => {
        this.maskOpacity = (newValue.width as number) / 500;
        Logger.error('color', this.maskOpacity.toString())
        Logger.error('color', newValue.width.toString())
      })
      */

      Stack({ alignContent: Alignment.Bottom }) {
        Tabs({
          barPosition: BarPosition.End,
          controller: this.tabsController
        }) {
          TabContent() {
            Home({ isShowSidebar: $isShowSidebar })
          }
          .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
          .tabBar(this.TabBuilder(CommonConstants.HOME_TITLE, CommonConstants.HOME_TAB_INDEX,
            $r('app.media.ic_public_home_select'), $r('app.media.ic_public_home')))

          TabContent() {
            PodCast({ isShowSidebar: $isShowSidebar })
          }
          //.padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
          .tabBar(this.TabBuilder(CommonConstants.PODCAST_TITLE, CommonConstants.PODCAST_TAB_INDEX,
            $r('app.media.ic_statusbar_cast_select'), $r('app.media.ic_statusbar_cast')))

          TabContent() {
            Mine({ isShowSidebar: $isShowSidebar })
          }
          .tabBar(this.TabBuilder(CommonConstants.MINE_TITLE, CommonConstants.MINE_TAB_INDEX,
            $r('app.media.ic_public_mine_select'), $r('app.media.ic_public_mine')))

          TabContent() {
            Follow({ isShowSidebar: $isShowSidebar })
          }
          .tabBar(this.TabBuilder(CommonConstants.FOLLOW_TITLE, CommonConstants.FOLLOW_TAB_INDEX,
            $r('app.media.ic_public_highlight_select'), $r('app.media.ic_public_highlight')))

          TabContent() {
            Community({ isShowSidebar: $isShowSidebar })
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

        PlayerBar({ isShowPlayList: $isShowPlayList })
          .margin({ bottom: $r('app.float.mainPage_barHeight') })
          .backgroundColor(Color.White)
          .width('100%')
        if (this.isShowSidebar || this.isShowPlayList) {
          Rect()
            .width('100%')
            .height('100%')
            .fill('#e0e0e0')
            .fillOpacity(this.maskOpacity)
            .onClick(() => {
              animateTo({ duration: 350 }, () => {
                this.isShowSidebar = false;
                this.isShowPlayList = false;
              })
            })
            .transition(TransitionEffect.OPACITY)
        }
        if (this.isShowPlayList) {
          PlayList()
            .width('100%')
            .height('80%')
            .transition(TransitionEffect.OPACITY
              .animation({ curve: curves.springMotion() })
              .combine(TransitionEffect.move(TransitionEdge.BOTTOM)))
        }
      }.width('100%').height('100%')
    }
    .showControlButton(false)
    .showSideBar(this.isShowSidebar)
    .sideBarWidth('80%')
    .minSideBarWidth('80%')
    .maxSideBarWidth('80%')
    .minContentWidth(0)
    .onChange((value: boolean) => {
      this.isShowSidebar = value;
    })
  }
}