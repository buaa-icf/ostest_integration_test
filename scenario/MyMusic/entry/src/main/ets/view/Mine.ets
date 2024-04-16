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
import MineHead from './MineHead';
import MineInfo from './MineInfo';
import MineMusic from './MineMusic';
import MinePodCast from './MinePodCast';
import MineActivity from './MineActivity';


/**
 * Home tab content
 */
@Component
export default struct Mine {
  @State subCurrentIndex: number = CommonConstants.HOME_TAB_INDEX;
  @State subCurrentIndex2: number = 0;
  @State headBackground: number = 0;
  @Provide addVisibility: boolean = true
  @Provide nameVisibility: boolean = false
  private tabsController: TabsController = new TabsController();
  private scroller: Scroller = new Scroller()
  @Link isShowSidebar: boolean;

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Text(title)
        .fontSize($r('app.float.normal_text_size'))
        .width('30%')
        .textAlign(TextAlign.Center)
        .fontColor(this.subCurrentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
      Image(this.subCurrentIndex === index ? selectedImg : normalImg)
        .width($r('app.float.mainPage_baseTab_size'))
    }
    .height($r('app.float.mainPage_barHeight'))
    .margin({
      top: '24vp',
      left: $r('app.float.mainPage_padding'),
      right: $r('app.float.mainPage_padding')
    })
    .onClick(() => {
      this.subCurrentIndex = index;
      this.tabsController.changeIndex(this.subCurrentIndex);
    })
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      Scroll(this.scroller) {
        Stack({ alignContent: Alignment.Top }) {
          Image($r('app.media.fig1'))
            .width('100%')
            .height('352vp')
            .blur(10)
          Column() {
            Shape() {
            }
            .backgroundColor(Color.Transparent)
            .width('100%')
            .height('300vp')

            Tabs({
              barPosition: BarPosition.End,
              controller: this.tabsController
            }) {
              TabContent() {
                MineMusic()
              }
              .align(Alignment.Top)
              .tabBar(this.TabBuilder('音乐', 0,
                $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

              TabContent() {
                MinePodCast()
              }
              .tabBar(this.TabBuilder('播客', 1,
                $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

              TabContent() {
                MineActivity()
              }
              .tabBar(this.TabBuilder('动态', 2,
                $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

            }
            .width(CommonConstants.FULL_PARENT)
            .margin({ top: '24vp' })
            .barHeight($r('app.float.mainPage_barHeight'))
            .barMode(BarMode.Fixed)
            .barPosition(BarPosition.Start)
            .borderRadius('12vp')
            .backgroundColor($r('app.color.background'))
            .onChange((index: number) => {
              this.subCurrentIndex = index;
            })
          }

          MineInfo()
        }
      }
      .edgeEffect(EdgeEffect.Spring)
      .friction(0.6)
      .backgroundColor('#DCDCDC')
      .scrollBar(BarState.Off)
      .width('100%')
      .height('100%')
      .onScroll((xOffset: number, yOffset: number) => {
        let scrollStep: number = Math.abs(this.scroller.currentOffset().yOffset / 300);
        this.headBackground = scrollStep;
        if (scrollStep > 0.4) {
          if (this.addVisibility !== false) {
            this.addVisibility = false
          }
        } else {
          if (this.addVisibility !== true) {
            this.addVisibility = true
          }
        }
        if (scrollStep > 0.6) {
          if (this.nameVisibility !== true) {
            this.nameVisibility = true
          }
        } else {
          if (this.nameVisibility !== false) {
            this.nameVisibility = false
          }
        }
      })

      Shape()
        .height($r('app.float.head_height'))
        .width('100%')
        .backgroundColor($r('app.color.background'))
        .opacity(this.headBackground)

      MineHead({ isShowSidebar: $isShowSidebar })
    }
    .backgroundColor($r('app.color.background'))
    .width('100%').height('100%')
  }
}
