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
struct fontAttributeAndStyle18 {
  @State lineHeight:number | string | Resource = 24
  @State type:InputType = InputType.Normal
  @State style:TextInputStyle = TextInputStyle.Default
  @State text:string = "开源鸿蒙开源鸿蒙开源鸿蒙"
  @State decoration:TextDecorationOptions = {type:TextDecorationType.None}
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
  private styles:Array<TextInputStyle> = [
    TextInputStyle.Default,
    TextInputStyle.Inline
  ]

  build() {
    Column() {
      TextInput({ placeholder: 'please input',text:this.text })
        .fontSize(24)
        .type(InputType.Normal)
        .style(this.style)
        .decoration(this.decoration)
        .width(240)
        .height(60)
        .lineHeight(this.lineHeight)
        .margin({top:50})

      Button("style")
        .id("fontAttributeAndStyle18_01")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<2){
            this.style = this.styles[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==2){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("lineHeight")
        .id("fontAttributeAndStyle18_02")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum2<6){
            this.lineHeight = this.lineHeights[this.clickNum2]
            this.clickNum2++
            if(this.clickNum2==6){
              this.clickNum2=0
            }
          }
        })
        .margin({top:50})

      Button("decoration")
        .id("fontAttributeAndStyle18_03")
        .fontSize(18)
        .onClick(()=>{
          this.decoration = {type:TextDecorationType.Underline}
        })
        .margin({top:50})
    }.width('100%')
  }
}