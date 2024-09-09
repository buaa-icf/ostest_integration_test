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
struct fontAttributeAndStyle12 {
  @State text:ResourceStr = ""
  @State lineHeight:number | string | Resource = 24
  @State fontSize:Length = 18
  @State style:TextContentStyle = TextContentStyle.DEFAULT
  private clickNum1:number = 0
  private clickNum2:number = 0
  private lineHeights:Array<number | string | Resource> = [
    -5,
    0,
    10,
    20,
    "30%",
    "40vp"
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
        .lineHeight(this.lineHeight)
        .margin({top:50})

      Button("input")
        .id("fontAttributeAndStyle12_1")
        .fontSize(18)
        .onClick(()=>{
          this.text = "开源鸿蒙开源鸿蒙开源鸿蒙"
        })
        .margin({top:50})

      Button("lineHeight")
        .id("fontAttributeAndStyle12_2")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<6){
            this.lineHeight = this.lineHeights[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==6){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("fontSize")
        .id("fontAttributeAndStyle12_3")
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