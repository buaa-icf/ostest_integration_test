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

import router from '@ohos.router'
import { MainPageParams } from '../../viewmodel/RouterParams'
import { loginViaPwd } from '../../common/utils/Login'
import FailureDialog from './FailureDialog'

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
 * Login area: inputs, login button, agreement checkbox
 */
@Component
export default struct LoginArea {
  @State account: string = ''
  @State pwd: string = ''
  @State isAgreementReminderShown: boolean = false
  @State isAgreementChecked: boolean = false
  private loginFailureDialogController: CustomDialogController = new CustomDialogController({
    builder: FailureDialog({
      pwd: $pwd,
      isAgreementChecked: $isAgreementChecked
    }),
  })

  build() {
    Column({ space: 20 }) {
      /* Title */
      Text($r('app.string.login_title'))
        .id('login_loginArea_text_01')
        .textAlign(TextAlign.Center)
        .fontSize(17)
        .fontColor($r('app.color.light_fg'))

      /* Account input */
      this.accountInput()

      /* Password input */
      this.pwdInput()

      /* Login button */
      this.loginBtn()

      /* Privacy policy agreement */
      this.agreementCheckbox()
    }
    .padding({ left: 25, right: 25 })
  }

  /**
   * Account input
   */
  @Builder
  accountInput() {
    Column({ space: 5 }) {
      Row() {
        /* Location code selection */
        Button() {
          Row() {
            Text('+86')
              .fontSize(16)
              .fontColor($r('app.color.light_fg'))
            Image($r('app.media.ic_public_arrow_down_0'))
              .size({ width: 14, height: 14 })
          }
        }
        .id('login_loginArea_button_01')
        .commonBtnStyle(() => {
        })

        /* Account input area */
        TextInput({ placeholder: $r('app.string.login_account_placeholder'), text: $$this.account })
          .id('login_loginArea_textInput_01')
          .type(InputType.PhoneNumber)
          .backgroundColor(Color.Transparent)
          .placeholderFont({ size: 19 })
          .placeholderColor($r('app.color.light_fg_shallow'))
      }

      Divider()
        .strokeWidth(2)
        .color($r('app.color.light_border'))
    }
  }

  /**
   * Password input
   */
  @Builder
  pwdInput() {
    Column({ space: 5 }) {
      Row() {
        /* Password input area */
        TextInput({ placeholder: $r('app.string.login_pwd_placeholder'), text: $$this.pwd })
          .id('login_loginArea_textInput_02')
          .flexShrink(1)
          .type(InputType.Password)
          .backgroundColor(Color.Transparent)
          .placeholderFont({ size: 19 })
          .placeholderColor($r('app.color.light_fg_shallow'))

        /* Forgot password */
        Button() {
          Text($r('app.string.login_pwd_forgot'))
            .fontSize(12)
            .fontWeight(FontWeight.Medium)
            .fontColor($r('app.color.light_fg'))
        }
        .id('login_loginArea_button_02')
        .commonBtnStyle()
      }
      .width('100%')

      Divider()
        .strokeWidth(2)
        .color($r('app.color.light_border'))
    }
  }

  /**
   * Login button
   */
  @Builder
  loginBtn() {
    Button($r('app.string.login_btn'))
      .id('login_loginArea_button_03')
      .width(290)
      .height(40)
      .type(ButtonType.Normal)
      .borderRadius(5)
      .backgroundColor($r('app.color.primary'))
      .foregroundColor($r('app.color.primary_fg'))
      .onClick(() => {
        /* Check if the account and the password are empty */
        if (this.account.length > 0 && this.pwd.length > 0) {
          /* Check is the privacy policy is agreed */
          if (!this.isAgreementChecked) {
            this.isAgreementReminderShown = false
            this.isAgreementReminderShown = true
          } else {
            loginViaPwd(this.account, this.pwd).then((result) => {
              if (result) {
                // Successful, redirect to the main page
                router.replaceUrl({
                  url: 'pages/MainPage',
                  params: {
                    isLoggedIn: true
                  } as MainPageParams
                })
              } else {
                // Failed
                this.loginFailureDialogController.open()
              }
            })
          }
        }
      })
  }

  /**
   * Agreement checkbox
   */
  @Builder
  agreementCheckbox() {
    Row() {
      Checkbox()
        .id('login_loginArea_checkbox_01')
        .size({ width: 12, height: 12 })
        .select($$this.isAgreementChecked)
        .selectedColor($r('app.color.primary'))
        .onChange(() => {
          this.isAgreementReminderShown = false
        })
        .bindPopup(this.isAgreementReminderShown, {
          builder: this.agreementReminderPopup,
          popupColor: $r('app.color.light_fg_shallow'),
        })
      Row({ space: 4 }) {
        Text() {
          Span($r('app.string.login_agreement_part1'))
            .fontColor($r('app.color.light_fg_shallow'))
          Span($r('app.string.login_agreement_part2'))
            .fontWeight(FontWeight.Medium)
            .fontColor($r('app.color.light_fg'))
          Span($r('app.string.login_agreement_part3'))
            .fontColor($r('app.color.light_fg_shallow'))
          Span($r('app.string.login_agreement_part4'))
            .fontWeight(FontWeight.Medium)
            .fontColor($r('app.color.light_fg'))
        }
        .fontSize(12)
      }
    }
  }

  /**
   * The custom agreement reminder popup
   */
  @Builder
  agreementReminderPopup() {
    Text($r('app.string.login_agreement_reminder'))
      .padding(10)
      .fontSize(12)
      .fontColor($r('app.color.primary_fg'))
  }
}