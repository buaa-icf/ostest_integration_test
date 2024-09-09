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
struct fontAttributeAndStyle27 {
  @State decoration:	TextDecorationOptions = {type: TextDecorationType.None, color: Color.Black}
  @State text:ResourceStr = ""
  @State fontSize:Length = 18
  private clickNum1:number = 0
  private clickNum2:number = 0
  private decorations:Array<TextDecorationOptions> = [
    {type: TextDecorationType.Underline},
    {type: TextDecorationType.LineThrough},
    {type: TextDecorationType.Overline},
    {type: TextDecorationType.None},
    {type: TextDecorationType.Underline, color: Color.Pink},
    {type: TextDecorationType.Underline, color: "0x008000"},
    {type: TextDecorationType.Underline, color: "rgb(255, 0, 0)"},
    {type: TextDecorationType.Underline, color: "#0000ff"},
    {type: TextDecorationType.Underline, color: $r('app.color.yellow')},
  ]
  private fontSizes:Array<Length> = [
    0,
    10,
    20,
    30
  ]

  build() {
    Column() {
      TextArea({ placeholder: 'please input' })
        .fontSize(this.fontSize)
        .width(240)
        .height(60)
        .margin({top:50})
        .decoration(this.decoration)

      Button("fontSize")
        .id("fontAttributeAndStyle27_1")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<4){
            this.fontSize = this.fontSizes[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==4){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("decoration")
        .id("fontAttributeAndStyle27_2")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum2<9){
            this.decoration = this.decorations[this.clickNum2]
            this.clickNum2++
            if(this.clickNum2==9){
              this.clickNum2=0
            }
          }
        })
        .margin({top:50})

      Button("input")
        .id("fontAttributeAndStyle27_3")
        .fontSize(18)
        .onClick(()=>{
          this.text = "开源鸿蒙开源鸿蒙开源鸿蒙"
        })
        .margin({top:50})
    }.width('100%')
  }
}