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
struct fontAttributePage182 {
  @State text:string = "This is a long and Honorificabilitudinitatibus califragilisticexpialidocious Taumatawhakatangi" +
    "hangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu"
  @State fontSize:number = 16
  @State maxLines:number = 1
  @State start: number = 5
  @State end: number = 30
  @State containerWidth:Length = '100%'

  build() {
    Column() {
      Text(this.text){
      }
      .maxLines(this.maxLines)
      .fontSize(this.fontSize)
      .margin({top:50})
      .copyOption(CopyOptions.InApp)
      .selection(this.start, this.end)

      Button('change fontSize')
        .id("fontAttributePage182_01")
        .margin({top:20})
        .onClick(() => {
          this.fontSize = 20
        })

      Button('change maxLines')
        .id("fontAttributePage182_02")
        .margin({top:20})
        .onClick(() => {
          this.maxLines = 3
          this.fontSize = 16
        })

      Button('change container size')
        .id("fontAttributePage182_03")
        .margin({top:20})
        .onClick(() => {
          this.maxLines = 1
          this.fontSize = 16
          this.containerWidth = '60%'
        })
    }.width(this.containerWidth)
    .height(500)
    .borderWidth(2)
  }
}