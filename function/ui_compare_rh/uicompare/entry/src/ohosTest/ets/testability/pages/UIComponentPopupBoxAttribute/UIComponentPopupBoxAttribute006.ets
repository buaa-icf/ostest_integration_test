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

@Entry
@Component
struct UIComponentPopupBoxAttribute006 {
  @State textValue: string = '';
  @State inputValue: string = 'click me';
  @State dxNum: string = '0';
  @State dyNum: string = '-20';
  @State offsetNum: Offset = {dx: '0', dy: '-20'};

  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: CustomDialogExample({
      cancel: () => {
        this.onCancel()
      },
      confirm: () => {
        this.onAccept()
      },
      change: () => {
        this.change()
      },
      textValue: $textValue,
      inputValue: $inputValue,
      dxNum: $dxNum,
      dyNum: $dyNum,
    }),
    cancel: this.exitApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: this.offsetNum,
    gridCount: 4,
    customStyle: false,
    cornerRadius: 10,
  })


  aboutToDisappear() {
    this.dialogController = null;
  }

  onCancel() {
    console.info('Callback when the first button is clicked');
  }

  onAccept() {
    console.info('Callback when the second button is clicked');
  }

  exitApp() {
    console.info('Click the callback in the blank area');
  }

  change() {
    this.dxNum = '100px';
    this.dyNum = '100px';
    this.offset({x: '100px', y: '100px'})
  }

  build() {
    Column() {
      Button(this.inputValue)
        .id('UIComponentPopupBoxAttribute0060')
        .onClick(() => {
          if (this.dialogController != null) {
            this.dialogController.open()
          }
        }).backgroundColor(0x317aff)
    }.width('100%').margin({ top: 5 })
  }
}

@CustomDialog
struct CustomDialogExample {
  @Link textValue: string;
  @Link inputValue: string;
  @Link dxNum: string;
  @Link dyNum: string;
  controller?: CustomDialogController;
  cancel: () => void = () => {
  }
  confirm: () => void = () => {
  }
  change: () => void = () => {

  }

  build() {
    Column({ space: 20 }) {
      Text('Change offset').fontSize(20).margin({ top: 10, bottom: 10 })
      Button('change')
        .id('UIComponentPopupBoxAttribute0061')
        .onClick(() => {
          if (this.controller != undefined) {
            this.change()
          }
        }).backgroundColor(0xffffff).fontColor(Color.Red)
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('cancel')
          .onClick(() => {
            if (this.controller != undefined) {
              this.controller.close()
              this.cancel()
            }
          }).backgroundColor(0xffffff).fontColor(Color.Black)
        Button('confirm')
          .onClick(() => {
            if (this.controller != undefined) {
              this.inputValue = this.textValue;
              this.controller.close()
              this.confirm()
            }
          }).backgroundColor(0xffffff).fontColor(Color.Red)
      }.margin({ bottom: 10 })

    }.borderRadius(10)
  }
}
