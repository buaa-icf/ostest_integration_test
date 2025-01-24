/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

@Entry
@Component
struct TimePickerExample {
  @State isMilitaryTime: boolean = false
  @State format: TimePickerFormat = TimePickerFormat.HOUR_MINUTE
  private  dateTimeOptions: Intl.DateTimeFormatOptions = {hour: 'numeric', minute: '2-digit', second: '2-digit'}
  private selectedTime: Date = new Date('2022-07-22T08:00:00')
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['jz_timePicker_id', ''],
    ['', 'jz_timePicker_key'],
    ['jz_timePicker_id', 'jz_timePicker_key'],
  ];

  build() {
    Scroll() {
      Column() {
        Text('TimePicker with changeable state variables')
          .fontSize(18)
          .margin({bottom: 24})

        Button('切换12小时制/24小时制')
          .margin(30)
          .onClick(() => {
            this.isMilitaryTime = !this.isMilitaryTime
          })
        Button('切换按照小时和分显示/按照小时、分钟和秒显示')
          .margin(30)
          .onClick(() => {
            if (this.format == TimePickerFormat.HOUR_MINUTE) {
              this.format = TimePickerFormat.HOUR_MINUTE_SECOND;
            } else {
              this.format = TimePickerFormat.HOUR_MINUTE;
            }
          })

        ForEach(this.idOrKeyArray, (item: Array<string>) => {
          TimePicker({
            selected: this.selectedTime,
            format: this.format
          })
            .useMilitaryTime(this.isMilitaryTime)
            .onChange((value: TimePickerResult) => {
              if(value.hour >= 0) {
                this.selectedTime.setHours(value.hour, value.minute)
                console.info('select current date is: ' + JSON.stringify(value))
              }
            })
            .disappearTextStyle({color: Color.Red, font: {size: 15, weight: FontWeight.Lighter}})
            .textStyle({color: Color.Black, font: {size: 20, weight: FontWeight.Normal}})
            .selectedTextStyle({color: Color.Blue, font: {size: 30, weight: FontWeight.Bolder}})
            .dateTimeOptions(this.dateTimeOptions)
            .id(item[0])
            .key(item[1])
        })
      }.width('100%')
    }
  }
}
