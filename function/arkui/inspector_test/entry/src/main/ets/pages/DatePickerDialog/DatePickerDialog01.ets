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
struct DatePickerDialog01 {
  @State selectedDate :Date=new Date("2000-1-1")
  @State isShowTimed:boolean=false
  @State isUseMilitaryTime:boolean=false
  @State lunarswitch:boolean=false
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['qzq_DatePickerDialog_id', ''],
    ['', 'qzq_DatePickerDialog_key'],
    ['qzq_DatePickerDialog_id', 'qzq_DatePickerDialog_key'],
  ];

  build() {
    Scroll(){
    Column() {
      Text("DatePickerDialog")
        .fontSize(18)
        .margin({ top: 24 })
        Button("DatePickerDialog")
          .margin(20)
          .onClick(() => {
            this.getUIContext().showDatePickerDialog({
              start: new Date("2000-1-1"),
              end: new Date("2100-12-31"),
              selected: this.selectedDate ,
              showTime:this.isShowTimed,
              lunarSwitch:this.lunarswitch,
              useMilitaryTime:this.isUseMilitaryTime,
              disappearTextStyle: {color: Color.Pink, font: {size: '22fp', weight: FontWeight.Bold}},
              textStyle: {color: '#ff00ff00', font: {size: '18fp', weight: FontWeight.Normal}},
              selectedTextStyle: {color: '#ff182431', font: {size: '14fp', weight: FontWeight.Regular}},
              onDateAccept: (value: Date) => {
                this.selectedDate  = value
                console.info("DatePickerDialog:onDateAccept()" + value.toString())
              },

            })

          })

      Button('change isshowtimed')
        .onClick(()=>{
          this.isShowTimed=!this.isShowTimed
        })

      Button('change isUseMilitaryTime')
        .onClick(()=>{
          this.isUseMilitaryTime=!this.isUseMilitaryTime
        })

      Button('change lunarswitch')
        .onClick(()=>{
          this.lunarswitch=!this.lunarswitch
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