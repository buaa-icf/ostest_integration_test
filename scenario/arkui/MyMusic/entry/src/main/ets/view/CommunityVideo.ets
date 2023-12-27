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

import MineActivityItem from './MineActivityItem';
import MineActivityItemData from '../viewmodel/MineActivityItemData';
import mainViewModel from '../viewmodel/MainViewModel';
import VideoRecommend from './VideoRecommend';
import VideoMV from './VideoMV';


/**
 * Home tab content
 */
@Component
export default struct CommunityVideo {
  @State subCurrentIndex: number = 0;
  private tabsController: TabsController = new TabsController();

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Text(title)
        .fontSize($r('app.float.normal_text_size'))
        .fontColor(this.subCurrentIndex === index ? '#f0f0f0' : '#0e0e0e')
        .borderRadius('20vp')
        .padding({top:'4vp',bottom:'4vp',left:'8vp',right:'8vp'})
        .margin({left:'20vp',right:'20vp'})
        .textAlign(TextAlign.Center)
        .backgroundColor(this.subCurrentIndex === index ?'#E02020':'#00ffffff')
    }
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
    Tabs({
      barPosition: BarPosition.End,
      controller: this.tabsController
    }) {
      TabContent() {
        VideoRecommend();
      }
      .tabBar(this.TabBuilder('推荐', 0,
        $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

      TabContent() {
        VideoMV();
      }
      .tabBar(this.TabBuilder('MV', 1,
        $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))
    }
    .width('100%')
    .barHeight($r('app.float.mainPage_barHeight'))
    .barWidth('70%')
    .barMode(BarMode.Scrollable)
    .barPosition(BarPosition.Start)
    .onChange((index: number) => {
      this.subCurrentIndex = index;
    })
  }
}
