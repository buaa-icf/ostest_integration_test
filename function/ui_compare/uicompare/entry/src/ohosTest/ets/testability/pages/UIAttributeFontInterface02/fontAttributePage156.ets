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
import measure from '@ohos.measure'

@Entry
@Component
struct fontAttributePage156 {
  @State text: string = '1 height:'
  @State positionInfo: CaretOffset = { index: 0, x: 0, y: 0 }
  @State passwordState: boolean = false
  controller: TextInputController = new TextInputController()

  textSize : SizeOptions = measure.measureTextSize({
    textContent: "Hello word",
    fontSize: '50px'
  })

  build() {
    Column() {
      Text(this.text)
        .margin({top:50})
        .maxLines(2)
        .width('220vp')
        .minFontSize(14)
        .maxFontSize(24)
        .wordBreak(WordBreak.BREAK_ALL)

      TextInput({ text: this.text, placeholder: 'input your word...', controller: this.controller })
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .caretColor(Color.Blue)
        .width('95%')
        .height(40)
        .margin(20)
        .fontSize(14)
        .fontColor(Color.Black)
        .onChange((value: string) => {
          this.text = value
        })

      Button("输入：本截断是按字截断文本截断是按字截断文本截断是按字截断文本是按字")
        .id("fontAttributePage156")
        .fontSize(18)
        .onClick(()=>{
          this.text = "本截断是按字截断文本截断是按字截断文本截断是按字截断文本是按字"
        })
        .margin({top:50})
    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}