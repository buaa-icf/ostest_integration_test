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


// xxx.ets
@CustomDialog
struct CustomDialogExample009_1 {
  controllerTwo?: CustomDialogController

  build() {
    Column() {
      Text('我是第二个弹窗showInSubWindow=false')
      Button('点我关闭第二个弹窗')
        .onClick(() => {
          if (this.controllerTwo != undefined) {
            this.controllerTwo.close()
          }
        })
        .margin(20)
    }
  }
}

@CustomDialog
@Component
struct CustomDialogExample009 {
  dialogControllerTwo: CustomDialogController | null = new CustomDialogController({
    builder: CustomDialogExample009_1(),
    alignment: DialogAlignment.Bottom,
    showInSubWindow:false,
    offset: { dx: 0, dy: -20 }
  })
  controller?: CustomDialogController
  cancel: () => void = () => {
  }
  confirm: () => void = () => {
  }

  build() {
    Column() {
      Text('Change text').fontSize(20).margin({ top: 10, bottom: 10 })
      Button('点我打开第二个弹窗')
        .onClick(() => {
          if (this.dialogControllerTwo != null) {
            this.dialogControllerTwo.open()
          }
        }).key('UIComponentPopupBoxFullDialogInterface009_button_02')
        .margin(20)
    }.borderRadius(10)

  }
}

@Entry
@Component
struct UIComponentPopupBoxFullDialogInterface009 {
  @State inputValue: string = 'show Dialog';
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: CustomDialogExample009({
      cancel: () => {
        this.onCancel()
      },
      confirm: () => {
        this.onAccept()
      }
    }),
    cancel: this.exitApp,
    alignment: DialogAlignment.Center,
    offset: { dx: 0, dy: -20 },
    gridCount: 4,
    showInSubWindow: true,
    isModal: true,
    customStyle: false,
    cornerRadius: 10,
  })

  aboutToDisappear() {
    this.dialogController = null // 将dialogController置空
  }

  onCancel() {
    console.info('Callback when the first button is clicked')
  }

  onAccept() {
    console.info('Callback when the second button is clicked')
  }

  exitApp() {
    console.info('Click the callback in the blank area')
  }

  build() {
    Column() {
      Button(this.inputValue)
        .onClick(() => {
          if (this.dialogController != null) {
            this.dialogController.open()
          }
        }).backgroundColor(0x317aff).key('UIComponentPopupBoxFullDialogInterface009_button_001')
    }.width('100%').margin({ top: 5 })
  }
}