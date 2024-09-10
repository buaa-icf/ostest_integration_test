/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { LengthMetrics } from '@ohos.arkui.node'

@Entry
@Component
struct UiComponentSpanBaselineoffset020 {
  @State text:string = 'Align is '
  @State index:number = 0
  @State rank:number = 0
  @State total:number = 3
  @State my_padding:number = 0

  build() {
    Column() {
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .onClick(() => {
          this.rank = this.index % this.total
          if(this.rank==0) {
            this.my_padding = 100
            this.text = 'padding is 100'
          }
          if(this.rank==1) {
            this.my_padding = 50
            this.text = 'padding is 50'
          }
          if(this.rank==2) {
            this.my_padding = 10
            this.text = 'padding is 10'
          }
          this.index++;
        })
        .id('Button20')
      Text(this.text)
      Text(){
        Span('Span1')
        ImageSpan('cat.jpg')
          .width('50px')
          .height('50px')
          .baselineOffset(new LengthMetrics(20))
      }.padding(this.my_padding)
    }.width('100%').margin({bottom: '5vp'}).alignItems(HorizontalAlign.Center)
  }
}
