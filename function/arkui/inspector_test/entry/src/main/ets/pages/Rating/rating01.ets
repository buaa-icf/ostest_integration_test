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
struct Rating01 {
  @State ratingValue: number = 3.5
  @State idOrKeyArray_ind_false: Array<Array<string>> = [
    ['', ''],
    ['dW_rating_id_ind_false', ''],
    ['', 'dW_rating_key_ind_false'],
    ['dW_rating_id_ind_false', 'dW_rating_key_ind_false'],
  ];
  @State idOrKeyArray_ind_true: Array<Array<string>> = [
    ['', ''],
    ['dW_rating_id_ind_true', ''],
    ['', 'dW_rating_key_ind_true'],
    ['dW_rating_id_ind_true', 'dW_rating_key_ind_true'],
  ];

  build() {
    Column() {
      Text("Rating indicator=false")
        .fontSize(18)
        .margin({ top: 24 })
      ForEach(this.idOrKeyArray_ind_false, (item: Array<string>) => {
        Rating({ rating: this.ratingValue, indicator: false })
          .width(200)
          .stars(5)
          .stepSize(0.5)
          .margin({ top: 24 })
          .onChange((value: number) => {
            this.ratingValue = value
          })
          .id(item[0])
          .key(item[1])
      })

      Text("Rating indicator=true")
        .fontSize(18)
        .margin({ top: 24 })
      ForEach(this.idOrKeyArray_ind_true, (item: Array<string>) => {
        Rating({ rating: this.ratingValue, indicator: true })
          .width(200)
          .stars(5)
          .stepSize(0.5)
          .margin({ top: 24 })
          .onChange((value: number) => {
            this.ratingValue = value
          })
          .id(item[0])
          .key(item[1])
      })

      Button('Back')
        .onClick(()=> {
          router.pushUrl({
            url: 'pages/IndexD',
            params: ''
          })
        })

    }.width('100%').height('100%').backgroundColor('#F1F3F5')
  }
}