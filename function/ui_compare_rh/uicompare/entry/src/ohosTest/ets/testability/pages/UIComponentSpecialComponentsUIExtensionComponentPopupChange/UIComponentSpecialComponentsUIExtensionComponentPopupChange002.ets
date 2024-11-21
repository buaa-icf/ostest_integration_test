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

import window from "@ohos.window";

@Entry
@Component
struct UIComponentSpecialComponentsUIExtensionComponentPopupChange002 {
  @State message: string = 'Hello';
  @State handlePopup: boolean = false;
  @State text: string = 'This is a text tip';
  @State index: number = 0;
  controller: TextInputController = new TextInputController();

  private changeOrientation() {
    try {
      window.getLastWindow(getContext(this), (err, data) => {
        if (err.code) {
          return;
        }
        let windowClass = data;
        let orientation = window.Orientation.LANDSCAPE;
        try {
          windowClass.setPreferredOrientation(orientation, (err) => {
            if (err.code) {
              return;
            }
          });
        } catch (exception) {
        }
        ;
      });
    } catch (exception) {
    }
  }

  build() {
    Row() {
      Column() {
        TextInput({ text: $$this.text, controller: this.controller })
          .placeholderFont({ size: 16, weight: 400 })
          .showUnderline(true)
          .showCounter(true, { thresholdPercentage: 50, highlightBorder: true })
          .id('UIComponentSpecialComponentsUIExtensionComponentPopupChange0020')
          .onClick(() => {
            if (!this.handlePopup) {
              this.handlePopup = true;
            }
          })
          .onChange(() => {
            this.index++;
            if (this.index === 3) {
              this.changeOrientation();
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

