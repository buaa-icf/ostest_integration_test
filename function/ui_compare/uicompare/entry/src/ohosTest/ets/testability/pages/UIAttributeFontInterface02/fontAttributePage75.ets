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
struct fontAttributePage75 {
  @State onCopy:string = "before copy"
  @State selectText:string = "我希望有个如你一般的人，如山间清爽的风，如古城温暖的光"
  @State start: number = 20
  @State end: number = 1000

  build() {
    Column() {
      Text(this.selectText)
        .fontSize(20)
        .margin({top:50})
        .copyOption(CopyOptions.InApp)
        .selection(this.start, this.end)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
        .onCopy((value: string) => {
          this.onCopy = value
        })

      Text(this.onCopy)
        .fontSize(20)
        .margin({top:50})
    }.width('100%')
  }
}