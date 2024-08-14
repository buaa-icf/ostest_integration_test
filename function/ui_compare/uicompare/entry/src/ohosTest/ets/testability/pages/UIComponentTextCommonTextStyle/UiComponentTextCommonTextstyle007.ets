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
struct UiComponentTextCommonTextstyle007 {
  @State text: string = `第一行\n第二行\n第三行\n第四行\n第五行`
  @State num: number = 0

  build() {
    Row() {
      Column() {
        TextInput({ placeholder: this.text })
          .width(400)
          .height(50)
          .maxLines(5)
          .margin(20)
          .borderRadius(0)
          .barState(BarState.Off)
          .selectionMenuHidden(false)
          .caretPosition(this.num)

        Button('Set caretPosition 3', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(300)
          .onClick(()=>{
            this.num =3
          })
          .id('Button')

        Text(this.num.toString()).fontSize(20)

      }
      .width('100%')
      .height('100%')
    }
  }
}