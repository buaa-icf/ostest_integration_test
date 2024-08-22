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
@Entry
@Component
struct UiComponentTextCommonTextstyle001 {
  @State changeValue: string = ''
  @State submitValue: string = ''
  controller: SearchController = new SearchController()
  build() {
    Column({space: 10}) {
      Text('onSubmit:' + this.submitValue)
      Text('onChange:' + this.changeValue)
      Search({ value: this.changeValue, placeholder: '请搜索', controller: this.controller })
        .searchButton('搜索')
        .width('95%')
        .height(40)
        .caretStyle({width: '3vp',
          color:0xff})
        .backgroundColor('#F5F5F5')
        .placeholderColor(Color.Red)
        .placeholderFont({ size: 20, weight: 300 })
        .textFont({ size: 15, weight: 400 })
        .onSubmit((value: string) => {
          this.submitValue = value
        })
        .onChange((value: string) => {
          this.changeValue = value
        })
        .margin(20)
    }.width('100%')
  }
}
