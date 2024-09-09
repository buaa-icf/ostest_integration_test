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
struct fontAttributePage185 {
  @State text:string = "This is a long and Honorificabilitudinitatibus califragilisticexpialidocious Taumatawhakatangi" +
    "hangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu"
  private clickNum1:number = 0
  private clickNum2:number = 0
  @State textFontSize:number = 16
  @State symbolFontSize:number = 16
  @State textFontColor:Color = Color.Red
  @State symbolFontColor:Array<ResourceColor> = [Color.Blue, Color.Blue, Color.Blue]
  @State textFontWeight:FontWeight = FontWeight.Bolder
  @State symbolFontWeight:FontWeight = FontWeight.Normal

  private fontWeights1:Array<FontWeight> = [
    FontWeight.Lighter,
    FontWeight.Regular,
    FontWeight.Medium,
    FontWeight.Bold,
    FontWeight.Bolder,
  ]

  private fontWeights2:Array<FontWeight> = [
    FontWeight.Lighter,
    FontWeight.Normal,
    FontWeight.Regular,
    FontWeight.Medium,
    FontWeight.Bold,
  ]

  build() {
    Column() {
      Text(this.text){
        SymbolSpan($r('sys.symbol.ohos_wifi'))
          .fontSize(this.symbolFontSize)
          .fontColor(this.symbolFontColor)
          .fontWeight(this.symbolFontWeight)
      }
      .maxLines(3)
      .fontSize(this.textFontSize)
      .fontColor(this.textFontColor)
      .fontWeight(this.textFontWeight)
      .margin({top:50})

      Button('change SymbolSpan style')
        .id("fontAttributePage185_01")
        .margin({top:20})
        .onClick(() => {
          this.symbolFontSize = 24
          this.symbolFontColor = [Color.Red, Color.Red, Color.Red]
        })

      Button('change symbolFontWeight')
        .id("fontAttributePage185_02")
        .margin({top:20})
        .onClick(() => {
          if(this.clickNum1<5){
            this.symbolFontWeight = this.fontWeights1[this.clickNum1]
            this.clickNum1++
            if(this.clickNum1==5){
              this.clickNum1=0
            }
          }
        })

      Button('change Text style')
        .id("fontAttributePage185_03")
        .margin({top:20})
        .onClick(() => {
          this.textFontSize = 24
          this.textFontColor = Color.Green
        })

      Button('change textFontWeight')
        .id("fontAttributePage185_04")
        .margin({top:20})
        .onClick(() => {
          if(this.clickNum2<5){
            this.textFontWeight = this.fontWeights2[this.clickNum2]
            this.clickNum2++
            if(this.clickNum2==5){
              this.clickNum2=0
            }
          }
        })
    }.width('100%')
  }
}