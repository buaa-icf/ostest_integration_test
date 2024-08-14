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
struct UiComponentTextCommonTextstyle027 {
  @State text: string = '012+-*#123'

  build() {
    Row() {
      Column() {
        TextInput({text:this.text,  placeholder: 'input your password...' })
          .width('300')
          .height(40)
          .margin(20)
          .type(InputType.PhoneNumber)
          .maxLength(9)
      }
      .width('100%')
      .height('100%')
    }
  }
}