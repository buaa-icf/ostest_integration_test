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
struct UIComponentPopupBoxPromptToastSequence006 {
  @State buttonText: string = 'Open';
  @State message: string = '';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .id('UIComponentPopupBoxPromptToastSequence0061')

        Button(this.buttonText)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .id('UIComponentPopupBoxPromptToastSequence0060')
          .onClick(() => {
            promptAction.showToast({
              message: 'This is a first Toast',
              showMode: promptAction.ToastShowMode.TOP_MOST,
              alignment: Alignment.Center,
              duration: 3000
            });
            promptAction.showToast({
              message: 'This is a second Toast',
              showMode: promptAction.ToastShowMode.TOP_MOST,
              alignment: Alignment.Center,
              duration: 3000
            });
          })
      }
      .width('100%')
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}