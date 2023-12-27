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
import MineListItem from './MineListItem';
import MineListItemData from '../viewmodel/MineListItemData';
import mainViewModel from '../viewmodel/MainViewModel';


/**
 * Home tab content
 */
@Component
export default struct MineMusic {
  @State subCurrentIndex: number = CommonConstants.HOME_TAB_INDEX;
  @State headBackground: number = 0;
  private tabsController: TabsController = new TabsController();

  @Builder
  TabBuilder(title: string, subTitle: string, index: number) {
    Row() {
      Text(title)
        .fontSize($r('app.float.little_text_size'))
        .width('30%')
        .textAlign(TextAlign.Center)
        .fontColor(this.subCurrentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
      Text(subTitle)
        .fontSize('8fp')
        .fontColor(this.subCurrentIndex === index ? $r('app.color.mainPage_selected') : $r('app.color.mainPage_normal'))
    }
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
        List({ space: 10 }) {
          ForEach(mainViewModel.getMineListItemData(), (item: MineListItemData) => {
            ListItem() {
              MineListItem({ item })
            }
            .align(Alignment.Start)
          })
        }.margin('12vp')
        .edgeEffect(EdgeEffect.Spring)
        .nestedScroll({
          scrollForward: NestedScrollMode.PARENT_FIRST,
          scrollBackward: NestedScrollMode.SELF_FIRST
        })
      }.align(Alignment.Top)
      .tabBar(this.TabBuilder('近期', '', 0))

      TabContent() {
        List({ space: 10 }) {
          ForEach(mainViewModel.getMineListItemDataCreate(), (item: MineListItemData) => {
            ListItem() {
              MineListItem({ item })
            }
            .align(Alignment.Start)
          })
        }.margin('12vp')
        .edgeEffect(EdgeEffect.Spring)
        .nestedScroll({
          scrollForward: NestedScrollMode.PARENT_FIRST,
          scrollBackward: NestedScrollMode.SELF_FIRST
        })
      }.align(Alignment.Top)
      .tabBar(this.TabBuilder('创建', '8', 1))
    }
    .barPosition(BarPosition.Start)
    .barMode(BarMode.Fixed)
    .barWidth('40%')
    .onChange((index: number) => {
      this.subCurrentIndex = index;
    })
  }
}
