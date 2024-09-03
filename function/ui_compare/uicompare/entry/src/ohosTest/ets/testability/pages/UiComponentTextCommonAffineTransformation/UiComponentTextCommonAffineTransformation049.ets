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
struct UiComponentTextCommonAffineTransformation049 {
  @State input_text: string = 'TextInput'
  @State area_text: string = 'TextArea'
  @State changeValue: string = 'Search'

  area_controller: TextAreaController = new TextAreaController()

  build() {
    Column() {
      TextInput({ text: this.input_text})
        .width('40%')
        .height(95)
        .translate({ x: 10, y: 100, z: 10 })
        .scale({ x: -2, y: 0.5, z: -5})
        .rotate({ x: 0, y: 1, z: 0, centerX: '0%',centerY: '0%', angle: 300 })
        .padding(10)
        .margin(10)
        .border({ width: 5, color: 0x317AF7, radius: 10, style: BorderStyle.Dotted })
        .backgroundColor(Color.Blue)
        .type(InputType.Normal)
      TextArea({
        text: this.area_text,
        controller: this.area_controller
      })
        .placeholderFont({ size: 16, weight: 400 })
        .width('40%')
        .height(95)
        .translate({ x: 10, y: 100, z: 10 })
        .scale({ x: -2, y: 0.5, z: -5})
        .rotate({ x: 0, y: 1, z: 0, centerX: '0%',centerY: '0%', angle: 300 })
        .padding(20)
        .margin(20)
        .border({ width: 5, color: 0x317AF7, radius: 10, style: BorderStyle.Dotted })
        .backgroundColor(Color.Red)
      Search({ value: this.changeValue})
        .searchButton('SEARCH')
        .width('40%')
        .height(95)
        .translate({ x: 10, y: 100, z: 10 })
        .scale({ x: -2, y: 0.5, z: -5})
        .rotate({ x: 0, y: 1, z: 0, centerX: '0%',centerY: '0%', angle: 300 })
        .padding(30)
        .margin(30)
        .border({ width: 5, color: 0x317AF7, radius: 10, style: BorderStyle.Dotted })
        .backgroundColor(Color.Green)
    }
  }
}
