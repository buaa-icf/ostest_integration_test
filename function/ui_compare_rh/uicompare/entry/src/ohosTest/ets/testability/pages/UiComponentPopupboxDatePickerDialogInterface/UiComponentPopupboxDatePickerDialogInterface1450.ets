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
struct UiComponentPopupboxDatePickerDialogInterface1450 {
  @State text: string = ""
  build() {
    Column() {
      Text(this.text)
        .margin(20)
      Button("showDatePickerDialog")
        .margin(20)
        .onClick(() => {
          DatePickerDialog.show({
            start: new Date("1970-1-1"),
            end: new Date("2100-12-31"),
            acceptButtonStyle: { primary: true },
            onAccept: (value: DatePickerResult) => {
              this.text = `onAccept(year: ${value.year}年, month: ${value.month}月, day: ${value.day}日)`;
            }
          })
        })
        .id("UiComponentPopupboxDatePickerDialogInterface1450_001")
    }.width('100%')
  }
}
