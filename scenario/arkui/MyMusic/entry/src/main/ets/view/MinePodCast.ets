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
import ListHead from './ListHead';
import MidItem from './MidItem';
import MidItemData from '../viewmodel/MidItemData';

/**
 * Home tab content
 */
@Component
export default struct MinePodCast {
  @State subCurrentIndex: number = CommonConstants.HOME_TAB_INDEX;
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
          ListItem() {
            Column() {
              ForEach(mainViewModel.getMinePodCastListItemData(), (item: MineListItemData) => {
                MineListItem({ item }).margin({bottom:'10vp'})
              })
            }
          }.align(Alignment.Start)

          ListItem() {
            Column() {
              ListHead({
                title: '根据你的收藏推荐',
                subTitle: '',
                imgRefresh: Visibility.None,
                imgArrow: Visibility.None,
                imgMore: Visibility.None,
                isPlayer: Visibility.None
              })
                .width('90%')
              Grid() {
                ForEach(mainViewModel.getMinePodCastGridData(), (item: MidItemData) => {
                  GridItem() {
                    MidItem({ item })
                  }
                })
              }
              .columnsTemplate('1fr 1fr 1fr')
              .rowsTemplate('1fr 1fr')
              .columnsGap($r('app.float.home_grid_columnsGap'))
              .rowsGap($r('app.float.home_grid_rowGap'))
              .height('340vp')
              .width('90%')
              Text('')
                .width(CommonConstants.FULL_PARENT)
                .height($r('app.float.bottom_barHeight'))
                .align(Alignment.Top)
                .textAlign(TextAlign.Center)
            }
          }.align(Alignment.Start)
        }.margin('12vp')
        .edgeEffect(EdgeEffect.Spring)
        .nestedScroll({
          scrollForward: NestedScrollMode.PARENT_FIRST,
          scrollBackward: NestedScrollMode.SELF_FIRST
        })
      }.align(Alignment.Top)
      .tabBar(this.TabBuilder('全部', '2', 0))

      TabContent() {
        Column() {
          Text('暂无收藏播客')
            .fontColor('#e0e0e0')
            .fontSize('16fp')
            .margin('6vp')
          Row() {
            Text('发现更多播客')
              .fontSize('20fp')
            Image($r('app.media.ic_public_arrow_right'))
              .width('24vp')
              .height('24vp')
          }
          .alignItems(VerticalAlign.Center)
          .borderWidth('1vp')
          .borderRadius('20vp')
          .borderColor('#e9e9e9')
          .padding('8vp')
        }
      }.align(Alignment.Top)
      .tabBar(this.TabBuilder('播客', '', 1))

      TabContent() {
        List({ space: 10 }) {
          ForEach(mainViewModel.getMinePodCastBookItemData(), (item: MineListItemData) => {
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
      .tabBar(this.TabBuilder('有声书', '2', 2))
    }
    .barPosition(BarPosition.Start)
    .barMode(BarMode.Fixed)
    .barWidth('80%')
    .onChange((index: number) => {
      this.subCurrentIndex = index;
    })
  }
}
