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
import PodCastBigItemData from '../viewmodel/PodCastBigItemData';
import mainViewModel from '../viewmodel/MainViewModel';
import PodCastListenItem from './PodCastListenItem';
import SelectFirstItemData from '../viewmodel/SelectFirstItemData';
import SelectFirstItem from './SelectFirstItem';
import ListHead from './ListHead';
import MidItem from './MidItem';
import MidItemData from '../viewmodel/MidItemData';

/**
 * Setting tab content
 */
@Component
export default struct PodCastContentFourth {
  @State subCurrentIndex: number = CommonConstants.HOME_TAB_INDEX;
  private tabsController: TabsController = new TabsController();
  private swiperController: SwiperController = new SwiperController();

  @Builder
  TabBuilder(title: string, index: number) {
    Text(title)
      .fontColor(this.subCurrentIndex === index ? Color.White : Color.Black)
      .backgroundColor(this.subCurrentIndex === index ? '#fb7374' : Color.Transparent)
      .textAlign(TextAlign.Center)
      .padding({ top: '2vp', bottom: '2vp' })
      .borderRadius('12vp')
      .margin({ left: '12vp', right: '4vp' })
      .width('15%')
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
            ForEach(mainViewModel.getBookListenData(), (items: PodCastBigItemData[]) => {
              Row() {
                PodCastListenItem({ item: items[0] })
                PodCastListenItem({ item: items[1] })
              }
              .alignItems(VerticalAlign.Top)
              .justifyContent(FlexAlign.SpaceBetween)
            }, (items: PodCastBigItemData[]) => JSON.stringify(items))
            Swiper(this.swiperController) {
              ForEach(mainViewModel.getSwiperImages(), (img: Resource) => {
                Image(img).borderRadius($r('app.float.home_swiper_borderRadius'))
              }, (img: Resource) => JSON.stringify(img.id))
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
            }, (items: PodCastBigItemData[]) => JSON.stringify(items))
            Text('下滑加载更多......')
              .width(CommonConstants.FULL_PARENT)
              .height($r('app.float.bottom_barHeight'))
              .align(Alignment.Top)
              .textAlign(TextAlign.Center)
          }
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('热门', 0))

      TabContent() {
        Scroll() {
          Column({ space: CommonConstants.COMMON_SPACE }) {
            Scroll() {
              Row() {
                ForEach(mainViewModel.getSelectFirst(), (item: SelectFirstItemData) => {
                  SelectFirstItem({ item })
                }, (item: SelectFirstItemData) => JSON.stringify(item))
              }
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)
            .edgeEffect(EdgeEffect.Spring)

            ListHead({
              title: '正在演唱',
              subTitle: '',
              imgRefresh: Visibility.None,
              imgArrow: Visibility.None,
              imgMore: Visibility.None,
              isPlayer: Visibility.None
            })
              .width('90%')
            Column() {
              Row() {
                Image($r('app.media.fig41'))
                  .width('48vp')
                  .height('48vp')
                  .borderRadius('8vp')
                  .margin('4vp')
                Column() {
                  Text('夜夜夜夜')
                    .maxLines(1)
                    .fontColor(Color.Black)
                    .fontSize('20vp')
                    .margin('4vp')
                  Text('大家都在听')
                    .maxLines(1)
                    .fontColor(Color.Gray)
                    .margin({ left: '4vp' })
                }.alignItems(HorizontalAlign.Start)

                Blank()
                Text('一格Yi')
                  .maxLines(1)
                  .fontColor(Color.Gray)
                  .fontSize($r('app.float.small_text_size'))
                Text(' 正在唱')
                  .fontColor(Color.Gray)
                  .fontSize($r('app.float.small_text_size'))
                Image($r('app.media.ic_public_arrow_right_grey'))
                  .width('24vp')
                  .height('24vp')
              }.justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
              .margin('8vp')

              Divider().strokeWidth(1).color($r('app.color.divider_gray'))
              ForEach(mainViewModel.getSelectSecond(), (item: string[]) => {
                Row() {
                  Image($r('app.media.ic_public_music_grey'))
                    .width('18vp')
                    .height('18vp')
                  Text(item[0])
                    .maxLines(1)
                    .fontColor(Color.Black)
                    .fontSize($r('app.float.normal_text_size'))
                    .margin('4vp')
                  Blank()
                  Text(item[1])
                    .maxLines(1)
                    .fontColor(Color.Gray)
                    .fontSize($r('app.float.little_text_size'))
                  Text(' 正在唱')
                    .maxLines(1)
                    .fontColor(Color.Gray)
                    .fontSize($r('app.float.little_text_size'))
                  Image($r('app.media.ic_public_arrow_right_grey'))
                    .width('18vp')
                    .height('18vp')
                }.justifyContent(FlexAlign.SpaceBetween)
                .width('100%')
                .margin('8vp')
              }, (item: SelectFirstItemData) => JSON.stringify(item))
            }
            .padding('8vp')
            .borderRadius('12vp')
            .backgroundColor(Color.White)
            .width('90%')
            .alignItems(HorizontalAlign.Start)

            ListHead({
              title: '次元Z世代',
              subTitle: '',
              imgRefresh: Visibility.None,
              imgArrow: Visibility.None,
              imgMore: Visibility.None,
              isPlayer: Visibility.None
            })
              .width('90%')

            Scroll() {
              Row() {
                ForEach(mainViewModel.getSecondGridData(), (item: MidItemData) => {
                  MidItem({ item })
                }, (item: MidItemData) => JSON.stringify(item))
              }
              .margin($r('app.float.home_secondGrid_margin'))
              .alignItems(VerticalAlign.Top)
            }
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.Off)
          }
          .margin({ bottom: $r('app.float.bottom_barHeight') })
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('精选', 1))

      TabContent() {
        Scroll() {
          Column() {
            Swiper(this.swiperController) {
              ForEach(mainViewModel.getSwiperImages(), (img: Resource) => {
                Image(img).borderRadius($r('app.float.home_swiper_borderRadius'))
              }, (img: Resource) => JSON.stringify(img.id))
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
            }, (items: PodCastBigItemData[]) => JSON.stringify(items))
            Text('下滑加载更多......')
              .width(CommonConstants.FULL_PARENT)
              .height($r('app.float.bottom_barHeight'))
              .align(Alignment.Top)
              .textAlign(TextAlign.Center)
          }
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('音乐', 2))

      TabContent() {
        Scroll() {
          Column() {
            Swiper(this.swiperController) {
              ForEach(mainViewModel.getSwiperImages(), (img: Resource) => {
                Image(img).borderRadius($r('app.float.home_swiper_borderRadius'))
              }, (img: Resource) => JSON.stringify(img.id))
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
            }, (items: PodCastBigItemData[]) => JSON.stringify(items))
            Text('下滑加载更多......')
              .width(CommonConstants.FULL_PARENT)
              .height($r('app.float.bottom_barHeight'))
              .align(Alignment.Top)
              .textAlign(TextAlign.Center)

          }
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('情感', 3))

      TabContent() {
        Scroll() {
          Column() {
            ForEach(mainViewModel.getBookListenData(), (items: PodCastBigItemData[]) => {
              Row() {
                PodCastListenItem({ item: items[0] })
                PodCastListenItem({ item: items[1] })
              }
              .alignItems(VerticalAlign.Top)
              .justifyContent(FlexAlign.SpaceBetween)
            }, (items: PodCastBigItemData[]) => JSON.stringify(items))
          }
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('二次元', 4))

      TabContent() {
        Scroll() {
          Column() {
            Text('无法定位')
              .fontSize($r('app.float.normal_text_size'))
            Text('请在设置中打开位置开关，以查看附近的主播')
              .fontSize($r('app.float.little_text_size'))
              .margin('12vp')
            Text('去设置')
              .fontSize($r('app.float.little_text_size'))
              .fontColor(Color.Black)
              .borderRadius('12vp')
              .borderWidth('1vp')
              .borderColor(Color.Gray)
              .padding({ top: '4vp', bottom: '4vp', left: '12vp', right: '12vp' })
              .margin('12vp')
          }
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('附近', 5))

      TabContent() {
        Scroll() {
          Column() {
            ForEach(mainViewModel.getBookListenData(), (items: PodCastBigItemData[]) => {
              Row() {
                PodCastListenItem({ item: items[0] })
                PodCastListenItem({ item: items[1] })
              }
              .alignItems(VerticalAlign.Top)
              .justifyContent(FlexAlign.SpaceBetween)
            }, (items: PodCastBigItemData[]) => JSON.stringify(items))
          }
        }
        .scrollBar(BarState.Off)
      }
      .tabBar(this.TabBuilder('红人馆', 6))

    }
    .width('100%')
    .barMode(BarMode.Scrollable)
    .barHeight('24vp')
    .barPosition(BarPosition.Start)
    .onChange((index: number) => {
      this.subCurrentIndex = index;
    })
  }
}



