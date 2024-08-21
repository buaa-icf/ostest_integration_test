/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct TestCase_a99950e5f66b40c0a77ed875bead3001 {
  @State text: string ='1st 2st 1/4 8/9 7/2'
  @State onCopy: string = ''
  @State start: number = 0
  @State end: number = 20
  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.Start }) {
      Text(this.text)
        .border({ width: 1 })
        .lineHeight(20)
        .margin(30)
        .fontFeature('\"sups\"')
        .copyOption(CopyOptions.InApp)
        .selection(this.start, this.end)
        .onCopy((value:string) => {
          this.onCopy = value
        })
        .id('init')
      Text(this.onCopy)
        .margin(10)
        .id('copy')
    }
    .height(600)
    .width(335)
  }
}