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
      TextInput({ placeholder: '密码', text: this.inputPwd })
        .height(42)
        .width('90%')
        .margin(8)
        .onChange((value: string) => {
          this.inputPwd = value
        })
      if (this.isRegister) {
        TextInput({ placeholder: '再输入密码' })
          .height(42)
          .width('90%')
          .margin(8)
          .onChange((value: string) => {
            this.inputPwd2 = value
          })
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
          .onClick(() => {
            if (this.isRegister && this.controller != undefined) {
              this.confirm(this.isRegister)
            } else {
              this.isRegister = true;
              this.title = '注册';
            }
          }).backgroundColor(0xffffff).fontColor(Color.Blue)
        Button('登录')
          .onClick(() => {
            if (!this.isRegister && this.controller != undefined) {
              this.confirm(this.isRegister)
            } else {
              this.isRegister = false;
              this.title = '登录';
            }
          }).backgroundColor(0xffffff).fontColor(Color.Red)
      }.margin({ bottom: 10 })
    }.borderRadius(10)
  }
}