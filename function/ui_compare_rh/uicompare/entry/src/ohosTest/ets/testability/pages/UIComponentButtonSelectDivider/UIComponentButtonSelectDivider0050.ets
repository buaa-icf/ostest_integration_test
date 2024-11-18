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
struct UIComponentButtonSelectDivider0050 {
  @State isDivider: boolean = false
  @State dividerConfig: DividerOptions = {};

  build() {
    Row() {
      Column() {
        Button('divider不为null')
          .onClick(() => {
            this.isDivider = true
          })
          .id('UIComponentButtonSelectDivider0050_001')
        Button('050_divider')
          .onClick(() => {
            this.dividerConfig = {
              strokeWidth: 20,
              startMargin: 50,
              endMargin: 50,
              color: Color.Green
            }
          })
          .id('UIComponentButtonSelectDivider0050_002')
        Select([{ value: 'aaa'}, { value: 'bbb'}, { value: 'ccc'}])
          .optionWidth(100.1)
          .divider(this.isDivider ? this.dividerConfig : null)
          .id("UIComponentButtonSelectDivider0050_003")
      }
      .width('100%')
      .height('100%')
    }
  }
}