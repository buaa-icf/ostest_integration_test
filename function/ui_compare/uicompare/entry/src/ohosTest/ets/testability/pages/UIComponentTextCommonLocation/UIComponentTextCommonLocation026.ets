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
struct UIComponentTextCommonLocation026 {
  @State text: string = 'hello harmony'
  @State place: string = ''
  controller: TextInputController = new TextInputController()
  textSize : SizeOptions = MeasureText.measureTextSize({
    textContent: this.text,
    fontSize: '50px',
    lineHeight:'30px',
    fontWeight:FontWeight.Bolder,
    fontStyle:FontStyle.Italic
  })
  build() {
    Column() {
      TextInput({text:this.text})
        .caretColor(Color.Blue)
        .width('95%')
        .height(40)
        .margin(20)
        .fontSize(14)
      Text(`The width of 'Hello World': ${this.textSize.width}`)
      Text(`The height of 'Hello World': ${this.textSize.height}`)
    }.width('100%')
  }
}