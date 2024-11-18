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
struct UiComponentPopupboxZero0290 {
  private selectTime: Date = new Date('2024-11-04T09:05:00')
  @State hour: string = ""
  @State minute: string = ""
  @State hourCycle: string = ""
  @State timeStyle: string = ""
  build() {
    Column() {
      Button("minute前置0")
        .margin(20)
        .onClick(() => {
          this.hour = "numeric"
          this.minute = "2-digit"
        })
        .id("UiComponentPopupboxZero0290_001")
      Button("hourCycle为24/timeStyle设置full")
        .margin(20)
        .onClick(() => {
          this.hourCycle = "h24"
          this.timeStyle = "full"
        })
        .id("UiComponentPopupboxZero0290_002")
      Button("TimePickerDialog 24小时制")
        .margin(20)
        .onClick(() => {
          TimePickerDialog.show({
            selected: this.selectTime,
            useMilitaryTime: true,
            dateTimeOptions: {hour: this.hour, minute: this.minute, hourCycle: this.hourCycle, timeStyle: this.timeStyle}
          })
        })
        .id("UiComponentPopupboxZero0290_003")
    }.width('100%')
  }
}
