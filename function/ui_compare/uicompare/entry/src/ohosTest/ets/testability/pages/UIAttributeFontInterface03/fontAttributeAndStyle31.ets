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
struct fontAttributeAndStyle31 {
  @State letterSpacing:number | string | Resource = 0
  @State textInput:ResourceStr = "开源鸿蒙"
  @State text:ResourceStr = "开源鸿蒙"
  private clickNum1:number = 0
  private clickNum2:number = 0
  private text_all:Array<string> = [
    "总有一条蜿蜒在童话镇里七彩的河",
    "%￥……@!*()&",
    "         "
  ]
  private letterSpacings:Array<number | string | Resource> = [
    -2,
    0,
    3,
    "5px",
    "10%"
  ]

  build() {
    Column() {
      TextArea({ placeholder: 'please input',text:this.text })
        .fontSize(24)
        .letterSpacing(this.letterSpacing)
        .width(240)
        .height(60)
        .margin({top:50})

      Button("Input")
        .id("fontAttributeAndStyle31_01")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<3){
            this.textInput = this.text_all[this.clickNum1]
            this.text = this.textInput
            this.clickNum1++
            if(this.clickNum1==3){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("letterSpacing")
        .id("fontAttributeAndStyle31_02")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum2<5){
            this.letterSpacing = this.letterSpacings[this.clickNum2]
            this.clickNum2++
            if(this.clickNum1==5){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("clear text")
        .id("fontAttributeAndStyle31_03")
        .fontSize(18)
        .onClick(()=>{
          this.text = ""
        })
        .margin({top:50})

      Button("Input after clear")
        .id("fontAttributeAndStyle31_04")
        .fontSize(18)
        .onClick(()=>{
          this.text = this.textInput
        })
        .margin({top:50})
    }.width('100%')
  }
}