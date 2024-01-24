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
import mainViewModel from '../viewmodel/MainViewModel';
import ItemData from '../viewmodel/ItemData';
import MidItemData from '../viewmodel/MidItemData';
import FindHead from './FindHead';
import SmallItem from './SmallItem';
import ListHead from './ListHead';
import MidItem from './MidItem';
import TriTitleItemData from '../viewmodel/TriTitleItemData';
import TriTitleItem from './TriTitleItem';


/**
 * Home tab content
 */
@Component
export default struct Home {
  private swiperController: SwiperController = new SwiperController();
  @State triTitleItems: TriTitleItemData[] = [new TriTitleItemData('走进你的心', mainViewModel.getThirdGridData())];
  @State secondItems:Array<MidItemData> = mainViewModel.getSecondGridData()
  @Link isShowSidebar: boolean;
  @State isRefreshing: boolean = false
  @State mOffset: number = 0
  @State mFriction: number = 48

  @Builder
  refreshBuilder() {
    Column() {
      Text('刷新中......')
        .fontSize(16)
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .padding(24)
    .borderRadius(12)
  }

  build() {
    Column() {
      FindHead({ isShowSidebar: $isShowSidebar })
      Refresh({
        refreshing: $$this.isRefreshing,
        offset: this.mOffset,
        friction: this.mFriction,
        builder: this.refreshBuilder
      }) {
        Scroll() {
          Column({ space: CommonConstants.COMMON_SPACE }) {
            Swiper(this.swiperController) {
              ForEach(mainViewModel.getSwiperImages(), (img: Resource) => {
                Image(img).borderRadius($r('app.float.home_swiper_borderRadius'))
              })
            }
            .margin({ top: $r('app.float.home_swiper_margin') })
            .autoPlay(true)

            Scroll() {
              Row() {
                ForEach(mainViewModel.getFirstGridData(), (item: ItemData) => {
                  SmallItem({ item })
                })
              }.margin($r('app.float.home_secondGrid_margin'))
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBarColor(Color.Red) // 滚动条颜色
            .scrollBarWidth(1) // 滚动条宽度

            ListHead({
              imgRefresh: Visibility.None,
              imgArrow: Visibility.Visible,
              imgMore: Visibility.Visible,
              isPlayer: Visibility.None,
              title: '推荐歌单'
            })
            Scroll() {
              Row() {
                ForEach(this.secondItems, (item: MidItemData) => {
                  MidItem({ item })
                })
              }
              .margin($r('app.float.home_secondGrid_margin'))
              .alignItems(VerticalAlign.Top)
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)

            Divider().strokeWidth(1).color($r('app.color.divider_gray'))
            List() {
              ForEach(this.triTitleItems, (item: TriTitleItemData) => {
                ListItem() {
                  TriTitleItem({ item })
                }
              })
            }.divider({ strokeWidth: 1, color: 0xF0F0F0 })

            Text('上滑加载更多......')
              .onVisibleAreaChange([0.0, 1.0], (isVisible: boolean, currentRatio: number) => {
                console.info('Test Text isVisible: ' + isVisible + ', currentRatio:' + currentRatio)
                if (isVisible && currentRatio >= 0.5) {
                  mainViewModel.getRandomThiTitleData().then((item: TriTitleItemData) => {
                    this.triTitleItems.push(item)
                  })
                }
              })
          }
        }
        .scrollBarWidth(0)
        .height(CommonConstants.FULL_PARENT)
        .margin({ bottom: $r('app.float.bottom_barHeight') })
      }.onRefreshing(() => {
        setTimeout(() => {
          mainViewModel.getRandomThiTitleData().then((item: TriTitleItemData) => {
            this.triTitleItems.splice(0, this.triTitleItems.length, item)
            this.secondItems = mainViewModel.getSecondGridData()
          })
          this.isRefreshing = false
        }, 500)
      })
    }
    .width(CommonConstants.FULL_PARENT)
    .height(CommonConstants.FULL_PARENT)
    .alignItems(HorizontalAlign.Start)
  }
}
