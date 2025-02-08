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

import router from '@ohos.router'
@Entry
@Component
struct TimePickerDialog01 {
  @State selectedTime :Date=new Date("2001-12-24T08:30:00")
  @State isUseMilitaryTime:boolean=false
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['qzq_TimePickerDialog_id', ''],
    ['', 'qzq_TimePickerDialog_key'],
    ['qzq_TimePickerDialog_id', 'qzq_TimePickerDialog_key'],
  ];

  build() {
    Scroll(){
      Column() {
        Text("TimePickerDialog")
          .fontSize(18)
          .margin({ top: 24 })

          Button("TimePickerDialog")
            .margin(20)
            .onClick(() => {
              this.getUIContext().showTimePickerDialog({
                selected: this.selectedTime,
                useMilitaryTime:this.isUseMilitaryTime,
                disappearTextStyle: { color: Color.Red, font: { size: 15, weight: FontWeight.Lighter } },
                textStyle: { color: Color.Black, font: { size: 20, weight: FontWeight.Normal } },
                selectedTextStyle: { color: Color.Blue, font: { size: 30, weight: FontWeight.Bolder } },
                onAccept: (value: TimePickerResult) => {
                  if (value.hour != undefined && value.minute != undefined) {
                    this.selectedTime.setHours(value.hour, value.minute)
                    console.info("TimePickerDialog:onAccept()" + JSON.stringify(value))
                  }
                },
              })
            })
        Button('change isUseMilitaryTime')
          .onClick(()=>{
            this.isUseMilitaryTime=!this.isUseMilitaryTime
          })
        Button('Back')
          .onClick(()=> {
            router.pushUrl({
              url: 'pages/IndexQ',
              params: ''
            })
          })
      }.width('100%').height('100%').backgroundColor('#F1F3F5')
    }
  }
}