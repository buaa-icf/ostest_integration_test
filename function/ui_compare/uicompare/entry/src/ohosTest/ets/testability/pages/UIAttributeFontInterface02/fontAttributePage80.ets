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
struct fontAttributePage80 {
  @State text:string = "山间清爽的风"
  @State fontSize:number = 16

  build() {
    Column() {
      Text(this.text)
        .fontSize(this.fontSize)
        .margin({top:50})

      Button('change fontSize')
        .id("changeText80")
        .fontSize(20)
        .margin({top:20})
        .onClick(() => {
          this.fontSize = 30
        })
    }.width('100%')
  }
}