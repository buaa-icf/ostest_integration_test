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
struct fontAttributePage119 {
  @State fontSize:Length = 18
  @State imageSize:Length = '80vp'

  build() {
    Column() {
      Text() {
        ContainerSpan() {
          ImageSpan($r('app.media.icon'))
            .width(this.imageSize)
            .height(this.imageSize)
            .verticalAlign(ImageSpanAlignment.CENTER)
          Span('Hello World !')
            .fontSize(this.fontSize)
            .fontColor(Color.Black)
        }.textBackgroundStyle({color:Color.Green,radius: 5})
      }.margin({top:50})
      .width(240)
      .height(150)

      Button("字体大小++")
        .id("fontAttributePage119_01")
        .fontSize(18)
        .onClick(()=>{
          this.fontSize = 30
        })
        .margin({top:50})

      Button("图片大小++")
        .id("fontAttributePage119_02")
        .fontSize(18)
        .onClick(()=>{
          this.imageSize = '140vp'
        })
        .margin({top:50})
    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}