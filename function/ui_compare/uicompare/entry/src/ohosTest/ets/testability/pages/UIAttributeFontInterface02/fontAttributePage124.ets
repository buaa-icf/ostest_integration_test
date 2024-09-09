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
struct fontAttributePage124 {

  build() {
    Column() {
      Text() {
        ContainerSpan() {
          ImageSpan($r('app.media.icon'))
            .width('20vp')
            .height('20vp')
            .verticalAlign(ImageSpanAlignment.CENTER)
          Span('1')
            .fontSize('16fp')
            .fontColor(Color.Black)
          ImageSpan($r('app.media.icon'))
            .width('20vp')
            .height('20vp')
            .verticalAlign(ImageSpanAlignment.CENTER)
          Span('2')
            .fontSize('16fp')
            .fontColor(Color.Black)
          ImageSpan($r('app.media.icon'))
            .width('20vp')
            .height('20vp')
            .verticalAlign(ImageSpanAlignment.CENTER)
          Span('3')
            .fontSize('16fp')
            .fontColor(Color.Black)
        }.textBackgroundStyle({color:Color.Red,radius: 5})
      }.borderRadius(10)
      .margin({top:50})
      .width(240)
      .height(150)
    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}