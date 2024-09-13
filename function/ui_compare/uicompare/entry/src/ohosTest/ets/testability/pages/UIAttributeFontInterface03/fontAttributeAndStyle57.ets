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
struct fontAttributeAndStyle57 {
  @State lineHeight:number | string | Resource = 24
  @State changeValue: string = ''
  @State type:SearchType = SearchType.NORMAL
  @State fontSize:Length = 18
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
        .textFont({ size: this.fontSize, weight: 400 })
        .onChange((value: string) => {
          this.changeValue = value
        })
        .margin({top:50})

      Button("input")
        .id("fontAttributeAndStyle57_1")
        .fontSize(18)
        .onClick(()=>{
          this.changeValue = "开源鸿蒙"
        })
        .margin({top:50})

      Button("lineHeight")
        .id("fontAttributeAndStyle57_2")
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
        .id("fontAttributeAndStyle57_3")
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