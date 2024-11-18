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

@CustomDialog
struct CustomDialogExamplePopup {
  @Link textValue: string
  @Link inputValue: string
  controller?: CustomDialogController
  @State fontColor: number = Color.Black;

  build() {
    Column() {
      Text('Change text')
        .fontSize(20)
        .margin({ top: 10 })
        .fontColor(this.fontColor)
        .onClick(() => {
          this.fontColor = Color.Blue;
        })
        .key('UIComponentPopupBoxPopupInterface001_text_001')
      TextInput({ placeholder: '', text: this.textValue })
        .height(60)
        .width('90%')
        .onChange((value: string) => {
          this.textValue = value
        })
        .margin(10)
        .key('UIComponentPopupBoxPopupInterface001_textInput_001')
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('cancel')
          .onClick(() => {
            if (this.controller != undefined) {
              this.controller.close()
            }
          }).backgroundColor(0xffffff).fontColor(Color.Black)
        Button('confirm')
          .onClick(() => {
            if (this.controller != undefined) {
              this.controller.close()
            }
          }).backgroundColor(0xffffff).fontColor(Color.Red)
      }.borderRadius(10)
    }
  }
}

@Entry
@Component
struct UIComponentPopupBoxPopupInterface001 {
  @State textValue: string = '';
  @State inputValue: string = 'show dialog';
  dialogController: CustomDialogController | null = new CustomDialogController({
    builder: CustomDialogExamplePopup({
      textValue: $textValue,
      inputValue: $inputValue
    }),
    cancel: this.exitApp,
    autoCancel: true,
    alignment: DialogAlignment.Bottom,
    offset: { dx: 0, dy: -200 },
    gridCount: 4,
    customStyle: false,
    cornerRadius: 10,
  })

  exitApp() {
    this.dialogController?.close()
  }

  build() {
    Column() {
      Button(this.inputValue)
        .onClick(() => {
          if (this.dialogController != null) {
            this.dialogController.open()
          }
        }).backgroundColor(0x317aff).key('UIComponentPopupBoxPopupInterface001_button_001')
    }.width('100%').margin({ top: 5 })
  }
}
