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
struct fontAttributeAndStyle41 {
  @State lineHeight:number | string | Resource = 24
  private clickNum:number = 0
  private lineHeights:Array<number | string | Resource> = [
    -5,
    0,
    10,
    20,
    "30%",
    "40vp"
  ]

  build() {
    Column() {
      TextArea({ placeholder: 'please input' })
        .fontSize(24)
        .lineHeight(this.lineHeight)
        .width(240)
        .height(60)
        .margin({top:50})

      Button("lineHeight")
        .id("fontAttributeAndStyle41")
        .fontSize(18)
        .onClick(()=>{
          if(this.clickNum<6){
            this.lineHeight = this.lineHeights[this.clickNum]
            this.clickNum++
            if(this.clickNum==6){
              this.clickNum=0
            }
          }
        })
        .margin({top:50})

    }.width('100%')
  }
}