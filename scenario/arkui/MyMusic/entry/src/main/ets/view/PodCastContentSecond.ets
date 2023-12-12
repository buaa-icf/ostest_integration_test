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
import ItemData from '../viewmodel/ItemData';
import MidItemData from '../viewmodel/MidItemData';
import { RadioItem } from './RadioItem'
import mainViewModel from '../viewmodel/MainViewModel';
import { ListHead } from './ListHead';
import { MidItem } from './MidItem';
import { BookFirstItem } from './BookFirstItem';
import { BookSecondItem } from './BookSecondItem';
import BookTriItemData from '../viewmodel/BookTriItemData';
import { BookTriItem } from './BookTriItem';

/**
 * Setting tab content
 */
@Component
export default struct PodCastContentSecond {
  @State subCurrentIndex: number = CommonConstants.HOME_TAB_INDEX;
  private tabsController: TabsController = new TabsController();

  @Builder
  TabBuilder(title: string, index: number) {
    Column() {
      Text(title)
        .fontSize(this.subCurrentIndex === index ? $r('app.float.small_text_size') : $r('app.float.little_text_size'))
        .fontColor(this.subCurrentIndex === index ? Color.Black : $r('app.color.mainPage_normal'))
        .width('30%')
        .height('16vp')
        .textAlign(TextAlign.Center)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .height('32vp')
    .onClick(() => {
      this.subCurrentIndex = index;
      this.tabsController.changeIndex(this.subCurrentIndex);
    })
  }

  build() {
    Scroll() {
      Column({ space: CommonConstants.COMMON_SPACE }) {
        Scroll() {
          Row() {
            ForEach(mainViewModel.getPodCastSecond(), (item: ItemData) => {
              BookFirstItem({ item })
            }, (item: ItemData) => JSON.stringify(item))
          }
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .edgeEffect(EdgeEffect.Spring)

        //.scrollSnap({snapAlign:ScrollSnapAlign.START, snapPagination:400, enableSnapToStart:true, enableSnapToEnd:true})
        ListHead({
          title: '我的听书',
          subTitle: '听过和收藏都在这',
          imgRefresh: Visibility.None,
          imgArrow: Visibility.Visible,
          imgMore: Visibility.None,
          isPlayer: Visibility.None
        })
          .width('90%')

        Scroll() {
          Row() {
            BookSecondItem({ item: mainViewModel.getPodCastSecondVip(), imgWidth: '128vp' })
            ForEach(mainViewModel.getPodCastSecond2(), (item: ItemData) => {
              BookSecondItem({ item: item, imgWidth: '64vp' })
            }, (item: ItemData) => JSON.stringify(item))
          }
          .alignItems(VerticalAlign.Top)
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .edgeEffect(EdgeEffect.Spring)

        Tabs({
          barPosition: BarPosition.End,
          controller: this.tabsController
        }) {
          TabContent() {
            Scroll() {
              Row() {
                ForEach(mainViewModel.getBookTriData1(), (items: BookTriItemData[]) => {
                  BookTriItem({ items })
                }, (items: BookTriItemData[]) => JSON.stringify(items))
              }
              .margin($r('app.float.home_secondGrid_margin'))
              .alignItems(VerticalAlign.Top)
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)
          }
          .tabBar(this.TabBuilder('推荐榜', 0))

          TabContent() {

            Scroll() {
              Row() {
                ForEach(mainViewModel.getBookTriData1(), (items: BookTriItemData[]) => {
                  BookTriItem({ items })
                }, (items: BookTriItemData[]) => JSON.stringify(items))
              }
              .margin($r('app.float.home_secondGrid_margin'))
              .alignItems(VerticalAlign.Top)
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)
          }
          .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
          .tabBar(this.TabBuilder('免费榜', 1))

          TabContent() {

            Scroll() {
              Row() {
                ForEach(mainViewModel.getBookTriData1(), (items: BookTriItemData[]) => {
                  BookTriItem({ items })
                }, (items: BookTriItemData[]) => JSON.stringify(items))
              }
              .margin($r('app.float.home_secondGrid_margin'))
              .alignItems(VerticalAlign.Top)
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)
          }
          .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
          .tabBar(this.TabBuilder('新品榜', 2))

        }
        .width('100%')
        .barHeight('24vp')
        .height('320vp')
        .barPosition(BarPosition.Start)
        .onChange((index: number) => {
          this.subCurrentIndex = index;
        })

        Text('下滑加载更多......')
          .width(CommonConstants.FULL_PARENT)
          .height($r('app.float.bottom_barHeight'))
          .align(Alignment.Top)
          .textAlign(TextAlign.Center)
      }

      //.backgroundColor('#F9F9F9')
      //.height(CommonConstants.FULL_PARENT)
    }
    .scrollBarWidth(0)
    .height(CommonConstants.FULL_PARENT)
  }
}



