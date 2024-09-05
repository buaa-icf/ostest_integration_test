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
struct UiComponentTextCommonAffineTransformation042 {
  @State input_text: string = 'TextInput'
  @State area_text: string = 'TextArea'
  @State changeValue: string = 'Search'

  area_controller: TextAreaController = new TextAreaController()

  build() {
    Column() {
      TextInput({ text: this.input_text})
        .width('50%')
        .height(95)
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .translate({ x: 100, y: 10 })
        .scale({ x: -2, y: 0.5, z: -5})

      TextArea({
        text: this.area_text,
        controller: this.area_controller
      })
        .placeholderFont({ size: 16, weight: 400 })
        .width('50%')
        .height(95)
        .translate({ x: 100, y: 10 })
        .scale({ x: -2, y: 0.5, z: -5})
        .id("UiComponentTextCommonAffineTransformation042")

      Search({ value: this.changeValue})
        .searchButton('SEARCH')
        .width('50%')
        .height(95)
        .translate({ x: 100, y: 10 })
        .scale({ x: -2, y: 0.5, z: -5})
    }
  }
}
