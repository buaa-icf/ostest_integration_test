/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct fontAttributeAndStyle38 {
  @State letterSpacing:number | string | Resource = 0
  @State text:ResourceStr = ""
  @State maxLength:number = 20
  @State showCounter:boolean = false
  private clickNum1:number = 0
  private clickNum2:number = 0
  private clickNum3:number = 0
  private letterSpacings:Array<number | string | Resource> = [
    -2,
    0,
    3,
    "5px",
    "10%"
  ]
  private maxLengths:Array<number> = [
    20,
    50
  ]
  private showCounters:Array<boolean> = [
    true,
    false
  ]

  build() {
    Column() {
      TextArea({ placeholder: 'please input',text:this.text })
        .width(240)
        .height(60)
        .maxLength(this.maxLength)
        .showCounter(this.showCounter)
        .margin({top:50})

      Button("maxLength")
        .id("fontAttributeAndStyle38_1")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<2){
            this.maxLength = this.maxLengths[this.clickNum1]
            this.clickNum1++
          }
          if(this.clickNum1==2){
            this.clickNum1=0
          }
        })
        .margin({top:50})

      Button("showCounter")
        .id("fontAttributeAndStyle38_2")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum2<2){
            this.showCounter = this.showCounters[this.clickNum2]
            this.clickNum2++
            if(this.clickNum2==2){
              this.clickNum2=0
            }
          }
        })
        .margin({top:50})

      Button("letterSpacing")
        .id("fontAttributeAndStyle38_3")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum3<5){
            this.letterSpacing = this.letterSpacings[this.clickNum3]
            this.clickNum3++
            if(this.clickNum3==5){
              this.clickNum3=0
            }
          }
        })
        .margin({top:50})

      Button("input")
        .id("fontAttributeAndStyle38_4")
        .fontSize(18)
        .onClick(()=>{
          this.text = "开源鸿蒙开源鸿蒙开源鸿蒙"
        })
        .margin({top:50})

    }.width('100%')
  }
}