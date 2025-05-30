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

@Component
export struct ActivityView {
  @Prop item: NewsItem
  @State private isReg: boolean = false // 改为组件私有状态
  @State private pulseEffect: boolean = false
  @State private countAnim: number = this.item.views
  @State private showBadge: boolean = false
  @State private timeRemaining: string = ''

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
    this.countAnim = this.item.views
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
  @Builder FlipButton() {
    Button(this.isReg ? '已报名 ✓' : '立即报名')
      .width(150)
      .height(50)
      .backgroundColor(this.isReg ? '#4CAF50' : '#FF4081')
      .onClick(() => this.handleRegistration())
      .rotate({
        angle: this.pulseEffect ? 360 : 0,
        centerX: '50%',
        centerY: '50%'
      })
      .animation({
        duration: 800,
        curve: Curve.EaseInOut,
      });
  }

  // 数字增长动画
  @Builder AnimatedCounter() {
    Text(`${Math.floor(this.countAnim)}人`)
      .fontSize(16)
      .fontColor(this.countAnim > 50 ? '#FF5722' : '#666')
      .transition({
        type: TransitionType.Insert,
        scale: { x: 0.5, y: 0.5 },
        opacity: 0.8
      })
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

  private handleInvite() {
    const code = this.generateInviteCode();
    // 直接显示分享成功的提示
    promptAction.showToast({
      message: `分享邀请码成功！邀请码：${code}`,
      duration: 2500
    });
  }

  private handleRegistration() {
    if (!this.isReg) {
      this.pulseEffect = !this.pulseEffect;
      this.isReg = true; // 立即更新状态
      // 添加报名人数动画
      animateTo({
        duration: 800,
        curve: Curve.EaseInOut
      }, () => {
        this.countAnim += 1;  // 直接增加当前计数
      });
      const inviteCode = this.generateInviteCode();
      // 添加微延迟确保动画可见
      setTimeout(() => {
        promptAction.showToast({
          message: `报名成功！邀请码已复制\n${inviteCode}`,
          duration: 2500
        });
      }, 300);
    }
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
      this.FlipButton();

      // 附加功能按钮
      Button(this.isReg ? '分享邀请码' : '邀请好友 →')
        .width(120)
        .backgroundColor(this.isReg ? '#4CAF50' : '#2196F3')
        .margin({ top: 8 })
        .onClick(() => this.handleInvite())

      // 徽章展示
      this.AchievementBadge()
    }
    .padding(16)
    .backgroundColor('#FFF')
    .borderRadius(12)
    .shadow({ radius: 8, color: 'rgba(0,0,0,0.1)' })
  }
}
