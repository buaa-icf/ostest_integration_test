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
struct UIComponentScrollSwiperInterfacemix105 {
  @State text: string = '123ab?_! A1235431256321';
  controller: TextInputController = new TextInputController()
  build() {
    Column() {
      TextInput({
        text: this.text,
        controller:this.controller,
        placeholder: 'Enter your password...',
      })
        .width('336')
        .height('56')
        .type(InputType.Normal)
        .maxLength(20)
        .fontSize(18)
        .fontColor(Color.Black)
        .showUnderline(true)
        .showCounter(true, { thresholdPercentage: 50, highlightBorder: true })
        .onChange((value: string) => {
          this.text = value
        })
    }
  }
}










