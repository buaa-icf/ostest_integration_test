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
 * Common invisible button style
 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}

/**
 * Items in the tab selector
 */
interface tabItem {
  title: Resource
  no: string
}

const tabItemList: tabItem[] = [{
  title: $r('app.string.home_tab_following'),
  no: '01'
}, {
  title: $r('app.string.home_tab_recommendation'),
  no: '02'
}, {
  title: $r('app.string.home_tab_live'),
  no: '03'
}, {
  title: $r('app.string.home_tab_trending'),
  no: '04'
}, {
  title: $r('app.string.home_tab_discovery'),
  no: '05'
}, {
  title: $r('app.string.home_tab_locality'),
  no: '06'
}, {
  title: $r('app.string.home_tab_video'),
  no: '07'
}, {
  title: $r('app.string.home_tab_music'),
  no: '08'
}, {
  title: $r('app.string.home_tab_image'),
  no: '09'
}]

/**
 * Content of `Home` page
 */
@Component
export struct HomePage {
  @State curTabIdx: number = 1

  build() {
    Column() {
      TopBar()
      TabBar({ curIdx: this.curTabIdx })
      Divider().strokeWidth(1).color($r('app.color.light_border'))

      /* Tab content */
      Column() {
        if (this.curTabIdx === 0) {
          FollowingTabContent()
        }
        else if (this.curTabIdx === 1) {
          RecommendationTabContent() // Default
        }
        // TODO: Add other tab contents
        else {
          Text(this.curTabIdx.toString())
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
 * Top bar with a search box and buttons
 */
@Component
struct TopBar {
  @State handleLeftBtnClk: boolean = false

  build() {
    Row({ space: 4 }) {
      /* Left button: rewards */
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
      .id('home_topBar_button_01')
      .commonBtnStyle(() => {
        this.handleLeftBtnClk = false
        this.handleLeftBtnClk = true
      })
      .bindPopup(this.handleLeftBtnClk, {
        message: 'TODO: 按钮点击事件处理',
      })

      /* Search box */
      Button() {
        Row() {
          Image($r('app.media.ic_public_input_search'))
            .margin({ left: 10 })
            .size({ width: 16, height: 16 })
            .fillColor($r('app.color.light_fg_shallow'))
          Text()
        }
        .width('100%')
        .height('100%')
        .borderRadius(999)
        .backgroundColor($r('app.color.primary_fg'))
      }
      .id('home_topBar_searchBox_01')
      .width(0)
      .flexGrow(1)
      .commonBtnStyle(() => {
        router.pushUrl({ url: 'pages/SearchPage' })
      })

      /* Right button: publish */
      Button() {
        Column() {
          Image($r('app.media.ic_public_add_norm_filled'))
            .id('home_topBar_button_image_02')
            .size({ width: 20, height: 20 })
            .fillColor($r('app.color.primary_fg'))
          Text('发布')
            .id('home_topBar_button_text_02')
            .fontSize(9)
            .fontColor($r('app.color.primary_fg'))
        }
        .height('90%')
        .margin({ left: 4, right: 4 })
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .id('home_topBar_button_02')
      .commonBtnStyle(() => {
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
 * Tab bar beneath the top bar
 */
@Component
struct TabBar {
  @State handleFilterBtnClk: boolean = false
  @State handleEarphoneBtnClk: boolean = false
  @Link curIdx: number
  private scroller: Scroller = new Scroller()

  build() {
    Row() {
      Stack() {
        Scroll(this.scroller) {
          /* Horizontally scrollable tab bar */
          Row({ space: 3 }) {
            ForEach(tabItemList, (item: tabItem, itemIdx: number) => {
              /* Each tab item: text + line */
              Button() {
                Column({ space: 4 }) {
                  Text(item.title)
                    .id(`home_tabs_button_text_${item.no}`)
                    .fontSize(14)
                    .fontWeight(this.curIdx === itemIdx ? FontWeight.Bold : FontWeight.Normal)
                    .fontColor(this.curIdx === itemIdx ? $r('app.color.primary') : $r('app.color.light_fg'))
                  Line()
                    .id(`home_tabs_button_line_${item.no}`)
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
              .id(`home_tabs_button_${item.no}`)
              .commonBtnStyle(() => {
                this.curIdx = itemIdx
              })
            })
          }
          .height('100%')
        }
        .id('home_tabs_scroll_01')
        .width('100%')
        .height('100%')
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)

        /* Fade-out effect */
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

      /* Buttons on the right side */
      Row({ space: 8 }) {
        Button() {
          Image($r('app.media.ic_public_view_list'))
            .id('home_tabs_button_image_10')
            .size({ width: 14, height: 14 })
            .fillColor($r('app.color.light_fg'))
        }
        .id('home_tabs_button_10')
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
            .id('home_tabs_button_image_11')
            .size({ width: 14, height: 14 })
            .fillColor($r('app.color.light_fg'))
        }
        .id('home_tabs_button_11')
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