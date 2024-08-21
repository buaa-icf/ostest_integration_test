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
struct UIComponentTextTextareEnhances001 {
  @State message: string = 'Hello'

  build() {
    Column({space:10}) {
      TextArea({text:'1232312312318172312312312313121231231231231231232123123123'})
        .backgroundColor(Color.White)
        .textAlign(TextAlign.JUSTIFY).width('auto')
    }
    .width(300)
    .height(200)
    .backgroundColor(Color.Yellow)
    .justifyContent(FlexAlign.Center)
  }
}