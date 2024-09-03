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
import { LengthMetrics, LengthUnit } from '@ohos.arkui.node';

@Entry
@Component
struct UiComponentSpanBaselineoffset003 {
  @State text:string = 'Offset is '
  @State index:number = 0
  @State rank:number = 0
  @State arr: LengthUnit[] = [LengthUnit.PX,LengthUnit.VP,LengthUnit.FP,LengthUnit.PERCENT,LengthUnit.LPX,0,1, 2,3,4,10,11,-1]
  @State num: LengthUnit|null|undefined = LengthUnit.PX;
  @State total:number = 13
  @State rank_null:number = 10
  @State rank_undefined:number = 11

  build() {
    Column() {
      Button('button', { type: ButtonType.Capsule, stateEffect: true })
        .margin(10)
        .onClick(() => {
          this.rank = this.index % this.total
          this.num = this.arr[this.rank]
          if(this.rank==this.rank_null) this.text = 'OffsetUnit is null'
          else if(this.rank==this.rank_undefined) this.text = 'OffsetUnit is undefined'
          else this.text = 'OffsetUnit is '+this.num.toString()
          this.index++;
        })
      Text(){
        Span('base')
          .baselineOffset(new LengthMetrics(0))
        if(this.rank==this.rank_null){
          Span(this.text)
            .baselineOffset(new LengthMetrics(20,null))
        }
        else if(this.rank==this.rank_undefined){
          Span(this.text)
            .baselineOffset(new LengthMetrics(20,undefined))
        }
        else{
          Span(this.text)
            .baselineOffset(new LengthMetrics(20, this.num))
        }
      }
    }.width('100%').margin({bottom: '5vp'}).alignItems(HorizontalAlign.Center)
  }
}