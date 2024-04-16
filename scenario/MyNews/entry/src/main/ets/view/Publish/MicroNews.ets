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

@Component
export default struct MicroNewsTabContent {
  build() {
    Column() {
      /* Top buttons: cancel, preview, publish */
      this.topBtns()

      Divider()
        .strokeWidth(1)
        .color($r('app.color.light_border'))

      /* Input area */
      this.inputArea()
    }
    .height('100%')
  }

  /**
   * Top buttons: cancel, preview, publish
   */
  @Builder
  topBtns() {
    Row() {
      /* Cancel button */
      Button() {
        Text($r('app.string.publish_topBtns_cancel'))// .margin({ left: 20 })
          .fontSize(14)
          .fontColor($r('app.color.light_fg'))
      }.commonBtnStyle(() => {
        router.back()
      })

      Row({ space: 20 }) {
        /* Preview button */
        Button() {
          Text($r('app.string.publish_topBtns_preview'))
            .fontSize(14)
            .fontColor($r('app.color.light_fg_shallow'))
        }.commonBtnStyle()

        /* Publish button */
        Button() {
          Text($r('app.string.publish_topBtns_publish'))
            .fontSize(14)
            .fontColor($r('app.color.light_fg_shallow'))
        }.commonBtnStyle()
      }
    }
    .width('100%')
    .height(50)
    .padding({ bottom: 10, left: 20, right: 20 })
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Bottom)
  }

  /**
   * Input area
   */
  @Builder
  inputArea() {
    Column() {
      /* Text input */
      TextArea({ placeholder: $r('app.string.publish_input_placeholder') })
        .placeholderFont({ size: 14 })
        .height(80)
        .padding(0)
        .backgroundColor(Color.Transparent)

      /* Images */
      Row() {
        Button({ type: ButtonType.Normal }) {
          Image($r('app.media.ic_public_add'))
            .size({ width: 40, height: 40 })
            .fillColor('#D8D8D8')
        }
        .width(100)
        .height(100)
        .backgroundColor('#F2F2F2')
        .onClick(() => {
        })
      }
      .width('100%')
    }
    .padding({ top: 15, left: 15, right: 15 })
  }
}