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
struct UiComponentSpanBaselineoffset05 {
  @State text:string = 'Offset is '
  @State index:number = 0
  @State arr:number[] = [-10, 0, 10, 20.5, 0, 0]
  @State num:number = 0
  @State rank:number = 0
  @State total:number = 6

  build() {
    Column() {
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .onClick(() => {
          this.rank = this.index % this.total
          this.num = this.arr[this.rank]
          if(this.rank==4) this.text = 'Offset is null'
          else if(this.rank==5) this.text = 'Offset is undefined'
          else this.text = 'Offset is '+this.num.toString()
          this.index++;
        })
        .id('Button5')
      Text(this.text)
      Text(){
        Span('base')
          .baselineOffset(new LengthMetrics(0))
        if(this.rank==4){
          ImageSpan('cat.jpg')
            .width('50px')
            .height('50px')
            .baselineOffset(new LengthMetrics(null))
        }
        else if(this.rank==5){
          ImageSpan('cat.jpg')
            .width('50px')
            .height('50px')
            .baselineOffset(new LengthMetrics(undefined))
        }
        else{
          ImageSpan('cat.jpg')
            .width('50px')
            .height('50px')
            .baselineOffset(new LengthMetrics(this.num))
        }
      }
    }.width('100%').margin({bottom: '5vp'}).alignItems(HorizontalAlign.Center)
  }
}