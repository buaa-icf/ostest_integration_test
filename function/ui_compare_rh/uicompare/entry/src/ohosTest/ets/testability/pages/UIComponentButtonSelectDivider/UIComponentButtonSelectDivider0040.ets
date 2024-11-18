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
struct UIComponentButtonSelectDivider0040 {
  @State isDivider: boolean = false
  @State dividerConfig: DividerOptions = {};

  build() {
    Row() {
      Column() {
        Button('divider不为null')
          .onClick(() => {
            this.isDivider = true
          })
          .id('UIComponentButtonSelectDivider0040_001')
        Button('040_divider')
          .onClick(() => {
            this.dividerConfig = {
              strokeWidth: (getContext().resourceManager.getNumber($r("app.integer.5")) + 'vp') as VP,
              startMargin: (getContext().resourceManager.getNumber($r("app.integer.5")) + 'vp') as VP,
              endMargin: (getContext().resourceManager.getNumber($r("app.integer.5")) + 'vp') as VP,
              color: getContext().resourceManager.getColorSync($r("app.color.color3"))
            }
          })
          .id('UIComponentButtonSelectDivider0040_002')
        Select([{ value: 'aaa'}, { value: 'bbb'}, { value: 'ccc'}])
          .divider(this.isDivider ? this.dividerConfig : null)
          .id("UIComponentButtonSelectDivider0040_003")
      }
      .width('100%')
      .height('100%')
    }
  }
}
