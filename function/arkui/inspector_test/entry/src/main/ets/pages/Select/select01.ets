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
struct Select01 {
  @State text: string = "TTTTT"
  @State index: number = 2
  @State space: number = 8
  @State arrowPosition: ArrowPosition = ArrowPosition.END
  @State idOrKeyArray: Array<Array<string>> = [
    ['', ''],
    ['dW_select_id', ''],
    ['', 'dW_select_key'],
    ['dW_select_id', 'dW_select_key'],
  ];

  build() {
    Column() {
      Text("Select")
        .fontSize(18)
        .margin({ top: 24 })
      ForEach(this.idOrKeyArray, (item: Array<string>) => {
        Select([{ value: 'aaa', icon: $r("app.media.icon") },
          { value: 'bbb', icon: $r("app.media.icon") },
          { value: 'ccc', icon: $r("app.media.icon") },
          { value: 'ddd', icon: $r("app.media.icon") }])
          .selected(this.index)
          .value(this.text)
          .font({ size: 16, weight: 500 })
          .fontColor('#182431')
          .selectedOptionFont({ size: 16, weight: 400 })
          .optionFont({ size: 16, weight: 400 })
          .space(this.space)
          .arrowPosition(this.arrowPosition)
          .menuAlign(MenuAlignType.START, {dx:0, dy:0})
          .optionWidth(200)
          .optionHeight(300)
          .id(item[0])
          .key(item[1])
          .onSelect((index:number, text?: string | undefined)=>{
            console.info('Select:' + index)
            this.index = index;
            if(text){
              this.text = text;
            }
          })
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
