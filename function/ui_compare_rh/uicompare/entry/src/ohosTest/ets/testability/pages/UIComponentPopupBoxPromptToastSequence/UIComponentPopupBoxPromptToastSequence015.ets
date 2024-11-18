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
struct UIComponentPopupBoxPromptToastSequence015 {
  @State buttonText: string = 'Open';
  @State message: string = '';
  @State handlePopup: boolean = false;
  popupOptions: PopupOptions = {
    message: 'This is a popup',
    placementOnTop: true,
    showInSubWindow: false,
  }

  build() {
    Row() {
      Column() {
        TextInput()
          .id('UIComponentPopupBoxPromptToastSequence0151')
        Button(this.buttonText)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .id('UIComponentPopupBoxPromptToastSequence0150')
          .onClick(() => {
            promptAction.showToast({
              message: 'this is a first toast',
              showMode: promptAction.ToastShowMode.TOP_MOST,
              duration: 4000
            });
            promptAction.showToast({
              message: 'this is a second toast',
              showMode: promptAction.ToastShowMode.DEFAULT,
              duration: 3000
            });
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