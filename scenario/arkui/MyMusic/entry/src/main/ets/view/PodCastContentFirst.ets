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
import RadioItem from './RadioItem'
import mainViewModel from '../viewmodel/MainViewModel';
import ListHead from './ListHead';
import MidItem from './MidItem';

/**
 * Setting tab content
 */
@Component
export default struct PodCastContentFirst {
  @State subCurrentIndex: number = CommonConstants.HOME_TAB_INDEX;
  private tabsController: TabsController = new TabsController();

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Text(title)
        .fontSize(this.subCurrentIndex === index ? $r('app.float.small_text_size') : $r('app.float.little_text_size'))
        .fontColor(this.subCurrentIndex === index ? Color.Black : $r('app.color.mainPage_normal'))
        .width('20%')
        .height('16vp')
        .textAlign(TextAlign.Center)
      Image(this.subCurrentIndex === index ? $r('app.media.radio_select') : $r('app.media.radio'))
        .width('20%')
        .height('16vp')
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
            ForEach(mainViewModel.getPodCastFirst(), (item: string) => {
              Text(item)
                .width('80vp')
                .height('40vp')
                .fontSize($r('app.float.small_text_size'))
                .margin($r('app.float.home_secondGrid_margin'))
                .backgroundColor(Color.White)
                .borderRadius($r('app.float.podcast_text_border_Radius'))
                .border({ width: 1, color: 0xE0E0E0, radius: 8, style: BorderStyle.Solid })
                .textAlign(TextAlign.Center)
            }, (item: ItemData) => JSON.stringify(item))
          }
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .edgeEffect(EdgeEffect.Spring)

        Column() {
          Text(': : : : : : : : : : : : : : :  随身听FM  : : : : : : : : : : : : : : :')
            .fontColor(Color.Grey)
            .fontSize($r('app.float.little_text_size'))//.margin($r('app.float.home_secondGrid_margin'))
            .height('20%')
          Tabs({
            barPosition: BarPosition.End,
            controller: this.tabsController
          }) {
            TabContent() {
              RadioItem({ items: mainViewModel.getRadio1Data() })
            }
            .tabBar(this.TabBuilder('新闻资讯', 0,
              $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

            TabContent() {
              RadioItem({ items: mainViewModel.getRadio2Data() })
            }
            .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
            .tabBar(this.TabBuilder('英语美文', 1,
              $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

            TabContent() {
              RadioItem({ items: mainViewModel.getRadio3Data() })
            }
            .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
            .tabBar(this.TabBuilder('情感赫兹', 2,
              $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

            TabContent() {
              RadioItem({ items: mainViewModel.getRadio4Data() })
            }
            .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
            .tabBar(this.TabBuilder('真实故事', 3,
              $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

            TabContent() {
              RadioItem({ items: mainViewModel.getRadio5Data() })
            }
            .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
            .tabBar(this.TabBuilder('音乐推荐', 4,
              $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

            TabContent() {
              RadioItem({ items: mainViewModel.getRadio6Data() })
            }
            .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
            .tabBar(this.TabBuilder('搞笑段子', 5,
              $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

            TabContent() {
              RadioItem({ items: mainViewModel.getRadio7Data() })
            }
            .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
            .tabBar(this.TabBuilder('66666', 6,
              $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))

            TabContent() {
              RadioItem({ items: mainViewModel.getRadio8Data() })
            }
            .padding({ left: $r('app.float.mainPage_padding'), right: $r('app.float.mainPage_padding') })
            .tabBar(this.TabBuilder('热门翻唱', 7,
              $r('app.media.ic_screenshot_line_select'), $r('app.media.ic_screenshot_line')))
          }
          .width('100%')
          .barHeight('30%')
          .height('80%')
          .barMode(BarMode.Scrollable)
          .onChange((index: number) => {
            this.subCurrentIndex = index;
          })
        }
        .backgroundColor('#E1E1E1')
        .height('200vp')
        .width('100%')

        ListHead({
          title: '为你推荐的专属播客',
          subTitle: '兴趣定制',
          imgRefresh: Visibility.None,
          imgArrow: Visibility.None,
          imgMore: Visibility.None,
          isPlayer: Visibility.None
        })
          .width('90%')
        Grid() {
          ForEach(mainViewModel.getPodCastGridData(), (item: MidItemData) => {
            GridItem() {
              MidItem({ item })
            }
          }, (item: MidItemData) => JSON.stringify(item))
        }
        .columnsTemplate('1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .columnsGap($r('app.float.home_grid_columnsGap'))
        .rowsGap($r('app.float.home_grid_rowGap'))
        .height('340vp')
        .width('90%')

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



