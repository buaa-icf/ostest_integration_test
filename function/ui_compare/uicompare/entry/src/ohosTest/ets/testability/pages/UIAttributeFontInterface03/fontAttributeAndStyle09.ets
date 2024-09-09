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
struct fontAttributeAndStyle09 {
  @State text:ResourceStr = ""
  @State letterSpacing:number | string | Resource = 0
  @State fontSize:Length = 18
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
  private fontSizes:Array<Length> = [
    0,
    10,
    20,
    30
  ]

  build() {
    Column() {
      TextInput({ placeholder: 'please input',text:this.text })
        .fontSize(this.fontSize)
        .type(InputType.Normal)
        .style(this.style)
        .width(240)
        .height(60)
        .letterSpacing(this.letterSpacing)
        .margin({top:50})

      Button("input")
        .id("fontAttributeAndStyle09_1")
        .fontSize(18)
        .onClick(()=>{
          this.text = "开源鸿蒙开源鸿蒙开源鸿蒙"
        })
        .margin({top:50})

      Button("letterSpacing")
        .id("fontAttributeAndStyle09_2")
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

      Button("fontSize")
        .id("fontAttributeAndStyle09_3")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum2<4){
            this.fontSize = this.fontSizes[this.clickNum2]
            this.clickNum2++
            if(this.clickNum2==4){
              this.clickNum2=0
            }
          }
        })
        .margin({top:50})
    }.width('100%')
  }
}