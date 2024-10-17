/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

@CustomDialog
export struct AddToListDialog {
  @Link inputListName: string;
  @State title: string = '将歌曲加入[新建歌单]或[已有歌单]';
  @State text: string = "选择已有歌单";
  @State index: number = 0;
  @State space: number = 8;
  @State arrowPosition: ArrowPosition = ArrowPosition.END;
  @Link listOptions: Array<SelectOption>;
  controller?: CustomDialogController;
  cancel: () => void = () => {
  }
  confirm: () => void = () => {
  }

  build() {
    Column() {
      Text(this.title)
        .fontSize(20)
        .margin({ top: 10, bottom: 10 })
        .fontWeight(FontWeight.Lighter)
      Row() {
        TextInput({ placeholder: '输入新建歌单名称', text: this.inputListName })
          .height(42)
          .width('40%')
          .margin(8)
          .onChange((value: string) => {
            this.inputListName = value
          })
          .id('list_name')
        if (this.listOptions.length > 0) {
          Select(this.listOptions)
            .selected(this.index)
            .value(this.text)
            .font({ size: 16, weight: 500 })
            .selectedOptionFont({ size: 16, weight: 400 })
            .optionFont({ size: 16, weight: 400 })
            .space(this.space)
            .margin(8)
            .arrowPosition(this.arrowPosition)
            .menuAlign(MenuAlignType.START, { dx: 0, dy: 0 })
            .optionWidth(200)
            .optionHeight(300)
            .onSelect((index: number, text?: string | undefined) => {
              this.index = index;
              if (text) {
                this.text = text;
                this.inputListName = text;
              }
            })
            .width('40%')
        }
      }

      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('取消')
          .backgroundColor(Color.White)
          .fontColor(Color.Black)
          .fontWeight(FontWeight.Lighter)
          .fontSize(18)
          .onClick(() => {
            if (this.controller != undefined) {
              this.controller.close()
              this.cancel()
            }
          })
        Button('确定')
          .backgroundColor(Color.White)
          .fontWeight(FontWeight.Lighter)
          .fontSize(18)
          .fontColor(Color.Red)
          .id('login_confirm')
          .onClick(() => {
            this.confirm()
          })
      }.margin({ bottom: 12, top: 12 })
    }.borderRadius(8)
  }
}