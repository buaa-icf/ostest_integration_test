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

export interface Profile {
  username: string;
  registerTime: string;
  email: string;
  membershipLevel: string;
  avatar?: Resource;
}
// 个人信息弹窗组件
@CustomDialog
export struct ProfileDialog {
  controller?: CustomDialogController
  @Prop userProfile: Profile // 接收用户资料数据
  build() {
    Column() {
      // 弹窗标题
      Text('我的信息')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      // 头像信息
      Image($r('app.media.logo'))
        .width(80)
        .height(80)
        .borderRadius(40)
        .margin({ bottom: 16 })

      // 个人信息条目
      Column({ space: 12 }) {
        this.InfoItem('用户名', '开鸿开发者')
        this.InfoItem('注册时间', '2023-08-01')
        this.InfoItem('电子邮箱', 'kaihong@example.com')
        this.InfoItem('会员等级', '黄金会员')
      }
      .width('100%')
      .padding(30)
      .backgroundColor('#FFF')
      .border({
        width: 1,
        color: '#F0F0F0',
        style: BorderStyle.Solid
      })
      .borderRadius(12)
      .shadow({
        radius: 8,
        color: '#10000000'
      })
      // 关闭按钮
      Button('关闭')
        .width(120)
        .margin({ top: 24 })
        .onClick(() => this.controller?.close())
    }
    .padding(24)
    .backgroundColor(Color.White)
    .borderRadius(24)
    .width('80%')
  }
  @Builder
  InfoItem(label: string, value: string) {
    Row() {
      Text(label + '：')
        .fontColor('#666')
        .fontSize(14)
        .width(80)

      Text(value)
        .fontColor('#333')
        .fontSize(14)
        .fontWeight(500)
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}
