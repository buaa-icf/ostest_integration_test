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
 * Top bar: back button + search box + search button
 */
@Component
export default struct TopBar {
  @Prop trendingTopic: string
  @Link searchHistoryList: string[]
  @Link searchInput: string

  build() {
    Row({ space: 5 }) {
      /* Back button */
      Button() {
        Image($r('app.media.ic_public_arrow_left'))
          .size({ width: 30, height: 30 })
          .fillColor($r('app.color.light_fg'))
      }
      .commonBtnStyle(() => {
        router.back()
      })

      /* Search box */
      Search({ value: $$this.searchInput, placeholder: this.trendingTopic })
        .width(0)
        .height('100%')
        .flexGrow(1)
        .cancelButton({ style: CancelButtonStyle.INPUT })
        .textFont({ size: 13 })
        .placeholderFont({ size: 13 })
        .borderRadius(999)
        .backgroundColor($r('app.color.main_tab_bg'))

      /* Search button */
      Button() {
        Text($r('app.string.search_topBar_search'))
          .margin({ left: 10 })
          .fontSize(14)
          .fontColor($r('app.color.primary'))
      }
      .commonBtnStyle(() => {
        if (this.searchInput === '') {
          this.searchInput = this.trendingTopic
        }
        this.searchInput = this.searchInput.trim()
        if (this.searchInput.length) {
          this.searchHistoryList.unshift(this.searchInput)
          this.searchHistoryList = Array.from(new Set(this.searchHistoryList))
          // TODO(ljj): search result content
        }
      })
    }
    .width('100%')
    .height(60)
    .padding({ left: 6, right: 14, top: 18, bottom: 10 })
  }
}