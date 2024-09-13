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
struct fontAttributePage79 {
  @State text:string = "This is a long and Honorificabilitudinitatibus califragilisticexpialidocious Taumatawh" +
    "akatangihangakoauauotamateaturipukakapikimaungahoronukupokaiwhenuakitanatahu"
  @State start: number = 10
  @State end: number = 20

  build() {
    Column() {
      Text(this.text)
        .fontSize(20)
        .margin({top:50})

      Button('切换text中文文本')
        .id("changeText79_1")
        .fontSize(20)
        .margin({top:20})
        .onClick(() => {
          this.text = '我希望有个如你一般的人，如山间清爽的风，如古城温暖的光'
        })

      Button('切换text日语文本')
        .id("changeText79_2")
        .fontSize(20)
        .margin({top:20})
        .onClick(() => {
          this.text = 'グレートブリテンおよび北アイルランド連合王国という言葉は本当に長い言葉'
        })

      Button('切换text韩语文本')
        .id("changeText79_3")
        .fontSize(20)
        .margin({top:20})
        .onClick(() => {
          this.text = '성공은 신념의 산물이며, 신념을 가진 사람은 기적에 가까운 일을 가능하게 한다'
        })
    }.width('100%')
  }
}