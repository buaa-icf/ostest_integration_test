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
struct UiComponentPopupboxZero0250 {
  private selectedDate: Date = new Date('2024-11-04T09:05:00')
  @State timeOptions: DateTimeOptions = {}
  build() {
    Column() {
      Button("minute前置0")
        .onClick(() => {
          this.timeOptions = {hour: "numeric", minute: "2-digit"}
        })
        .id("UiComponentPopupboxZero0250_001")
      Button("DatePickerDialog 24小时制，选中显示农历")
        .margin(20)
        .onClick(() => {
          DatePickerDialog.show({
            selected: this.selectedDate,
            lunar: true,
            showTime:true,
            useMilitaryTime: true,
            dateTimeOptions: this.timeOptions
          })
        })
        .id("UiComponentPopupboxZero0250_002")
    }.width('100%')
  }
}
