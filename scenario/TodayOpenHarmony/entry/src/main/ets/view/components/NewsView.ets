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
import { promptAction } from '@kit.ArkUI';
import wantAgent from '@ohos.app.ability.wantAgent';
import { BusinessError } from '@ohos.base';

@Component
export struct NewsView {
  @Prop item: NewsItem
  @State showSharePanel: boolean = false
  @State showQRCode: boolean = false
  @State animateHeart: boolean = false

  // 生成随机分享语录
  private getRandomShareText(): string {
    const texts = [
      '发现一篇好文，速来围观！👀',
      '这篇内容太棒了，必须分享！🌟',
      '知识值得传播，推荐阅读 📚',
      '不容错过的精彩内容！🔥'
    ];
    return texts[Math.floor(Math.random() * texts.length)];
  }

  // 创意分享面板
  @Builder
  SharePanel() {
    Column() {
      Text(this.getRandomShareText())
        .fontSize(16)
        .fontColor('#666')
        .margin({ bottom: 16 })
        .textAlign(TextAlign.Center)

      Button() {
        Row() {
          Image($r('app.media.planet'))
            .width(32)
            .height(32)
            .margin({ right: 8 })
          Text('发射到讨论区')
        }
      }
      .width('80%')
      .height(48)
      .backgroundColor('#4CAF50')
      .margin({ bottom: 12 })
      .onClick(() => {
        promptAction.showToast({   message: `${this.getRandomShareText()} 已发射 🚀`,
          duration: 1500 });
        this.showSharePanel = false;
      })

      // 生成时光胶囊
      Button() {
        Row() {
          Image($r('app.media.time'))
            .width(32)
            .height(32)
            .margin({ right: 8 })
          Text('存入时光胶囊')
        }
      }
      .width('80%')
      .height(48)
      .backgroundColor('#9C27B0')
      .margin({ bottom: 12 })
      .onClick(() => {
        promptAction.showToast({ message: '已封存至3023年历史记录 ⏳', duration: 1500 });
        this.showSharePanel = false;
      })

      // 生成分享卡片
      Button() {
        Row() {
          Image($r('app.media.card'))
            .width(32)
            .height(32)
            .margin({ right: 8 })
          Text('生成魔法卡片')
        }
      }
      .width('80%')
      .height(48)
      .backgroundColor('#2196F3')
      .onClick(() => {
        this.showQRCode = true;
        this.showSharePanel = false;
      })

      Button('取消')
        .width('80%')
        .margin({ top: 16 })
        .onClick(() => this.showSharePanel = false)
    }
    .width('80%')
    .padding(24)
    .backgroundColor(Color.White)
    .borderRadius(16)
    .shadow({ radius: 16, color: 'rgba(0,0,0,0.1)' })
  }

  // 二维码弹窗
  @Builder QRCodeModal() {
    Column() {
      Text('扫一扫穿越到文章')
        .fontSize(18)
        .fontColor(Color.White)
        .margin({ bottom: 16 })
      Stack() {
        Image($r('app.media.qr'))
          .width(220)
          .height(220)
          .backgroundColor(Color.White)
          .padding(12)
          .borderRadius(12)
        Text(`${this.getRandomShareText()}\n${Date.now().toString(36)}`)
          .fontSize(14)
          .fontColor('#333')
          .textAlign(TextAlign.Center)
          .width('100%')
          .position({ y: 180 })
      }
      Button('收下魔法')
        .width(120)
        .margin({ top: 24 })
        .type(ButtonType.Capsule)
        .onClick(() => this.showQRCode = false)
    }
    .width('80%')
    .padding(20)
    .backgroundColor('#4A5568')
    .borderRadius(20)
  }

  build() {
    Stack() {
      Column({ space: 8 }) {
        Text(this.item.subtitle)
          .fontSize(14)
          .fontColor('#666')
          .maxLines(3)
          .height(20)

        Row({ space: 12 }) {
          Text(`浏览：${this.item.views}`)
          Text(`发布时间：${this.item.timestamp}`)
            .fontSize(12)
        }
        .padding({ bottom: 8 })

        Row() {
          Button('查看详情')
            .width(100)
            .height(32)
            .backgroundColor('#2196F3')
            .margin({ top: 8 })
            .flexShrink(0)// 防止按钮被压缩
            .onClick(() => {
              router.pushUrl({
                url: 'pages/WebPage',
                params: { url: encodeURIComponent(this.item.link) }
              })
            })

          Row({ space: 12 }) {
            // 点赞按钮
            Button() {
              Image(this.item.isLiked ? $r('app.media.heart3') : $r('app.media.heart1'))
                .width(24)
                .height(24)
            }
            .onClick(() => {
              this.item.isLiked = !this.item.isLiked;
              promptAction.showToast({ message: this.item.isLiked ? '点赞成功!' : '已取消点赞', duration: 1000 });
            })
            .backgroundColor(Color.Transparent)
            .borderRadius(20)
            .width(40)
            .height(40)
            .padding(0) // 消除默认间距

            // 收藏按钮
            Button() {
              Image(this.item.isBookmarked ? $r('app.media.sel2') : $r('app.media.star'))
                .width(24)
                .height(24)
            }
            .onClick(() => {
              this.item.isBookmarked = !this.item.isBookmarked
              promptAction.showToast({ message: this.item.isBookmarked ? '已收藏' : '取消收藏', duration: 1000 })
            })
            .backgroundColor(Color.Transparent)
            .borderRadius(20)
            .width(40)
            .height(40)
            .padding(0)

            // 分享按钮
            Button() {
              Image($r('app.media.share'))
                .width(24)
                .height(24)
                .scale({ x: this.animateHeart ? 1.2 : 1 })
                .animation({ duration: 300, curve: Curve.EaseInOut })
            }
            .onClick(() => {
              this.animateHeart = true;
              setTimeout(() => this.animateHeart = false, 300);
              this.showSharePanel = true;
            })
            .backgroundColor(Color.Transparent)
            .borderRadius(20)
            .width(40)
            .height(40)
            .padding(0)
          }
        }
      }
      .width('100%')
      .padding(16)
        .backgroundColor(Color.White)
        .borderRadius(12)
        .shadow({ radius: 8, color: 'rgba(0,0,0,0.1)' })
        .height('auto')

      // 显示分享面板
      if (this.showSharePanel) {
        Column() {
          this.SharePanel()
        }
        .width('80%')
        .height('80%')
        .justifyContent(FlexAlign.Center)
        .backgroundColor('rgba(0, 0, 0, 0.5)')
        .zIndex(999)
      }

      // 显示魔法二维码
      if (this.showQRCode) {
        Column() {
          this.QRCodeModal()
        }
        .width('75%')
        .height('75%')
        .justifyContent(FlexAlign.Center)
        .backgroundColor('rgba(0, 0, 0, 0.5)')
        .zIndex(1000)
      }
    }
    .width('100%')
    .height('auto')
    .margin({ bottom: 12 })  // 增加底部外边距
  }
}