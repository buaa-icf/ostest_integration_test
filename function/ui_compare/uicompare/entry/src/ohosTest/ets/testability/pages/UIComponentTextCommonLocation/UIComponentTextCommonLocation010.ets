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
import { MeasureText } from '@kit.ArkUI'
@Entry
@Component
struct UIComponentTextCommonLocation010 {
  @State text: string = 'hello world'
  controller: SearchController = new SearchController()
  textSize : SizeOptions = MeasureText.measureTextSize({
    textContent: this.text,
    fontSize: '50px',
    lineHeight:'30px',
    fontWeight:FontWeight.Bolder,
    fontStyle:FontStyle.Italic
  })
  build() {
    Column() {
      Search({ value: this.text, controller: this.controller })
        .searchButton('search')
        .width(400)
        .height(40)
        .textAlign(TextAlign.Center)
        .backgroundColor('#F5F5F5')
        .placeholderColor(Color.Grey)
        .onChange((value: string) => {
          this.text = value
        })
        .margin(20)
      Text(`The width of 'Hello World': ${this.textSize.width}`)
      Text(`The height of 'Hello World': ${this.textSize.height}`)
    }.width('100%')
  }
}