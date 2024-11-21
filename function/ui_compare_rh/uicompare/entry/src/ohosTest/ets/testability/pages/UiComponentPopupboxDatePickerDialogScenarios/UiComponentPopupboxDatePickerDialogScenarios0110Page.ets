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
struct UiComponentPopupboxDatePickerDialogScenarios0110Page {
  @State uiContext: UIContext | null = null
  private selectTime: Date = new Date('2024-12-31T08:30:00')
  build() {
    Column() {
      Text("通过getUIContext()获取UIContext对象，调用showDatePickerDialog()")
        .margin(20)
        .onClick(() => {
          this.uiContext = this.getUIContext();
        })
        .id("UiComponentPopupboxDatePickerDialogScenarios0110Page_001")
      Button("DatePickerDialog")
        .margin(20)
        .onClick(() => {
          if (this.uiContext) {
            this.uiContext.showDatePickerDialog({
              selected: this.selectTime,
            })
          }
        })
        .id("UiComponentPopupboxDatePickerDialogScenarios0110Page_002")
    }.width('100%')
  }
}