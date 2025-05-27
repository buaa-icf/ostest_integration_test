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

import { NewsItem } from '../../model/NewsModel';
import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
import clipboard from '@ohos.pasteboard';
import pasteboard from '@ohos.pasteboard';

@Component
export struct ActivityView {
  @Prop item: NewsItem
  @StorageLink('isRegistered') @Watch('regChange') isReg: boolean = false
  @State private pulseEffect: boolean = false
  @State private countAnim: number = this.item.views
  @State private showBadge: boolean = false
  @State private timeRemaining: string = ''
  @State private refreshFlag: boolean = false

  // 倒计时计算器
  private timer: number | undefined = undefined

  // 观察报名状态变化
  regChange() {
    if (this.isReg) {
      this.showBadge = true
      setTimeout(() => this.showBadge = false, 2000)
    }
  }

  aboutToAppear() {
    // 初始化倒计时
    this.calculateCountdown()
    this.timer = setInterval(() => {
      this.calculateCountdown()
    }, 1000)
  }

  aboutToDisappear() {
    clearInterval(this.timer)
  }

  // 计算剩余时间
  private calculateCountdown() {
    const targetTime = new Date(this.item.timestamp).getTime()
    const now = Date.now()
    const diff = targetTime - now

    if (diff > 0) {
      const days = Math.floor(diff / (1000 * 60 * 60 * 24))
      const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60))
      const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60))
      this.timeRemaining = `${days}d ${hours}h ${minutes}m`
    } else {
      this.timeRemaining = "活动进行中"
    }
  }

  private generateInviteCode(): string {
    const charArray = 'ABCDEFGHJKMNPQRSTUVWXYZ23456789'.split('')
    return new Array(6)
      .fill('')
      .map(() =>
      charArray[Math.floor(Math.random() * charArray.length)]
      )
      .join('')
  }

  // 3D翻转按钮
  @Builder FlipButton(content: string, action: () => void) {
    Button(content)
      .width(150)
      .height(50)
      .backgroundColor(this.isReg ? '#4CAF50' : '#FF4081')
      .onClick(action)
      .rotate({
        angle: this.pulseEffect ? 360 : 0,
        centerX: '50%',
        centerY: '50%'
      })
      .animation({
        duration: 800,
        curve: Curve.EaseInOut,
      })
  }

  // 数字增长动画
  @Builder AnimatedCounter() {
    Text(`${Math.floor(this.countAnim)}人`)
      .fontSize(16)
      .fontColor(this.countAnim > 50 ? '#FF5722' : '#666')
      .onClick(() => {
        // 点击数字触发增长动画
        this.countAnim = this.item.views + 1
      })
      .transition({ type: TransitionType.Insert, scale: { x: 0.5, y: 0.5 } })
  }

  // 徽章弹窗
  @Builder AchievementBadge() {
    if (this.showBadge) {
      Column() {
        Image($r('app.media.badge'))
          .width(120)
          .height(120)
          .transition({ type: TransitionType.Insert, scale: { x: 0.5, y: 0.5 } })
        Text('活动先锋')
          .fontSize(18)
          .fontColor('#FFD700')
      }
      .width('100%')
      .alignItems(HorizontalAlign.Center)
      .zIndex(999)
    }
  }
  private triggerRefresh() {
    this.countAnim = this.item.views
    this.refreshFlag = !this.refreshFlag
    setTimeout(() => {
      this.countAnim = this.item.views
    }, 100)
  }

  private handleInvite() {
    const code = this.generateInviteCode()
    router.pushUrl({
      url: 'pages/InvitePage',
      params: { code: code }
    }).then(() => {
      console.info('导航成功')
    }).catch((err: BusinessError<number>) => { // 添加泛型参数
      promptAction.showToast({
        message: `打开邀请页失败，错误码：${err.code}`,
        duration: 2000
      })
    })
  }

  build() {
    Column({ space: 8 }) {
      // 活动信息区块
      Row({ space: 12 }) {
        Image($r('app.media.fire'))
          .width(24)
          .height(24)
          .fillColor(this.countAnim > 50 ? '#FF5722' : '#666')

        Column() {
          Text(this.item.title)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
          Text(`剩余时间：${this.timeRemaining}`)
            .fontColor('#E91E63')
            .onClick(() => {
            router.pushUrl({
              url: 'pages/WebPage',
              params: { url: encodeURIComponent(this.item.link) }
            })
          })

        }
      }

      // 动态人数统计
      this.AnimatedCounter()

      // 3D翻转按钮
      this.FlipButton(this.isReg ? '已报名 ✓' : '立即报名', () => {
        if (!this.isReg) {
          this.pulseEffect = !this.pulseEffect
          this.isReg = true
          this.item.views += 1

          // 自动刷新
          this.triggerRefresh()

          // 生成邀请码
          const inviteCode = this.generateInviteCode();

          promptAction.showToast({
            message: `报名成功！邀请码已复制\n${inviteCode}`,
            duration: 2500
          })
        }
      })

      // 附加功能按钮
      if (this.isReg) {
        Button('邀请好友 →')
          .width(120)
          .backgroundColor('#2196F3')
          .margin({ top: 8 })
          .onClick(() => this.handleInvite())
      }
      // 徽章展示
      this.AchievementBadge()
    }
    .padding(16)
    .backgroundColor('#FFF')
    .borderRadius(12)
    .shadow({ radius: 8, color: 'rgba(0,0,0,0.1)' })
  }
}
