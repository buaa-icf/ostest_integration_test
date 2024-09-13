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
struct fontAttributeAndStyle59 {
  @State lineHeight:number | string | Resource = 24
  @State changeValue: string = ''
  @State textInput:string = "开源鸿蒙"
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
  private text_all:Array<string> = [
    "总有一条蜿蜒在童话镇里七彩的河",
    "%￥……@!*()&",
    "         "
  ]
  controller: SearchController = new SearchController()

  build() {
    Column() {
      Search({ value: this.changeValue, placeholder: 'Type to search...', controller: this.controller })
        .searchButton('SEARCH')
        .width('80%')
        .height(40)
        .lineHeight(this.lineHeight)
        .backgroundColor('#F5F5F5')
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .textFont({ size: 14, weight: 400 })
        .onChange((value: string) => {
          this.changeValue = value
        })
        .margin({top:50})

      Button("Input")
        .id("fontAttributeAndStyle59_01")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum1<3){
            this.textInput = this.text_all[this.clickNum1]
            this.changeValue = this.textInput
            this.clickNum1++
            if(this.clickNum1==3){
              this.clickNum1=0
            }
          }
        })
        .margin({top:50})

      Button("lineHeight")
        .id("fontAttributeAndStyle59_02")
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

      Button("clear text")
        .id("fontAttributeAndStyle59_03")
        .fontSize(18)
        .onClick(()=>{
          this.changeValue = ""
        })
        .margin({top:50})

      Button("Input after clear")
        .id("fontAttributeAndStyle59_04")
        .fontSize(18)
        .onClick(()=>{
          this.changeValue = this.textInput
        })
        .margin({top:50})
    }.width('100%')
  }
}