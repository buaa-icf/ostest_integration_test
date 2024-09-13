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
struct fontAttributePage85 {
  @State text:string = "我希望有个如你一般的人如山间清爽的风如古城温暖的光从清晨到夜晚由山野到书房等待不怕岁月蹉跎不怕路途遥远只要" +
    "最后是你就好"
  @State fontSize:number = 16
  @State start: number = 0
  @State end: number = 20

  build() {
    Column() {
      Text(){
        ImageSpan($r('app.media.icon'))
          .width('200px')
          .height('200px')
          .verticalAlign(ImageSpanAlignment.CENTER)
      }
      .fontSize(this.fontSize)
      .margin({top:50})
      .copyOption(CopyOptions.InApp)
      .selection(this.start, this.end)
    }.width('100%')
  }
}