/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

// view/components/AccountLinking.ets
import prompt from '@ohos.promptAction';
import { AccountType, LinkedAccount } from '../../common/constants/Styles/AccoutType';
// 新增对话框状态接口
export interface DialogState {
  visible: boolean;
  accountType?: AccountType;
  username: string;
  password: string;
}

export interface Credentials {  // 新增凭证类型接口
  username: string
  password: string
}

export interface CallbackInterface {
  onAccountChange?: (
    type: AccountType,
    newStatus: string,
    credentials?: Credentials // 替换为接口类型
  ) => void
}

@Component
export struct AccountLinking {
  // 通过Prop接收父组件数据
  @Prop linkedAccounts: LinkedAccount[];

  @Prop callbackObject: CallbackInterface = {}

  // 新增对话框状态
  @State dialogState: DialogState = {
    visible: false,
    username: '',
    password: '',
  };

  private getAccountIcon(type: AccountType): Resource {
    switch (type) {
      case 'google': return $r('app.media.google');
      case 'facebook': return $r('app.media.facebook');
      case 'huawei': return $r('app.media.huawei');
      default: return $r('app.media.web');
    }
  }

  private getAccountLabel(type: AccountType): string {
    switch (type) {
      case 'google': return 'Google 账号';
      case 'facebook': return 'Facebook账号';
      case 'huawei': return 'Huawei账号';
      default: return '其他账号';
    }
  }

  //自定义对话框组件
  @Builder
  AccountDialog() {
    if (this.dialogState.visible) {
      Column()
        .width('100%')
          .height('100%')
          .backgroundColor('rgba(0,0,0,0.4)')
          .onClick(() => {
            this.dialogState.visible = false; // 点击遮罩层关闭
          })
          .zIndex(9998)

        // 半透明背景
        Column({ space: 12 }){
        Text('绑定账号')
            .fontSize(18)
            .fontColor('#333333')

          TextInput({ placeholder: '请输入账号' })
            .width('100%')
            .fontColor('#333333')
            .placeholderColor('#999999')
            .height(40)
            .onChange((value: string) => {
              this.dialogState.username = value;
            })

          TextInput({ placeholder: '请输入密码' })
            .width('100%')
            .fontColor('#333333')
            .placeholderColor('#999999')
            .height(40)
            .type(InputType.Password)
            .onChange((value: string) => {
              this.dialogState.password = value;
            })
          Row({ space: 12 }) {
            Button('取消')
              .layoutWeight(1)
              .onClick(() => {
                this.dialogState.visible = false;
              })

            Button('确认绑定')
              .layoutWeight(1)
              .type(ButtonType.Capsule)
              .backgroundColor('#409EFF')
              .onClick(() => {
                if (!this.dialogState.username || !this.dialogState.password) {
                  prompt.showToast({ message: '账号密码不能为空' });
                  return;
                }
                // 调用回调并传递凭证
                this.callbackObject.onAccountChange?.(
                  this.dialogState.accountType!,
                  '已绑定',
                  {
                    username: this.dialogState.username,
                    password: this.dialogState.password
                  } as Credentials
                );

                this.dialogState.visible = false;
                prompt.showToast({ message: '绑定成功' });
              })
          }
          .width('100%')
          .height(40)
        }
        .width('80%')
        .padding(24)
        .backgroundColor(Color.White)
        .borderRadius(12)
        .shadow({ radius: 16, color: 'rgba(0,0,0,0.1)', offsetX: 0, offsetY: 4 })
        .zIndex(9999) // 确保在最顶层
        .position({ x: '10%', y: '20%' }) // 明确定位
    }
  }

  // 按钮点击处理
  private handleAccountAction(account: LinkedAccount) {
    if (account.name === '已绑定') {
      this.callbackObject.onAccountChange?.(account.type, '未绑定');
      prompt.showToast({ message: '已解绑' });
    } else {
      // 显示绑定对话框
      this.dialogState = {
        visible: true,
        accountType: account.type,
        username: '',
        password: ''
      };
    }
  }

  build() {
    Stack() {
      Column() {
        Text('账号绑定')
          .fontColor('#333333')
          .fontSize(18)
          .margin({ bottom: 8 })

        ForEach(this.linkedAccounts, (account: LinkedAccount) => {
          Row() {
            // 账号图标
            Image(this.getAccountIcon(account.type))
              .width(30)
              .height(30)
              .margin({ right: 12 })
              .colorFilter('#333333')

            Text(this.getAccountLabel(account.type))
              .fontSize(16)
              .layoutWeight(1)
              .fontColor('#333333')

            Text(account.name)
              .fontSize(14)
              .fontColor('#666666')

            Button(account.name === '已绑定' ? '解绑' : '绑定')
              .type(ButtonType.Capsule)
              .width(60)
              .height(30)
              .margin({ left: 12 })
              .backgroundColor(account.name === '已绑定' ? '#F56C6C' : '#409EFF')
              .onClick(() => this.handleAccountAction(account)) // 修改点击处理
          }
          .width('100%')
          .height(56)
          .padding(12)
          .border({ width: 1, color: '#EEEEEE', radius: 8 })
          .margin({ bottom: 8 })
        });
      }
      .width('100%') //  添加必要宽度
      .padding(10) // 添加内边距
      this.AccountDialog()
    }
    .width('100%')
    .height('48%')
    .backgroundColor('#FFFFFF')
  }
  }
