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
struct IndexQ {
  @State arrLeft: Array<string> = [
    'NavDestination/NavDestination01',
    'Navigation/navigation01',
    'RichEditor/RichEditor01',
    'SideBarContainer/SideBarContainer01',
    'Stepper/stepper01',
    'Stepper/stepper02',
    'Stepper/stepper03',
    'Stepper/stepper04',
    'Video/video01',
    'DatePickerDialog/DatePickerDialog01'
  ];

  @State arrRight: Array<string> = [
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