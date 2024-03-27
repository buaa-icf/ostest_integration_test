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

/* Other login methods dialog */
@CustomDialog
export default struct OtherLoginMethodsDialog {
  controller: CustomDialogController

  build() {
    Column() {
      /* Via phone number button */
      this.loginMethodItem($r('app.string.login_otherMethods_phone'), $r('app.media.ic_public_devices_phone_filled'))

      /* Via WeChat button */
      this.loginMethodItem($r('app.string.login_otherMethods_WeChat'), $r('app.media.ic_public_community_messages_filled'))

      /* Via QQ button */
      this.loginMethodItem($r('app.string.login_otherMethods_QQ'), $r('app.media.ic_public_contacts_filled'))

      /* Via password button */
      this.loginMethodItem($r('app.string.login_otherMethods_pwd'), $r('app.media.ic_public_lock_filled'))

      Divider()
        .strokeWidth(3)
        .color($r('app.color.light_border'))

      /* Cancel button */
      Button() {
        Text($r('app.string.login_otherMethods_cancel'))
          .fontSize(16)
          .fontColor($r('app.color.light_fg'))
      }
      .padding(15)
      .commonBtnStyle(() => {
        this.controller.close()
      })
    }
  }

  /**
   * Each login method item
   */
  @Builder
  loginMethodItem(text: Resource, icon: Resource) {
    Button() {
      Row({ space: 10 }) {
        Image(icon)
          .size({ width: 16, height: 16 })
          .fillColor($r('app.color.light_fg_shallow'))
        Text(text)
          .fontSize(16)
          .fontColor($r('app.color.light_fg'))
      }
    }
    .padding(15)
    .commonBtnStyle()
  }
}