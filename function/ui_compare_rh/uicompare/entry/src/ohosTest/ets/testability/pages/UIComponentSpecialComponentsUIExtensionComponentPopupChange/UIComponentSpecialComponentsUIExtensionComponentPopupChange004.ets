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
struct UIComponentSpecialComponentsUIExtensionComponentPopupChange004 {
  @State message: string = 'Hello';
  @State customPopup: boolean = false;
  @State text: string =
    'This is a UIComponentSpecialComponentsUIExtensionComponentPopupChange004 tip, please input text!';
  @State index: number = 0;
  controller: TextInputController = new TextInputController();

  @Builder
  popupBuilder() {
    Row({ space: 2 }) {
      Text('This is a custom popup').fontSize(10)
    }
  }

  build() {
    Row() {
      Column() {
        TextInput({ text: $$this.text, controller: this.controller })
          .placeholderFont({ size: 16, weight: 400 })
          .showUnderline(true)
          .showCounter(true, { thresholdPercentage: 50, highlightBorder: true })
          .id('UIComponentSpecialComponentsUIExtensionComponentPopupChange0040')
          .onClick(() => {
            if (!this.customPopup) {
              this.customPopup = true;
            }
          })
          .bindPopup(this.customPopup, {
            message: this.text,
            builder: this.popupBuilder,
            placement: Placement.RightTop,
            enableArrow: true,
            showInSubWindow: false,
            autoCancel: false,
          })
          .width('100%')
          .height(60)
      }
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Top)
    .justifyContent(FlexAlign.End)
  }
}

