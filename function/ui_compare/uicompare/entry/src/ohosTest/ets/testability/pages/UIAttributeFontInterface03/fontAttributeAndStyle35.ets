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
struct fontAttributeAndStyle35 {
  @State text:ResourceStr = ""
  @State letterSpacing:number | string | Resource = 0
  @State textAlign:TextAlign = TextAlign.Start
  @State textInput:ResourceStr = "开源鸿蒙"
  @State style:TextContentStyle = TextContentStyle.DEFAULT
  private clickNum1:number = 0
  private clickNum2:number = 0
  private letterSpacings:Array<number | string | Resource> = [
    -2,
    0,
    3,
    "5px",
    "10%"
  ]
  private textAligns:Array<TextAlign> = [
    TextAlign.Start,
    TextAlign.Center,
    TextAlign.End
  ]

  build() {
    Column() {
      TextArea({ placeholder: 'please input', text:this.text  })
        .fontSize(24)
        .textAlign(this.textAlign)
        .letterSpacing(this.letterSpacing)
        .width(240)
        .height(60)
        .margin({top:50})

      Button("letterSpacing")
        .id("fontAttributeAndStyle35_1")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum2<5){
            this.letterSpacing = this.letterSpacings[this.clickNum2]
            this.clickNum2++
            if(this.clickNum2==5){
              this.clickNum2=0
            }
          }
        })
        .margin({top:50})

      Button("textAlign")
        .id("fontAttributeAndStyle35_2")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<3){
            this.textAlign = this.textAligns[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==3){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("input")
        .id("fontAttributeAndStyle35_3")
        .fontSize(18)
        .onClick(()=>{
          this.text = "开源鸿蒙开源鸿蒙开源鸿蒙"
        })
        .margin({top:50})
    }.width('100%')
  }
}