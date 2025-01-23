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
struct IndexJ {
  @State arrLeft: Array<string> = [
    'CalendarPicker/calendarPicker01',
    'DatePicker/datePicker01',
    'TextPicker/textPicker01',
    'TimePicker/timePicker01'
  ];

  @State arrRight: Array<string> = [
    'TextInput/textInput01_withoutSubnode',
    "TextInput/textInput02_counter",
    "TextInput/textInput03_cancelButton",
    "TextInput/textInput04_error",
    "TextInput/textInput05_password",
    "TextInput/textInput06_unit",
  ];

  build() {
    Column(){
      Row() {
        Scroll() {
          Column() {
            ForEach(this.arrLeft, (item: string) => {
              Button(item)
                .margin({top:5})
                .onClick(() => {
                  router.pushUrl({
                    url: `pages/${item}`,
                    params: ''
                  })
                })
            })
          }
        }.width("50%")

        Scroll() {
          Column() {
            ForEach(this.arrRight, (item: string) => {
              Button(item)
                .margin({top:5})
                .onClick(() => {
                  router.pushUrl({
                    url: `pages/${item}`,
                    params: ''
                  })
                })
            })
          }
        }.width("50%")
      }

      Button('Back')
        .onClick(()=> {
          router.pushUrl({
            url: 'pages/Index',
            params: ''
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}