/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
@CustomDialog
export struct LoginCustomDialog {
  @Link inputUserName: string;
  @Link inputPwd: string;
  @Link inputPwd2: string;
  @State isRegister: boolean = false;
  @State title:string = '登录';
  controller?: CustomDialogController;
  cancel: () => void = () => {
  }
  confirm: (isRegister:boolean) => void = () => {
  }

  build() {
    Column() {
      Text(this.title).fontSize(20).margin({ top: 10, bottom: 10 })
      TextInput({ placeholder: '用户名', text: this.inputUserName })
        .height(42)
        .width('90%')
        .margin(8)
        .onChange((value: string) => {
          this.inputUserName = value
        })
        .id('login_user_name')
      TextInput({ placeholder: '密码', text: this.inputPwd })
        .height(42)
        .width('90%')
        .margin(8)
        .onChange((value: string) => {
          this.inputPwd = value
        })
        .id('login_pwd')
      if (this.isRegister) {
        TextInput({ placeholder: '再输入密码' })
          .height(42)
          .width('90%')
          .margin(8)
          .onChange((value: string) => {
            this.inputPwd2 = value
          })
          .id('login_pwd2')
      }

      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('取消')
          .onClick(() => {
            if (this.controller != undefined) {
              this.controller.close()
              this.cancel()
            }
          }).backgroundColor(0xffffff).fontColor(Color.Black)
        Button('注册')
          .fontColor(Color.Blue)
          .id('register_button')
          .onClick(() => {
            if (this.isRegister && this.controller != undefined) {
              this.confirm(this.isRegister)
            } else {
              this.isRegister = true;
              this.title = '注册';
            }
          })
          .fontColor(Color.Blue)
        Button('登录')
          .fontColor(Color.Red)
          .id('login_button')
          .onClick(() => {
            if (!this.isRegister && this.controller != undefined) {
              this.confirm(this.isRegister)
            } else {
              this.isRegister = false;
              this.title = '登录';
            }
          })
      }.margin({ bottom: 10 })
    }.borderRadius(10)
  }
}