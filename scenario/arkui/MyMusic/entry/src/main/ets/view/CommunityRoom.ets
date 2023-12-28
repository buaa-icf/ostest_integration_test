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

import mainViewModel from '../viewmodel/MainViewModel';
import PodCastListenItem from './PodCastListenItem';
import PodCastBigItemData from '../viewmodel/PodCastBigItemData';
import BookFirstItem from './BookFirstItem';
import ItemData from '../viewmodel/ItemData';


/**
 * Home tab content
 */
@Component
export default struct CommunityRoom {
  @State subCurrentIndex: number = 0;
  private tabsController: TabsController = new TabsController();
  private swiperController: SwiperController = new SwiperController();

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Text(title)
        .fontSize($r('app.float.normal_text_size'))
        .fontColor(this.subCurrentIndex === index ? '#f0f0f0' : '#0e0e0e')
        .borderRadius('20vp')
        .padding({ top: '4vp', bottom: '4vp', left: '8vp', right: '8vp' })
        .margin({ left: '20vp', right: '20vp' })
        .textAlign(TextAlign.Center)
        .backgroundColor(this.subCurrentIndex === index ? '#E02020' : '#00ffffff')
    }
    .height('36vp')
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
        Scroll() {
          Column() {
            Row() {
              Row() {
                Image($r('app.media.home_selected'))
                  .width('32vp')
                  .height('32vp')
                  .margin('8vp')
                Text('创建房间').fontSize('20fp')
              }.width('48%')
              .alignItems(VerticalAlign.Center)
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#22e00000')
              .borderRadius('12vp')

              Row() {
                Image($r('app.media.circle'))
                  .width('32vp')
                  .height('32vp')
                  .margin('8vp')
                Text('排行榜').fontSize('20fp')
              }.width('48%')
              .backgroundColor('#22e00000')
              .borderRadius('12vp')
              .alignItems(VerticalAlign.Center)
              .justifyContent(FlexAlign.Center)
            }.width('90%')
            .alignItems(VerticalAlign.Center)
            .justifyContent(FlexAlign.SpaceBetween)

            Scroll() {
              Row() {
                ForEach(mainViewModel.getPodCastSecond(), (item: ItemData) => {
                  BookFirstItem({ item })
                    .margin({left:'8vp'})
                })
              }
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)
            .edgeEffect(EdgeEffect.Spring)

            Swiper(this.swiperController) {
              ForEach(mainViewModel.getSwiperImages(), (img: Resource) => {
                Image(img).borderRadius($r('app.float.home_swiper_borderRadius'))
              })
            }
            .margin({ top: $r('app.float.home_swiper_margin') })
            .height('120vp')
            .width('90%')
            .autoPlay(true)

            ForEach(mainViewModel.getBookListenData(), (items: PodCastBigItemData[]) => {
              Row() {
                PodCastListenItem({ item: items[0] })
                PodCastListenItem({ item: items[1] })
              }
              .alignItems(VerticalAlign.Top)
              .justifyContent(FlexAlign.SpaceBetween)
            })
            Text('下滑加载更多......')
              .width('100%')
              .height($r('app.float.bottom_barHeight'))
              .align(Alignment.Top)
              .textAlign(TextAlign.Center)
          }
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('歌房', 0,
        $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

      TabContent() {
        Scroll() {
          Column() {
            Swiper(this.swiperController) {
              ForEach(mainViewModel.getSwiperImages(), (img: Resource) => {
                Image(img).borderRadius($r('app.float.home_swiper_borderRadius'))
              })
            }
            .margin({ top: $r('app.float.home_swiper_margin') })
            .height('120vp')
            .width('90%')
            .autoPlay(true)

            ForEach(mainViewModel.getBookListenData(), (items: PodCastBigItemData[]) => {
              Row() {
                PodCastListenItem({ item: items[0] })
                PodCastListenItem({ item: items[1] })
              }
              .alignItems(VerticalAlign.Top)
              .justifyContent(FlexAlign.SpaceBetween)
            })
            Text('下滑加载更多......')
              .width('100%')
              .height($r('app.float.bottom_barHeight'))
              .align(Alignment.Top)
              .textAlign(TextAlign.Center)
          }
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('交友', 1,
        $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))
    }
    .width('100%')
    .barHeight('36vp')
    .barWidth('70%')
    .barMode(BarMode.Scrollable)
    .barPosition(BarPosition.Start)
    .onChange((index: number) => {
      this.subCurrentIndex = index;
    })
  }
}
