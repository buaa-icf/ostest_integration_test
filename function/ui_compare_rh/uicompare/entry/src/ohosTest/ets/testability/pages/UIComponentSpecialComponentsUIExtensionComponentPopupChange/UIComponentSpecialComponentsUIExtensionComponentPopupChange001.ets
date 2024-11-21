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
struct UIComponentSpecialComponentsUIExtensionComponentPopupChange001 {
  @State message: string = 'Hello';
  @State handlePopup: boolean = false;
  @State text: string = 'This is a text tip, please input text!';
  @State index: number = 0;
  controller: TextInputController = new TextInputController();

  build() {
    Row() {
      Column() {
        TextInput({ text: $$this.text, controller: this.controller })
          .placeholderFont({ size: 16, weight: 400 })
          .showUnderline(true)
          .showCounter(true, { thresholdPercentage: 50, highlightBorder: true })
          .id('UIComponentSpecialComponentsUIExtensionComponentPopupChange0010')
          .onClick(() => {
            if (!this.handlePopup) {
              this.handlePopup = true;
            }
          })
          .bindPopup(this.handlePopup, {
            message: this.text,
            placementOnTop: true,
            showInSubWindow: false,
            autoCancel: false
          })
          .width(300)
          .height(60)
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Top)
    .justifyContent(FlexAlign.Start)
  }
}

