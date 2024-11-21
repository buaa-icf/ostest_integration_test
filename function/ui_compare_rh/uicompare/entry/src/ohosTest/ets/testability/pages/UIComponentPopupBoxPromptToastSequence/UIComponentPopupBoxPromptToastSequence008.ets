/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import promptAction from '@ohos.promptAction';

@Entry
@Component
struct UIComponentPopupBoxPromptToastSequence008 {
  @State buttonText: string = 'Open';
  @State message: string = '';
  @State isShow: boolean = false;
  @State handlePopup: boolean = false;
  @State isShowSheet: boolean = false;
  @State sheetHeight: number = 300;

  @Builder
  myBuilder() {
    Column() {
      Button("first Button")
        .margin(10)
        .fontSize(20)

      Button("second Button")
        .margin(10)
        .fontSize(20)
    }
    .width('100%')
    .height('100%')
  }

  popupOptions: PopupOptions = {
    message: 'This is a popup',
    placementOnTop: true,
    showInSubWindow: false,
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .id('UIComponentPopupBoxPromptToastSequence0081')
        Button(this.buttonText)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .id('UIComponentPopupBoxPromptToastSequence0080')
          .onClick(() => {
            promptAction.showToast({
              message: 'this is a Toast',
              showMode: promptAction.ToastShowMode.TOP_MOST,
              duration: 3000
            });
            this.isShowSheet = true;
            this.isShow = true;
          })
          .bindSheet($$this.isShowSheet, this.myBuilder(), {
            height: this.sheetHeight,
            backgroundColor: Color.Green,
          })
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Top)
    .justifyContent(FlexAlign.Center)
  }
}