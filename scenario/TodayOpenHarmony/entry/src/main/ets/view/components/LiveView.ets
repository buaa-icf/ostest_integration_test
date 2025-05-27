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


import { LiveNewsItem  } from '../../model/NewsModel';
import router from '@ohos.router';
import { promptAction } from '@kit.ArkUI';

@Component
export struct LiveView {
  // 核心数据绑定
  @Prop item: LiveNewsItem      // 直接使用具体类型
  @Link isLiving: boolean       // 直播状态双向绑定
  @State barrageText: string = '' // 弹幕输入状态
  @State reserved: boolean = false

  build() {
    Column() {
      Row({ space: 12 }) {
        Text(`主播：${this.item.author}`)
          .fontSize(16)
          .fontColor('#666666')
        Button('送花❀')
          .width(80)
          .fontColor('#FFA500')
          .backgroundColor(Color.Transparent)
          .onClick(() => {
            promptAction.showToast({ message: '送花成功！', duration: 2000 })
          })
      }
      .width('100%')

      Row({ space: 12 }) {
        Text(`在线：${this.item.views}+`)
          .fontColor('#666666')
          .fontSize(14)
        Text(`状态：${
        new Date() < new Date(this.item.timestamp) ? '未开始' :
          this.item.isLiving ? '直播中' : '已结束'
        }`)
          .fontColor(new Date() < new Date(this.item.timestamp) ? '#FFA500' :
            this.item.isLiving ? '#D32F2F' : '#999')
      }
      .width('100%')
      .margin({ top: 8 })

      Row({ space: 10 }) {
        Text(`时间：${this.item.timestamp}`)
          .fontSize(14)
          .fontColor('#666666')
        Button(this.reserved ? '已预约' : '预约')
          .padding(8)
          .backgroundColor(this.reserved ? '#E0E0E0' : '#2196F3')
          .fontColor(this.reserved ? '#757575' : 'white')
          .onClick(() => {
            this.reserved = !this.reserved
            promptAction.showToast({
              message: this.reserved ? '预约成功' : '取消预约'
            })
          })
      }

      Button('进入直播')
        .backgroundColor('#D32F2F')
        .width(120)
        .margin({ top: 12 })
        .onClick(() => {
          router.pushUrl({
            url: 'pages/WebPage',
            params: { url: encodeURIComponent(this.item.link) } // 直接使用属性
          })
        })

      // 弹幕输入组件
      TextArea({ text: this.barrageText, placeholder:'发个弹幕吧~' })
        .placeholderColor('#999999')
        .fontSize(16)
        .fontColor('#999')
        .width('100%')
        .height(40)
        .margin({ top: 16 })
        .onChange((value: string) => {
          this.barrageText = value
        })

      Row() {
        Button('发布')
          .width(80)
          .height(32)
          .borderColor('#FFA500')
          .borderWidth(1)
          .fontColor('#FFA500')
          .backgroundColor(Color.Transparent)
          .onClick(() => {
            if (this.barrageText.trim().length === 0) {
              // 新增空内容校验
              promptAction.showToast({
                message: '弹幕内容不能为空！',
                duration: 1000
              })
              return
            }
            promptAction.showToast({ message: '弹幕发送成功！', duration: 1000 })
            this.barrageText = '' // 直接操作组件内部状态
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)
      .margin({ top: 8 })
    }
  }
}
