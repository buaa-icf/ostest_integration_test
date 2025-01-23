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
struct Slider01 {
  @State outSetValueOne: number = 40
  @State inSetValueOne: number = 40
  @State noneValueOne: number = 40
  @State outSetValueTwo: number = 40
  @State inSetValueTwo: number = 40
  @State vOutSetValueOne: number = 40
  @State vInSetValueOne: number = 40
  @State vOutSetValueTwo: number = 40
  @State vInSetValueTwo: number = 40
  @State tipsValue: number = 40
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['dW_slider_id', ''],
    ['', 'dW_slider_key'],
    ['dW_slider_id', 'dW_slider_key'],
  ];

  @State idOrKeyArrayBlockStyle: Array<Array<string>> = [
    ['', ''],
    ['dW_slider_style_id', ''],
    ['', 'dW_slider_style_key'],
    ['dW_slider_style_id', 'dW_slider_style_key'],
  ];

  build() {
    Column() {
      Text("Slider")
        .fontSize(18)
        .margin({ top: 24 })
      ForEach(this.idOrKeyArray, (item: Array<string>) => {
        Slider({
          value: this.outSetValueOne,
          min: 0,
          max: 100,
          style: SliderStyle.OutSet
        })
          .showTips(true)
          .onChange((value: number, mode: SliderChangeMode) => {
            this.outSetValueOne = value
            console.info('value:' + value + 'mode:' + mode.toString())
          })
          .id(item[0])
          .key(item[1])
      })

      Text("Slider with attr blockStyle")
        .fontSize(18)
        .margin({ top: 24 })
      ForEach(this.idOrKeyArrayBlockStyle, (item: Array<string>) => {
        Slider({ style: SliderStyle.OutSet, value: 40 })
          .blockStyle({ type: SliderBlockType.IMAGE, image: $r('sys.media.ohos_app_icon') })
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

    }.width('100%')
  }
}
