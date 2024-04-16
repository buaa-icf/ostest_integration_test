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

import { getRandomShortStr } from '../../common/utils/RandomResource'

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
 * Top bar: search box + shopping cart button
 */
@Component
export default struct TopBar {
  build() {
    Row({ space: 15 }) {
      /* Search box */
      this.searchBox()

      /* Shopping cart button */
      Button() {
        Image($r('app.media.ic_desktop_servicewidgets'))
          .size({ width: 20, height: 20 })
          .fillColor($r('app.color.light_fg'))
      }
      .margin({ bottom: 5 })
      .commonBtnStyle()
    }
    .width('100%')
    .height(60)
    .padding({ left: 5, right: 5, bottom: 5 })
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Bottom)
  }

  /**
   * Search box
   */
  @Builder
  searchBox() {
    Row() {
      Row({ space: 10 }) {
        /* Icon */
        Image($r('app.media.ic_public_input_search'))
          .size({ width: 20, height: 20 })
          .fillColor($r('app.color.light_fg'))

        /* Text */
        Text(getRandomShortStr())
          .width('50%')
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .fontSize(12)
          .fontColor($r('app.color.light_fg_shallow'))
      }

      /* Search button */
      Button({ type: ButtonType.Normal }) {
        Text($r('app.string.mall_tab_search'))
          .fontSize(14)
          .fontColor($r('app.color.primary_fg'))
      }
      .padding({ left: 8, right: 8, top: 5, bottom: 5 })
      .backgroundColor($r('app.color.primary'))
      .borderRadius(5)
    }
    .height(35)
    .padding({ left: 10, right: 3 })
    .flexGrow(1)
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor($r('app.color.light_bg'))
    .borderWidth(2)
    .borderColor($r('app.color.primary'))
    .borderRadius(10)
  }
}