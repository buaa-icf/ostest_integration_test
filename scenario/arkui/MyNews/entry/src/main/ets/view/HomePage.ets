/*
 * Copyright (c) 2023 Southeast University.
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


import router from '@ohos.router';
import { FollowingTabContent } from './HomePageFollowingTab';
import { RecommendationTabContent } from './HomePageRecommendationTab';


/**
 * All the items in the tab bar.
 * 所有选项卡内容。
 */
const tabItemList: string[] = [
  '关注',
  '推荐',
  '热榜',
  '发现',
  '视频',
  '图片',
  '娱乐',
  '畅听',
  '科技',
  '懂车',
  '财经',
  '军事',
  '体育'
]


/**
 * Content in the `HomePage`.
 * `首页` 整个页面的内容。
 */
@Component
export struct HomePage {
  @State currentTabIndex: number = 1

  build() {
    Column() {
      /* Search box + publish button. */
      TopBar()

      /* Scrollable tabs + filter button */
      TabSelector({ currentIndex: this.currentTabIndex })
      Divider().color($r('app.color.light_border'))

      /* Provide different content according to the tab index. */
      Column() {
        // TODO: add other tab contents.
        if (this.currentTabIndex === 0) {
          FollowingTabContent()
        }
        else if (this.currentTabIndex === 1) {
          RecommendationTabContent()
        }
        else {
          Text(this.currentTabIndex.toString())
        }
      }
      .width('100%')
      .height(0)
      .flexGrow(1)
    }
    .width('100%')
    .height('100%')
  }
}


/**
 * Top bar in the `HomePage`, with a search box and a publish button.
 * `首页` 中的顶栏，包含一个搜索框和一个发布按钮。
 */
@Component
struct TopBar {
  build() {
    Row({ space: 12 }) {
      /* Search box */
      Search()
        .width(0)
        .height('100%')
        .margin(0)
        .flexGrow(1)
        .borderRadius(22)
        .backgroundColor($r('app.color.primary_fg'))

      /* Publish button */
      Column() {
        Image($r("app.media.ic_public_add_norm_filled"))
          .size({ width: 28, height: 28 })
          .fillColor($r("app.color.primary_fg"))
        Text('发布').fontSize(12).fontColor($r("app.color.primary_fg"))
      }
      .height('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .onClick(() => {
        /* Push the `PublishPage` into the page stack. */
        router.pushUrl({ url: 'view/PublishPage' })
      })
    }
    .width('100%')
    .height(84)
    .padding({ top: 33, bottom: 6, left: 17, right: 17 })
    .alignItems(VerticalAlign.Bottom)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor($r("app.color.primary"))
  }
}


/**
 * Tab selector in `HomePage`, for switching between tabs.
 * `首页` 中的选项卡栏，用于切换当前 tab 内容。
 */
@Component
struct TabSelector {
  @Link currentIndex: number
  private scroller: Scroller = new Scroller()

  build() {
    Row() {
      Stack() {
        Scroll(this.scroller) {
          /* Scrollable tab selector. */
          Row() {
            ForEach(tabItemList, (item: string, itemIndex: number) => {
              Column({ space: 6 }) {
                Text(item)
                  .fontSize(19)
                  .fontWeight(this.currentIndex === itemIndex ? FontWeight.Bold : FontWeight.Normal)
                  .fontColor(this.currentIndex === itemIndex ? $r('app.color.primary') : $r('app.color.light_fg'))

                /* The line under the selected tab. */
                Line()
                  .startPoint([0, 0])
                  .endPoint([20, 0])
                  .stroke(this.currentIndex === itemIndex ? $r('app.color.primary') : Color.Transparent)
                  .strokeLineCap(LineCapStyle.Round)
                  .strokeWidth(3)
              }
              .width(58)
              .height('100%')
              .padding({ bottom: 1 })
              .justifyContent(FlexAlign.End)
              .onClick(() => {
                this.currentIndex = itemIndex
              })
            })
          }
          .height('100%')
        }
        .width('100%')
        .height('100%')
        .padding(10)
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)

        /* Text fade-out effect. */
        Row()
          .width(30)
          .height('100%')
          .linearGradient({
            angle: 90,
            colors: [['#00FFFFFF', 0.0], ['#FFFFFFFF', 1.0]]
          })
      }
      .width(0)
      .height('100%')
      .flexGrow(1)
      .alignContent(Alignment.End)


      /* Buttons on the right side. */
      Row({ space: 8 }) {
        Image($r("app.media.ic_public_view_list"))
          .size({ width: 22, height: 22 })
          .fillColor($r('app.color.light_fg'))

        Divider()
          .strokeWidth(2)
          .height(14)
          .vertical(true)
          .color($r('app.color.light_border'))

        Image($r("app.media.ic_device_earphone"))
          .size({ width: 22, height: 22 })
          .fillColor($r('app.color.light_fg'))
      }
      .height('100%')
      .padding({ left: 4, right: 18 })
    }
    .width('100%')
    .height(42)
  }
}
