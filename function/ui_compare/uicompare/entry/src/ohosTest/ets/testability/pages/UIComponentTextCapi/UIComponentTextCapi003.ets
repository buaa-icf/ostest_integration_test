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
struct UIComponentTextCapi003 {
  @State value: number[] = [20, 10]
  xComponentController: XComponentController = new XComponentController()
  build() {
    Column(){
      XComponent({
        id: 'xcomponent',
        type: XComponentType.COMPONENT,
        controller: this.xComponentController
      })
      {
        Text('hello world')
          .id('text')
          .fontSize(`${this.value.join(', ')}`)
      }
      .width('90%')
      .height('90%')
      .borderWidth(1)
    }
    .width(300)
    .height(500)
    .borderWidth(1)
  }
}