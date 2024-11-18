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
import { router } from '@kit.ArkUI'

function onJumpClick(): void {
  router.pushUrl({
    url:  "testability/pages/UiComponentPopupboxDatePickerDialogScenarios/" +
      "UiComponentPopupboxDatePickerDialogScenarios0110Page",
  }, router.RouterMode.Standard, (err) => {
    if (err) {
      console.error(`Invoke pushUrl failed, code is ${err.code}, message is ${err.message}`);
      return;
    }
    console.info('Invoke pushUrl succeeded.');
  });
}

@Entry
@Component
struct UiComponentPopupboxDatePickerDialogScenarios0110 {
  @State isDisable: boolean = false;
  build() {
    Column() {
      Button("日期滑动选择器弹窗")
        .margin(20)
        .onClick(() => {
          this.isDisable = !this.isDisable
        })
        .id("UiComponentPopupboxDatePickerDialogScenarios0110_001")
      if (this.isDisable) {
        Button("IndexPage")
          .margin(20)
          .onClick(() => {
            onJumpClick()
          })
          .id("UiComponentPopupboxDatePickerDialogScenarios0110_002")
      }
    }.width('100%')
  }
}