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
struct fontAttributeAndStyle50 {
  @State changeValue: string = ''
  @State decoration:	TextDecorationOptions = {type: TextDecorationType.None}
  private clickNum1:number = 0
  private clickNum2:number = 0
  @State letterSpacing:number | string | Resource = 0
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
  private letterSpacings:Array<number | string | Resource> = [
    -2,
    0,
    3,
    "5px",
    "10%"
  ]
  controller: SearchController = new SearchController()

  build() {
    Column() {
      Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller })
        .searchButton('SEARCH')
        .width('80%')
        .height(40)
        .decoration(this.decoration)
        .letterSpacing(this.letterSpacing)
        .backgroundColor('#F5F5F5')
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .textFont({ size: 14, weight: 400 })
        .onChange((value: string) => {
          this.changeValue = value
        })
        .margin({top:50})

      Button("input")
        .id("fontAttributeAndStyle50_1")
        .fontSize(18)
        .onClick(()=>{
          this.changeValue = "开源鸿蒙"
        })
        .margin({top:50})

      Button("decoration.type")
        .id("fontAttributeAndStyle50_2")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<9){
            this.decoration = this.decorations[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==9){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("letterSpacing")
        .id("fontAttributeAndStyle50_3")
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
    }.width('100%')
  }
}