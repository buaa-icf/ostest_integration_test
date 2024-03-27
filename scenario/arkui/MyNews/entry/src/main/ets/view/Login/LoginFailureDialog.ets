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
 * Login failure dialog
 */
@CustomDialog
export default struct LoginFailureDialog {
  private controller: CustomDialogController
  @Link pwd: string
  @Link isAgreementChecked: boolean

  build() {
    Column({ space: 20 }) {
      Text($r('app.string.login_failure'))
        .width('100%')
        .textAlign(TextAlign.Start)
        .fontSize(16)
        .fontColor($r('app.color.light_fg'))

      Row({ space: 10 }) {
        /* Login via verification code button */
        Button() {
          Text($r('app.string.login_failure_viaVerificationCode'))
            .fontSize(16)
            .fontColor($r('app.color.primary'))
        }
        .commonBtnStyle()

        Divider()
          .height(14)
          .vertical(true)
          .strokeWidth(2)
          .color($r('app.color.light_border'))

        /* Retry button */
        Button() {
          Text($r('app.string.login_failure_retry'))
            .fontSize(16)
            .fontColor($r('app.color.primary'))
        }
        .commonBtnStyle(() => {
          this.controller.close()
          // Clear input
          this.pwd = ''
          this.isAgreementChecked = false
        })
      }
      .width('100%')
      .justifyContent(FlexAlign.End)
    }
    .padding(15)
  }
}