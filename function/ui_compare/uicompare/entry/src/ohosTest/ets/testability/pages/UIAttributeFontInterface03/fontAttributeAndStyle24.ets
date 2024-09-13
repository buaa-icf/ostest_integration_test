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
struct fontAttributeAndStyle24 {
  @State decoration:	TextDecorationOptions = {type: TextDecorationType.None, color: Color.Black}
  @State type:TextAreaType = TextAreaType.NORMAL
  @State text:ResourceStr = ""
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
  private types:Array<TextAreaType> = [
    TextAreaType.NORMAL,
    TextAreaType.EMAIL,
    TextAreaType.NUMBER,
    TextAreaType.PHONE_NUMBER,
  ]

  build() {
    Column() {
      TextArea({ placeholder: 'please input' })
        .type(this.type)
        .width(240)
        .height(60)
        .margin({top:50})
        .decoration(this.decoration)

      Button("type")
        .id("fontAttributeAndStyle24_1")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<4){
            this.type = this.types[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==4){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("decoration")
        .id("fontAttributeAndStyle24_2")
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
        .id("fontAttributeAndStyle24_3")
        .fontSize(18)
        .onClick(()=>{
          this.text = "开源鸿蒙开源鸿蒙开源鸿蒙"
        })
        .margin({top:50})
    }.width('100%')
  }
}