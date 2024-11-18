/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

@Entry
@Component
struct UIComponentButtonRadioCheckMark012 {
  @State textTip: string = 'Radio未选中，默认类型';

  build() {
    Row() {
      Column({ space: 50 }) {
        Text(this.textTip)
        Row({space: 20}) {
          Radio({ value: 'Radio', group: 'radioGroup'})
            .checked(false)
            .width(50)
            .height(50)
            .id('UIComponentButtonRadioCheckMark0120')
        }
      }
      .width('200px')
      .height('200px')
    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}
