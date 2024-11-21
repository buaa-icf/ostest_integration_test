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
struct CustomDialogExample006 {
  controller?: CustomDialogController
  cancel: () => void = () => {
  }
  confirm: () => void = () => {
  }

  build() {
    Column() {
      Text('这是自定义弹窗')
        .fontSize(30)
        .height(100)
      Button('点我关闭弹窗')
        .onClick(() => {
          if (this.controller != undefined) {
            this.controller.close()
          }
        })
        .margin(20)
    }
  }
}

@Entry
@Component
struct UIComponentPopupBoxFullDialogInterface006 {
  @State index: number = 0;
  private alignmentArr: number[] =
    [DialogAlignment.Center, DialogAlignment.Bottom, DialogAlignment.Top, DialogAlignment.CenterStart,
      DialogAlignment.BottomStart];

  onCancel() {
    console.info('Callback when the first button is clicked')
  }

  onAccept() {
    console.info('Callback when the second button is clicked')
  }

  existApp() {
    console.info('Click the callback in the blank area')
  }

  build() {
    Column() {
      Button('maskColor动态更新')
        .onClick(() => {
          let dialogController: CustomDialogController | null = new CustomDialogController({
            builder: CustomDialogExample006({}),
            cancel: this.existApp,
            autoCancel: true,
            alignment: this.alignmentArr[this.index],
            offset: { dx: 0, dy: -20 },
            customStyle: false,
            cornerRadius: 20,
            width: 300,
            height: 200,
            borderStyle: BorderStyle.Dashed, //使用borderStyle属性，需要和borderWidth属性一起使用
            borderColor: Color.Blue, //使用borderColor属性，需要和borderWidth属性一起使用
            backgroundColor: Color.White,
          })
          dialogController.open();
          if (this.index == 4) {
            this.index = -1;
          }
          this.index++;
        }).backgroundColor(0x317aff).key('UIComponentPopupBoxFullDialogInterface006_button_001')
    }.width('100%').margin({ top: 5 })
  }
}