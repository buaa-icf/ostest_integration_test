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
struct UIComponentTextCommonLocation045{
  @State text: string = "hello harmony"
  @State place:string=""
  controller: TextAreaController = new TextAreaController()
  textSize : SizeOptions = MeasureText.measureTextSize({
    textContent: this.text,
    fontSize: '50px',
    lineHeight:'30px',
    fontWeight:FontWeight.Bolder,
    fontStyle:FontStyle.Italic
  })
  build() {
    Column() {
      TextArea({
        text:this.text,
        placeholder: this.place,
        controller: this.controller
      })
        .placeholderFont({ size: 16, weight: 400 })
        .width(300)
        .height(100)
        .margin(10)
        .fontSize(16)
        .style(TextContentStyle.INLINE)
        .barState(BarState.On)
        .fontColor('#ff77ace7')
        .backgroundColor('#fff1d8b8')
        .defaultFocus(true)
        .textAlign(TextAlign.Center)
      Text(`The width of 'Hello World': ${this.textSize.width}`)
      Text(`The height of 'Hello World': ${this.textSize.height}`)
    }.width('100%')
  }
}