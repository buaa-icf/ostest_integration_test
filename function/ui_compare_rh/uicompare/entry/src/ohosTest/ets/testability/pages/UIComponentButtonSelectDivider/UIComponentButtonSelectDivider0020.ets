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
struct UIComponentButtonSelectDivider0020 {
  @State isDivider: boolean = false
  @State dividerConfig: DividerOptions = {
    strokeWidth: 20,
    startMargin: 50,
    endMargin: 50,
    color: Color.Green
  };

  build() {
    Row() {
      Column() {
        Button('divider为nuIl')
          .onClick(() => {
            this.isDivider = false
          })
          .id('UIComponentButtonSelectDivider0020_001')
        Select([{ value: 'aaa'}, { value: 'bbb'}, { value: 'ccc'}])
          .divider(this.isDivider ? this.dividerConfig : null)
          .id("UIComponentButtonSelectDivider0020_002")
      }
      .width('100%')
      .height('100%')
    }
  }
}