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

import router from '@ohos.router'
import { getRandomShortStr } from '../../common/utils/RandomResource'
import { SearchPageParams } from '../../viewmodel/RouterParams'

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
 * Top bar: search box + publish button
 */
@Component
export default struct TopBar {
  @State trendingTopicList: string[] = []
  timeoutID: number = 0

  aboutToAppear() {
    // Generate trending topics
    for (let i = 0; i < 2; ++i) {
      this.trendingTopicList.push(getRandomShortStr())
    }
    this.timeoutID = setInterval(() => {
      // Refresh
      for (let i = 0; i < 2; ++i) {
        this.trendingTopicList[i] = getRandomShortStr()
      }
    }, 3000);
  }

  aboutToDisappear() {
    clearInterval(this.timeoutID)
  }

  build() {
    Row({ space: 10 }) {
      /* Search box */
      this.searchBox()

      /* Buttons */
      this.btns()
    }
    .width('100%')
    .height(60)
    .padding({ bottom: 5, left: 10, right: 10 })
    .alignItems(VerticalAlign.Bottom)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor($r('app.color.primary'))
  }

  /**
   * Search box
   */
  @Builder
  searchBox() {
    Button() {
      Row({ space: 5 }) {
        Image($r('app.media.ic_public_input_search'))
          .margin({ left: 10 })
          .size({ width: 16, height: 16 })
          .fillColor($r('app.color.light_fg_shallow'))
        Text(`${this.trendingTopicList[0]} | ${this.trendingTopicList[1]}`)
          .width('90%')
          .fontSize(12)
          .fontColor($r('app.color.light_fg'))
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
      }
      .width('100%')
      .height('100%')
      .borderRadius(999)
      .backgroundColor($r('app.color.primary_fg'))
    }
    .width(0)
    .height(35)
    .flexGrow(1).commonBtnStyle(() => {
      router.pushUrl({
        url: 'pages/SearchPage',
        params: { curTrendingTopicList: this.trendingTopicList } as SearchPageParams
      })
    })
  }

  /**
   * Buttons
   */
  @Builder
  btns() {
    Button() {
      Column({ space: 2 }) {
        Image($r('app.media.ic_public_add_norm_filled'))
          .size({ width: 20, height: 20 })
          .fillColor($r('app.color.primary_fg'))
        Text($r('app.string.home_topBar_publish'))
          .fontSize(9)
          .fontColor($r('app.color.primary_fg'))
      }
    }
    .commonBtnStyle(() => {
      router.pushUrl({ url: 'pages/PublishPage' })
    })
  }
}