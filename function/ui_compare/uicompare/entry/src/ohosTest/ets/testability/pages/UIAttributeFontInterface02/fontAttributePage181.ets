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
struct fontAttributePage181 {
  @State text:string = "This is a long and Honorificabilitudinitatibus califragilisticexpialidocious Taumatawhakatangi" +
    "hangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu"
  @State fontSize:number = 16
  @State start: number = 10
  @State end: number = 20

  build() {
    Column() {
      Text(this.text){
      }
      .maxLines(1)
      .fontSize(this.fontSize)
      .margin({top:50})
      .copyOption(CopyOptions.InApp)
      .selection(this.start, this.end)

      Button('change selection')
        .id("fontAttributePage181_01")
        .margin({top:20})
        .onClick(() => {
          this.start = 20
          this.end = 10
        })

      Button('change selection')
        .id("fontAttributePage181_02")
        .margin({top:20})
        .onClick(() => {
          this.start = 20
          this.end = 20
        })
    }.width('100%')
  }
}