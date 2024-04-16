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

import OtherLoginMethodsDialog from '../../view/Login/OtherLoginMethodsDialog'

/**
 * Common invisible button style
 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}

/**
 * Bottom buttons: other login methods, problem solving
 */
@Component
export default struct BottomsBtns {
  private otherLoginMethodsDialogController: CustomDialogController = new CustomDialogController({
    builder: OtherLoginMethodsDialog(),
  })

  build() {
    Row({ space: 11 }) {
      /* Other login methods */
      Button() {
        Text($r('app.string.login_bottomArea_otherMethods'))
          .fontSize(12)
          .fontColor($r('app.color.light_fg'))
      }
      .id('login_bottom_button_01')
      .commonBtnStyle(() => {
        this.otherLoginMethodsDialogController.open()
      })

      Divider()
        .height(10)
        .vertical(true)
        .strokeWidth(1)
        .color($r('app.color.light_border'))

      /* Problems */
      Button() {
        Text($r('app.string.login_bottomArea_problems'))
          .fontSize(12)
          .fontColor($r('app.color.light_fg'))
      }
      .id('login_bottom_button_02')
      .commonBtnStyle()
    }
  }
}