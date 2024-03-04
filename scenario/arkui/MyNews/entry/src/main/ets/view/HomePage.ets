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
import { trendingSearchList } from '../../mock/SearchContent'


/**
 * 上部选项卡内容
 */
const tabItemList: string[] = [
  '关注',
  '推荐',
  '直播',
  '热榜',
  '发现',
  '本地', // TODO: 通过位置获取
  '视频',
  '畅听',
  '图片',
  '娱乐',
  '科技',
  '懂车帝',
  '财经',
  '军事',
  '体育'
]


/**
 * `首页` 页面内容
 */
@Component
export struct HomePage {
  @State currentTabIndex: number = 1

  build() {
    Column() {
      /* 顶栏：搜索框+按钮 */
      TopBar()

      /* Scrollable tabs + filter button */
      TabSelector({ curIdx: this.currentTabIndex })
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
 * 顶栏（搜索框+按钮）
 */
@Component
struct TopBar {
  @State handleLeftBtnClk: boolean = false
  @State curSearchTermIdx: number = 0

  build() {
    Row({ space: 8 }) {
      /* 左侧按钮 */
      Stack() {
        Image($r('app.media.ic_public_appstore_filled'))
          .padding(5)
          .size({ width: 34, height: 34 })
          .fillColor($r('app.color.primary'))
          .backgroundColor($r('app.color.primary_fg'))
          .borderRadius(17)
        Text('阅读赚金币')
          .padding({ left: 2, right: 2, top: 1, bottom: 1 })
          .fontSize(7)
          .fontColor($r('app.color.light_fg'))
          .backgroundColor('#ffcc00')
          .borderRadius(5)
      }
      .height('100%')
      .align(Alignment.Bottom)
      .onClick(() => {
        // TODO: 按钮点击事件处理
        this.handleLeftBtnClk = !this.handleLeftBtnClk
      })
      .bindPopup(this.handleLeftBtnClk, {
        message: 'TODO: 按钮点击事件处理',
      })

      /* 搜索框 */
      Row() {
        Image($r('app.media.ic_public_input_search'))
          .margin({ left: 10 })
          .size({ width: 16, height: 16 })
          .fillColor($r('app.color.light_fg_shallow'))
        Text()
      }
      .width(0)
      .height('100%')
      .flexGrow(1)
      .borderRadius(22)
      .backgroundColor($r('app.color.primary_fg'))
      .onClick(() => {
        // 将搜索页压入页面栈
        router.pushUrl({ url: 'view/SearchPage' })
      })

      /* 右侧发布按钮 */
      Column() {
        Image($r("app.media.ic_public_add_norm_filled"))
          .size({ width: 20, height: 20 })
          .fillColor($r("app.color.primary_fg"))
        Text('发布').fontSize(9).fontColor($r("app.color.primary_fg"))
      }
      .height('90%')
      .justifyContent(FlexAlign.SpaceBetween)
      .onClick(() => {
        // 将发布页压入页面栈
        router.pushUrl({ url: 'view/PublishPage' })
      })
    }
    .width('100%')
    .height(60)
    .padding({ top: 18, bottom: 6, left: 17, right: 17 })
    .alignItems(VerticalAlign.Bottom)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor($r("app.color.primary"))
  }
}


/**
 * 选项卡栏，用于切换当前 tab 内容
 */
@Component
struct TabSelector {
  @Link curIdx: number
  private scroller: Scroller = new Scroller()

  build() {
    Row() {
      Stack() {
        Scroll(this.scroller) {
          /* Scrollable tab selector. */
          Row() {
            ForEach(tabItemList, (item: string, itemIdx: number) => {
              Column({ space: 6 }) {
                Text(item)
                  .fontSize(19)
                  .fontWeight(this.curIdx === itemIdx ? FontWeight.Bold : FontWeight.Normal)
                  .fontColor(this.curIdx === itemIdx ? $r('app.color.primary') : $r('app.color.light_fg'))

                /* The line under the selected tab. */
                Line()
                  .startPoint([0, 0])
                  .endPoint([20, 0])
                  .stroke(this.curIdx === itemIdx ? $r('app.color.primary') : Color.Transparent)
                  .strokeLineCap(LineCapStyle.Round)
                  .strokeWidth(3)
              }
              .width(58)
              .height('100%')
              .padding({ bottom: 1 })
              .justifyContent(FlexAlign.End)
              .onClick(() => {
                this.curIdx = itemIdx
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
