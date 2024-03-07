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


/* 定义通用无底色、无按压效果按钮样式 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}


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
  @State curTabIdx: number = 1

  build() {
    Column() {
      /* 顶栏：搜索框+按钮 */
      TopBar()

      /* 可左右滑动的选项卡+按钮 */
      TabSelector({ curIdx: this.curTabIdx })

      Divider().strokeWidth(1).color($r('app.color.light_border'))

      /* 下方页面内容 */
      Column() {
        if (this.curTabIdx === 0) {
          FollowingTabContent() // 默认显示推荐页
        }
        else if (this.curTabIdx === 1) {
          RecommendationTabContent()
        }
        // TODO: 添加其他选项卡对应的页面
        else {
          Text(this.curTabIdx.toString())
        }
      }
      .width('100%')
      .height(0)
      .flexGrow(1)
    }
    .id('homePage')
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

  build() {
    Row({ space: 4 }) {
      /* 左侧奖励按钮 */
      Button() {
        Stack() {
          Image($r('app.media.ic_public_appstore_filled'))
            .padding(5)
            .size({ width: 34, height: 34 })
            .fillColor($r('app.color.primary'))
            .backgroundColor($r('app.color.primary_fg'))
            .borderRadius(999)
          Text('阅读赚金币')
            .padding({ left: 2, right: 2, top: 1, bottom: 1 })
            .fontSize(7)
            .fontColor($r('app.color.light_fg'))
            .backgroundColor('#ffcc00')
            .borderRadius(999)
        }
        .height('100%')
        .align(Alignment.Bottom)
      }
      .id('homePageTopBarRewardBtn')
      .commonBtnStyle(() => {
        // TODO: 按钮点击事件处理
        this.handleLeftBtnClk = false
        this.handleLeftBtnClk = true
      })
      .bindPopup(this.handleLeftBtnClk, {
        message: 'TODO: 按钮点击事件处理',
      })

      /* 搜索框 */
      Button() {
        Row() {
          Image($r('app.media.ic_public_input_search'))
            .margin({ left: 10 })
            .size({ width: 16, height: 16 })
            .fillColor($r('app.color.light_fg_shallow'))
          Text() // TODO: 添加滚动热搜词条
        }
        .width('100%')
        .height('100%')
        .borderRadius(999)
        .backgroundColor($r('app.color.primary_fg'))
      }
      .id('homePageTopBarSearchBox')
      .width(0)
      .flexGrow(1)
      .commonBtnStyle(() => {
        // 将搜索页压入页面栈
        router.pushUrl({ url: 'pages/SearchPage' })
      })

      /* 右侧发布按钮 */
      Button() {
        Column() {
          Image($r('app.media.ic_public_add_norm_filled'))
            .size({ width: 20, height: 20 })
            .fillColor($r('app.color.primary_fg'))
          Text('发布').fontSize(9).fontColor($r('app.color.primary_fg'))
        }
        .height('90%')
        .margin({ left: 4, right: 4 })
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .id('homePageTopBarPublishBtn')
      .commonBtnStyle(() => {
        // 将发布页压入页面栈
        router.pushUrl({ url: 'pages/PublishPage' })
      })
    }
    .width('100%')
    .height(57)
    .padding({ top: 18, bottom: 6, left: 10, right: 10 })
    .alignItems(VerticalAlign.Bottom)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor($r('app.color.primary'))
  }
}


/**
 * 选项卡栏，用于切换当前 tab 内容
 */
@Component
struct TabSelector {
  @State handleFilterBtnClk: boolean = false
  @State handleEarphoneBtnClk: boolean = false
  @Link curIdx: number
  private scroller: Scroller = new Scroller()

  build() {
    Row() {
      Stack() {
        Scroll(this.scroller) {
          /* 可左右滑动的选项卡栏 */
          Row({ space: 3 }) {
            ForEach(tabItemList, (item: string, itemIdx: number) => {
              Button() {
                Column({ space: 4 }) {
                  /* 选项卡文字 */
                  Text(item)
                    .fontSize(14)
                    .fontWeight(this.curIdx === itemIdx ? FontWeight.Bold : FontWeight.Normal)
                    .fontColor(this.curIdx === itemIdx ? $r('app.color.primary') : $r('app.color.light_fg'))
                  /* 文字下方线条 */
                  Line()
                    .startPoint([0, 0])
                    .endPoint([16, 0])
                    .stroke(this.curIdx === itemIdx ? $r('app.color.primary') : Color.Transparent)
                    .strokeLineCap(LineCapStyle.Round)
                    .strokeWidth(2)
                }
                .height('100%')
                .padding({ left: 14, bottom: 1 })
                .justifyContent(FlexAlign.End)
              }
              .commonBtnStyle(() => {
                this.curIdx = itemIdx
              })
            })
          }
          .height('100%')
        }
        .id('homePageTabSelector')
        .width('100%')
        .height('100%')
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)

        /* 文字的渐隐效果 */
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

      /* 右侧的按钮 */
      Row({ space: 8 }) {
        Button() {
          Image($r('app.media.ic_public_view_list'))
            .size({ width: 14, height: 14 })
            .fillColor($r('app.color.light_fg'))
        }
        .commonBtnStyle(() => {
          this.handleFilterBtnClk = false
          this.handleFilterBtnClk = true
        })
        .bindPopup(this.handleFilterBtnClk, {
          message: 'TODO: 按钮点击事件处理'
        })

        Divider()
          .strokeWidth(2)
          .height(14)
          .vertical(true)
          .color($r('app.color.light_border'))

        Button() {
          Image($r('app.media.ic_device_earphone'))
            .size({ width: 14, height: 14 })
            .fillColor($r('app.color.light_fg'))
        }
        .commonBtnStyle(() => {
          this.handleEarphoneBtnClk = false
          this.handleEarphoneBtnClk = true
        })
        .bindPopup(this.handleEarphoneBtnClk, {
          message: 'TODO: 按钮点击事件处理'
        })
      }
      .height('100%')
      .padding({ left: 4, right: 14 })
    }
    .width('100%')
    .height(30)
  }
}
