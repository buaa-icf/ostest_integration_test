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
import { PodCastHead } from './PodCastHead';
import PodCastContentFirst from './PodCastContentFirst';
import PodCastContentSecond from './PodCastContentSecond';
import PodCastContentThird from './PodCastContentThird';
import PodCastContentFourth from './PodCastContentFourth';

/**
 * Home tab content
 */
@Component
export default struct PodCast {
  @State subCurrentIndex: number = CommonConstants.HOME_TAB_INDEX;
  private tabsController: TabsController = new TabsController();

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Text(title)
        .fontSize($r('app.float.normal_text_size'))
        .fontColor(this.subCurrentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
      Image(this.subCurrentIndex === index ? selectedImg : normalImg)
        .width($r('app.float.mainPage_baseTab_size'))
    }
    //.justifyContent(FlexAlign.SpaceBetween)
    .height($r('app.float.mainPage_barHeight'))
    .margin({
      top: $r('app.float.mainPage_padding'),
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
      Tabs({
        barPosition: BarPosition.End,
        controller: this.tabsController
      }) {
        TabContent() {
          PodCastContentFirst()
            .margin({ top: ($r('app.float.mainPage_barHeight')) })
        }
        .tabBar(this.TabBuilder('推荐', 0,
          $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

        TabContent() {
          PodCastContentSecond()
            .margin({ top: ($r('app.float.mainPage_barHeight')) })
        }
        .tabBar(this.TabBuilder('有声书', 1,
          $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

        TabContent() {
          PodCastContentThird()
            .margin({ top: ($r('app.float.mainPage_barHeight')) })
        }
        .tabBar(this.TabBuilder('广播剧', 2,
          $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

        TabContent() {
          PodCastContentFourth()
            .margin({ top: ($r('app.float.mainPage_barHeight')) })
        }
        .tabBar(this.TabBuilder('听听', 3,
          $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))
      }
      .width(CommonConstants.FULL_PARENT)
      .barHeight($r('app.float.mainPage_barHeight'))
      .barMode(BarMode.Scrollable)
      .barPosition(BarPosition.Start)
      .onChange((index: number) => {
        this.subCurrentIndex = index;
      })

      PodCastHead()
      Search({
        placeholder: '大家都在听 爵士的音乐解读'
      })
        .margin({ top: ($r('app.float.mainPage_barHeight')) })
        .width('90%')//.height('32vp')
        .border({ radius: $r('app.float.home_swiper_borderRadius') })
        .placeholderFont({
          size: $r('app.float.little_text_size'),
          style: FontStyle.Normal
        })
        .textFont({ size: $r('app.float.little_text_size') })
    }
    .backgroundColor('#F9F9F9')
    .width('100%').height('100%')
  }
}
