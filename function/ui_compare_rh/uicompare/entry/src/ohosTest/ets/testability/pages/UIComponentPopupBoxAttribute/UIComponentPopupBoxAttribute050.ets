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
import { promptAction } from '@kit.ArkUI'

let customDialogId: number = 0

@Builder
function customFirstDialogBuilder() {
  Column() {
    Text('Custom dialog Message').fontSize(10)
    Row() {
      Button("确认").onClick(() => {
        promptAction.closeCustomDialog(customDialogId)
      })
    }
  }.height(200).padding(5)
}

@Entry
@Component
struct UIComponentPopupBoxAttribute050 {
  @State buttonText: string = 'Open';
  @State message: string = '';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .id('UIComponentPopupBoxAttribute0501')
        Button(this.buttonText)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .id('UIComponentPopupBoxAttribute0500')
          .onClick(() => {
            promptAction.openCustomDialog({
              builder: customFirstDialogBuilder.bind(this),
              showInSubWindow: true
            }).then((dialogId: number) => {
              customDialogId = dialogId;
              this.message = '弹框已开启';
              setTimeout(() => {
                try {
                  promptAction.closeCustomDialog(customDialogId);
                  this.message = '弹框开启后已定时关闭';
                } catch (e) {
                  this.message = '弹框开启后定时关闭异常';
                }
              }, 2000);
            })
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