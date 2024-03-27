/*
 * Copyright (c) 2023 Southeast University.
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

import promptAction from '@ohos.promptAction'

/**
 * Bottom bar: incognito mode toggle
 */
@Component
export default struct BottomBar {
  @Link isIncognitoModeOn: boolean

  build() {
    Column() {
      Divider().strokeWidth(1).color($r('app.color.light_border'))
      Row() {
        Text($r("app.string.search_bottomBar_incognitoMode"))
          .fontSize(12)
          .fontColor($r('app.color.light_fg'))
        Toggle({ type: ToggleType.Switch, isOn: $$this.isIncognitoModeOn })
          .selectedColor($r('app.color.primary'))
          .onChange((isOn: boolean) => {
            if (isOn) {
              promptAction.showToast({ message: $r("app.string.search_bottomBar_incognitoModeOnMsg") })
            } else {
              promptAction.showToast({ message: $r("app.string.search_bottomBar_incognitoModeOffMsg") })
            }
          })
      }
      .width('100%')
      .height('100%')
      .clip(true)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 14, right: 14 })
    }
    .width('100%')
    .height(40)
  }
}