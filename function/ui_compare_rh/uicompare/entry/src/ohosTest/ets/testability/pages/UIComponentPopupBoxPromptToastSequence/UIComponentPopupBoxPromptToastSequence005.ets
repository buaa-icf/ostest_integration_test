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
struct UIComponentPopupBoxPromptToastSequence005 {
  @State buttonText: string = 'Open';
  @State message: string = '';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .id('UIComponentPopupBoxPromptToastSequence0051')

        Image('cat.jpg')
          .width(240)
          .height(240)
          .id('UIComponentPopupBoxPromptToastSequence0050')
          .onClick(() => {
            promptAction.showToast({
              message: 'this is a Toast',
              alignment: Alignment.Center,
              showMode: promptAction.ToastShowMode.TOP_MOST,
              duration: 3000
            });
          })
          .overlay("This is a overlay!", {
            align: Alignment.Bottom,
            offset: { x: 0, y: -15 }
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