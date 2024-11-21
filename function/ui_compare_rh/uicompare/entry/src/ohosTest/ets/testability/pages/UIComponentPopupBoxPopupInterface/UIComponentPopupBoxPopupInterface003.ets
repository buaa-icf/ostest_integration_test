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

import promptAction from '@ohos.promptAction'

let customDialogId: number = 0

@Builder
function customDialogBuilder() {
  Column() {
    Text('Custom dialog Message').fontSize(20)
    Row() {
      Button("确认").onClick(() => {
        promptAction.closeCustomDialog(customDialogId)
      }).key('UIComponentPopupBoxPopupInterface003_button_002')
      Blank().width(50)
      Button("取消").onClick(() => {
        promptAction.closeCustomDialog(customDialogId)
      })
    }.margin({ top: 20 })
  }.height(100).padding(15)
}

@Entry
@Component
struct UIComponentPopupBoxPopupInterface003 {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Button('Show promptAction')
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            promptAction.openCustomDialog({
              builder: customDialogBuilder.bind(this)
            }).then((dialogId: number) => {
              customDialogId = dialogId
            })
          }).key('UIComponentPopupBoxPopupInterface003_button_001')
      }
      .width('100%')
    }
    .height('100%')
  }
}
