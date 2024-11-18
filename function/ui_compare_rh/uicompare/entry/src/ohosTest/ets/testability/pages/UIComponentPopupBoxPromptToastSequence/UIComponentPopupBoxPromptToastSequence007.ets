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
struct UIComponentPopupBoxPromptToastSequence007 {
  @State buttonText: string = 'Open';
  @State message: string = '';
  @State isShow: boolean = false

  @Builder
  myBuilder() {
    Column() {
      Button("close modal 2")
        .margin(10)
        .fontSize(20)
        .onClick(() => {
          this.isShow = false;
        })
    }
    .width('100%')
    .height('100%')
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .id('UIComponentPopupBoxPromptToastSequence0071')
        Button(this.buttonText)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .id('UIComponentPopupBoxPromptToastSequence0070')
          .bindContentCover(this.isShow, this.myBuilder(), {
            modalTransition: ModalTransition.NONE,
            backgroundColor: Color.Orange,
            onWillAppear: () => {
              console.log("BindContentCover onWillAppear.");
            },
            onAppear: () => {
              console.log("BindContentCover onAppear.");
            },
            onWillDisappear: () => {
              console.log("BindContentCover onWillDisappear.");
            },
            onDisappear: () => {
              console.log("BindContentCover onDisappear.");
            }
          })
          .onClick(() => {
            promptAction.showToast({
              message: 'this is a Toast',
              alignment: Alignment.Top,
              showMode: promptAction.ToastShowMode.TOP_MOST,
              duration: 3000
            });
            this.isShow = true;
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