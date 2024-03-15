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
import { MainPageParams } from '../viewmodel/RouterParams'

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

@Entry
@Component
struct LoginPage {
  @State account: string = ''
  @State pwd: string = ''
  @State isAgreementPopupShown: boolean = false
  @State isCheckboxSelected: boolean = false

  build() {
    Column() {
      Column({ space: 50 }) {
        this.topMenu()
        this.loginForm()
      }

      this.otherOpts()
    }
    .width('100%')
    .height('100%')
    .padding({ top: 20, bottom: 20, left: 10, right: 10 })
    .justifyContent(FlexAlign.SpaceBetween)
  }

  /* Back button + settings button */
  @Builder
  topMenu() {
    Row() {
      /* Back button */
      Button() {
        Image($r('app.media.ic_public_arrow_left'))
          .size({ width: 30, height: 30 })
          .fillColor($r('app.color.light_fg'))
      }
      .commonBtnStyle(() => {
        router.back({
          url: 'pages/MainPage',
          params: {
            isLoggedIn: false
          } as MainPageParams
        })
      })

      /* Settings button */
      Button() {
        Image($r('app.media.ic_public_settings'))
          .size({ width: 20, height: 20 })
          .fillColor($r('app.color.light_fg'))
      }
      .commonBtnStyle(() => {
      })
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)

  }

  /* Login form */
  @Builder
  loginForm() {
    Column({ space: 20 }) {
      Text('登录后，头条更懂你内容更有趣')
        .fontSize(19)
        .fontColor($r('app.color.light_fg'))

      /* Phone number */
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
          .commonBtnStyle(() => {
          })

          /* Account input area */
          TextInput({ placeholder: '手机号/邮箱', text: $$this.account })
            .type(InputType.PhoneNumber)
            .backgroundColor(Color.Transparent)
            .placeholderFont({ size: 19 })
            .placeholderColor($r('app.color.light_fg_shallow'))
        }

        Divider()
          .strokeWidth(2)
          .color($r('app.color.light_border'))
      }

      /* Password */
      Column({ space: 5 }) {
        Row() {
          /* Password input area */
          TextInput({ placeholder: '密码', text: $$this.pwd })
            .flexShrink(1)
            .type(InputType.Password)
            .backgroundColor(Color.Transparent)
            .placeholderFont({ size: 19 })
            .placeholderColor($r('app.color.light_fg_shallow'))
          Button() {
            Text('找回密码')
              .fontSize(12)
              .fontWeight(FontWeight.Medium)
              .fontColor($r('app.color.light_fg'))
          }
          .commonBtnStyle()
        }
        .width('100%')

        Divider()
          .strokeWidth(2)
          .color($r('app.color.light_border'))
      }

      /* Login button */
      Button('登录')
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
            if (!this.isCheckboxSelected) {
              this.isAgreementPopupShown = false
              this.isAgreementPopupShown = true
            } else {
              router.replaceUrl({
                url: 'pages/MainPage',
                params: {
                  isLoggedIn: true
                } as MainPageParams
              })
            }
          }
        })

      /* Privacy policy agreement */
      Row() {
        Checkbox()
          .size({ width: 12, height: 12 })
          .select($$this.isCheckboxSelected)
          .selectedColor($r('app.color.primary'))
          .onChange(() => {
            this.isAgreementPopupShown = false
          })
          .bindPopup(this.isAgreementPopupShown, {
            message: '请先勾选，同意后再登录'
          })
        Row({ space: 4 }) {
          Text('已阅读并同意')
            .fontSize(12)
            .fontColor($r('app.color.light_fg_shallow'))
          Text('用户协议')
            .fontSize(12)
            .fontWeight(FontWeight.Medium)
            .fontColor($r('app.color.light_fg'))
          Text('和')
            .fontSize(12)
            .fontColor($r('app.color.light_fg_shallow'))
          Text('账号信息处理规则')
            .fontSize(12)
            .fontWeight(FontWeight.Medium)
            .fontColor($r('app.color.light_fg'))
        }
      }
    }
    .padding({ left: 25, right: 25 })
  }

  /* Other login options + problem solving */
  @Builder
  otherOpts() {
    Row({ space: 11 }) {
      Button() {
        Text('其他登录方式')
          .fontSize(12)
          .fontColor($r('app.color.light_fg'))
      }
      .commonBtnStyle()

      Divider()
        .height(10)
        .vertical(true)
        .strokeWidth(1)
        .color($r('app.color.light_border'))

      Button() {
        Text('遇到问题')
          .fontSize(12)
          .fontColor($r('app.color.light_fg'))
      }
      .commonBtnStyle()
    }
  }

  pageTransition() {
    PageTransitionEnter({ type: RouteType.None, duration: 200 }).slide(SlideEffect.Bottom)
    PageTransitionExit({ type: RouteType.None, duration: 200 }).slide(SlideEffect.Bottom)
  }
}