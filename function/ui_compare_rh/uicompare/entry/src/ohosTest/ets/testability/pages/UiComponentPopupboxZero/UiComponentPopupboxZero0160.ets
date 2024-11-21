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
struct UiComponentPopupboxZero0160 {
  private selectTime: Date = new Date('2024-11-04T09:05:00')
  @State timeOptions: DateTimeOptions = {}
  build() {
    Column() {
      Button("参数设置undefined")
        .onClick(() => {
          this.timeOptions = {hour: undefined, minute: undefined}
        })
        .id("UiComponentPopupboxZero0160_001")
      Button("TimePickerDialog 24小时制")
        .margin(20)
        .onClick(() => {
          TimePickerDialog.show({
            selected: this.selectTime,
            useMilitaryTime: true,
            dateTimeOptions: this.timeOptions
          })
        })
        .id("UiComponentPopupboxZero0160_002")
    }.width('100%')
  }
}
