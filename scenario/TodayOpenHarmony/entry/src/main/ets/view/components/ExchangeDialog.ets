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

// ExchangeDialog.ets
import promptAction from '@ohos.promptAction';

export interface ExchangeItem {
  title: string;
  points: number;
  desc: string;
  image?: Resource;
}
export interface ExchangeResult {
  success: boolean;
  item?: ExchangeItem;
  newPoints?: number;
}

@CustomDialog
export struct ExchangeDialog {
  controller?: CustomDialogController
  @Prop userPoints: number;
  @State selectedOption: ExchangeItem | null = null
  @State showConfirm: boolean = false
  @State isProcessing: boolean = false

  onExchangeResult?: (result: ExchangeResult) => void; // 使用统一结果类型

  // 静态兑换选项
  private exchangeOptions: ExchangeItem[] = [
    {
      title: '会员体验卡',
      points: 100,
      desc: '3天会员体验',
      image: $r('app.media.vip')
    },
    {
      title: '主题换肤',
      points: 200,
      desc: '解锁限定主题',
      image: $r('app.media.moon')
    },
    {
      title: '实物礼品',
      points: 500,
      desc: '精美周边商品',
      image: $r('app.media.gift')
    },
    {
      title: '会员月卡',
      points: 1000,
      desc: '30天会员特权',
      image: $r('app.media.icon')
    }
  ];

  // 兑换项组件
  @Builder
  ExchangeOptionView(option: ExchangeItem) {
    Row() {
      // 左侧图标
      Image(option.image || $r('app.media.icon'))
        .width(60)
        .height(60)
        .margin({ right: 12 })

      // 信息区域
      Column() {
        Text(option.title)
          .fontSize(18)
          .fontColor('#333')
          .margin({ bottom: 4 })

        Text(option.desc)
          .fontSize(14)
          .fontColor('#666')

        Row() {
          Text('消耗积分:')
            .fontSize(14)
            .fontColor('#999')
          Text(`${option.points}`)
            .fontSize(16)
            .fontColor('#FF4500')
            .margin({ left: 4 })
        }
        .margin({ top: 8 })
      }
      .layoutWeight(1)

      // 兑换按钮
      Button({ type: ButtonType.Capsule }) {
        if (this.isProcessing && this.selectedOption?.title === option.title) {
          this.Loader()
        } else {
          Text('立即兑换')
            .fontSize(14)
        }
      }
      .width(100)
      .backgroundColor(this.userPoints >= option.points ? '#409EFF' : '#DDD')
      .enabled(this.userPoints >= option.points && !this.isProcessing)
      .onClick(() => this.handleSelectOption(option))
    }
    .width('100%')
    .padding(16)
    .backgroundColor(Color.White)
    .margin({ bottom: 12 })
    .borderRadius(12)
    .shadow({ radius: 4, color: 'rgba(0,0,0,0.1)' })
  }
  // 加载指示器组件
  @Builder
  Loader() {
    LoadingProgress()
      .width(40)
      .height(40)
      .color('#409EFF')
  }
  // 处理选项选择
  private handleSelectOption(option: ExchangeItem) {
    if (this.userPoints < option.points) {
      promptAction.showToast({ message: '当前积分不足', duration: 2000 });
      return;
    }
    this.selectedOption = option;
    this.showConfirm = true;
  }

  // 确认弹窗
  @Builder
  ConfirmDialog() {
    Column() {
      Text('确认兑换')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 16 })

      Text(this.selectedOption?.title || '')
        .fontSize(18)
        .fontColor('#409EFF')

      Text(`将扣除 ${this.selectedOption?.points} 积分`)
        .fontSize(16)
        .margin({ top: 8, bottom: 24 })

      Row() {
        Button('取消', { type: ButtonType.Normal })
          .width('40%')
          .onClick(() => this.closeConfirm())

        Button('确认兑换', { type: ButtonType.Capsule })
          .width('40%')
          .margin({ left: 16 })
          .onClick(() => this.processExchange())
      }
    }
    .padding(24)
    .backgroundColor(Color.White)
    .borderRadius(24)
    // 正确设置动画属性
    .animation({
      duration: 300,
      curve: Curve.EaseOut // 使用系统预定义曲线
    })
    // 正确设置缩放属性
    .transform({ scale: { x: 1, y: 1 } }) // 默认缩放值
  }

  // 执行兑换操作
  private async processExchange() {
    if (!this.selectedOption) return;

    this.isProcessing = true;
    try {
      // 模拟兑换过程（实际应调用API）
      await new Promise<void>((resolve) => setTimeout(resolve, 1000));

      const newPoints = this.userPoints - this.selectedOption.points;
      const success = newPoints >= 0; // 确保积分不为负

      if (success) {
        const result: ExchangeResult = {
          success: true,
          item: this.selectedOption,
          newPoints: newPoints
        };
        this.onExchangeResult?.(result);
        promptAction.showToast({
          message: `兑换成功！剩余积分：${newPoints}`,
          duration: 3000
        });
      } else {
        this.onExchangeResult?.({
          success: false
        });
        promptAction.showToast({
          message: '兑换失败',
          duration: 2000
        });
      }

      this.controller?.close();
    } finally {
      this.isProcessing = false;
      this.closeConfirm();
    }
  }

  private closeConfirm() {
    this.showConfirm = false;
    this.selectedOption = null;
  }

  build() {
    Stack() {
      // 主内容区
      Column() {
        // 积分显示
        Row() {
          Text('可用积分：')
            .fontSize(16)
            .fontColor('#666')
          Text(`${this.userPoints}`)
            .fontSize(24)
            .fontColor('#FF4500')
        }
        .padding(16)
        .backgroundColor('#F5F7FA')
        .borderRadius(12)

        // 兑换列表
        List() {
          ForEach(this.exchangeOptions, (option:ExchangeItem) => {
            ListItem() {
              this.ExchangeOptionView(option)
            }
          })
        }
        .height('60%')
        .margin({ top: 16 })

        // 兑换说明
        Column() {
          Text('兑换规则说明')
            .fontSize(16)
            .fontColor('#666')
            .fontWeight(FontWeight.Bold)
            .margin({ bottom: 8 })

          Text('1. 积分兑换不可逆，请确认后再操作\n2. 虚拟商品即时到账\n3. 实物商品将在3个工作日内发货\n4. 每月最多兑换3次同类商品')
            .fontSize(14)
            .fontColor('#666')
            .lineHeight(20)
        }
        .padding(16)
        .backgroundColor('#F5F7FA')
        .borderRadius(12)
      }
      .padding(16)

      // 确认弹窗
      if (this.showConfirm) {
        Column() {
          this.ConfirmDialog()
        }
        .width('100%')
        .transition({
          type: TransitionType.All,
          scale: {
            x: 0.9,
            y: 0.9
          },
          opacity: 0,
          translate: { x: 0, y: 0 }
        })
      }
    }
    .onClick(() => this.closeConfirm())
  }
}