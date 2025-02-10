/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { promptAction } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

let customDialogId: number = 0
@Builder
function customStyleDialogBuilder() {
  Column() {
    Text('Custom dialog message01').fontSize(10)
    Row() {
      Button("确认").onClick(() => {
        promptAction.closeCustomDialog(customDialogId)
      })
      Blank().width(50)
      Button("取消").onClick(() => {
        promptAction.closeCustomDialog(customDialogId)
      })
    }
    Text('Custom dialog message02').fontSize(10)
  }
}

@Entry
@Component
struct customDialogExample {
  private customDialogComponentId: number = 0
  @State message: string = 'Hello World'

  @Builder
  customStyleDialogComponent() {
    customStyleDialogBuilder()
  }

  @Builder
  customDialogComponent() {
    Row() {
      Column() {
        Text('弹窗').fontSize(30)
        Row({ space: 50 }) {
          Button("确认").onClick(() => {
            try {
              promptAction.closeCustomDialog(this.customDialogComponentId)
            } catch (error) {
              let message = (error as BusinessError).message;
              let code = (error as BusinessError).code;
              console.error(`closeCustomDialog error code is ${code}, message is ${message}`);
            }
          })
          Button("取消").onClick(() => {
            try {
              promptAction.closeCustomDialog(this.customDialogComponentId)
            } catch (error) {
              let message = (error as BusinessError).message;
              let code = (error as BusinessError).code;
              console.error(`closeCustomDialog error code is ${code}, message is ${message}`);
            }
          })
        }
      }.height(200).padding(5).justifyContent(FlexAlign.SpaceBetween)
    }
  }

  build() {
    Scroll() {
      Column() {
        Text("promptAction.openCustomDialog()")
          .fontSize(18)
          .margin({top: 24, bottom: 24})

        Button('CustomDialog01')
          .fontSize(30)
          .onClick(() => {
            promptAction.openCustomDialog({
              builder: () => {
                this.customDialogComponent()
              },
              onWillDismiss: (dismissDialogAction: DismissDialogAction) => {
                console.info("reason" + JSON.stringify(dismissDialogAction.reason))
                console.log("dialog onWillDismiss")
                if (dismissDialogAction.reason == DismissReason.PRESS_BACK) {
                  dismissDialogAction.dismiss()
                }
                if (dismissDialogAction.reason == DismissReason.TOUCH_OUTSIDE) {
                  dismissDialogAction.dismiss()
                }
              }
            }).then((dialogId: number) => {
              this.customDialogComponentId = dialogId
            })
              .catch((error: BusinessError) => {
                console.error(`openCustomDialog error code is ${error.code}, message is ${error.message}`)
              })
          })
          .margin({top: 10, bottom: 10})

        Button('CustomDialog02')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            promptAction.openCustomDialog({
              builder: () => {
                this.customStyleDialogComponent()
              },
              keyboardAvoidMode: KeyboardAvoidMode.NONE,
              showInSubWindow: false,
              offset: { dx: 5, dy: 5 },
              backgroundColor: 0xd9ffffff,
              cornerRadius: 20,
              width: '80%',
              height: 200,
              borderWidth: 1,
              borderStyle: BorderStyle.Dashed,
              borderColor: Color.Blue,
              shadow: ({
                radius: 20,
                color: Color.Grey,
                offsetX: 50,
                offsetY: 0
              }),
            }).then((dialogId: number) => {
              customDialogId = dialogId
            })
          })
          .margin({top: 10, bottom: 10})

      }.width('100%')
    }.height('100%')
  }
}

