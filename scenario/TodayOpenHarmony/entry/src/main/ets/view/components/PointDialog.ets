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

import{ PointRule,ExchangeOption,LevelRule }from'../../model/PointModel'
import{ PointsData } from'../../common/constants/PointData'
import promptAction from '@ohos.promptAction';
import { ExchangeDialog, ExchangeResult } from './ExchangeDialog';


@CustomDialog
export struct PointDialog {
  @Prop currentPoints: number // 通过Prop接收外部参数
  controller?: CustomDialogController;
  exchangeController?: CustomDialogController // 添加兼容性参数
  @State selectedTab: number = 0 // 0: 规则 1: 兑换

  @State exchangeSuccess: boolean = false // 兑换是否成功
  @State updatedPoints: number = 0 // 兑换后的积分

  // 积分变化回调函数
  onPointsChanged?: (points: number) => void

  // ExchangeDialog控制器
  dialogExchangeCtrl: CustomDialogController = new CustomDialogController({
    builder: ExchangeDialog({
      userPoints: this.currentPoints,
      onExchangeResult: (result: ExchangeResult) => {
        if (result.success && result.newPoints) {
          this.onPointsChanged?.(result.newPoints);
        }
      }
    })
  });

  // 统一处理积分更新
  private handlePointsUpdate(newPoints: number) {
    // 通过回调通知父组件
    this.onPointsChanged?.(newPoints);

    // 显示成功提示（可选）
    promptAction.showToast({
      message: `积分更新成功，当前积分：${newPoints}`,
      duration: 2000
    });
  }
  // 修改回调定义方式
  private handleExchangeResult = (result: ExchangeResult) => {
    if (result.success && result.newPoints !== undefined) {
      this.handlePointsUpdate(result.newPoints);
    }
  };

  // 打开时更新参数
  openExchangeDialog() {
    // 正确方式：每次打开时创建新控制器实例
    const dialogCtrl = new CustomDialogController({
      builder: ExchangeDialog({
        userPoints: this.currentPoints, // 自动捕获最新值
        onExchangeResult: (result: ExchangeResult) => {
          if (result.success && result.newPoints) {
            this.onPointsChanged?.(result.newPoints);
          }
        }
      }),
      autoCancel: true,
      alignment: DialogAlignment.Center,
      customStyle: true
    });
    dialogCtrl.open();
  }

  @Builder
  RuleItem(rule: PointRule) {
    Row() {
      Column() {
        Text(rule.title)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#333')

        Text(rule.desc)
          .fontSize(14)
          .fontColor('#666')
          .margin({ top: 4 })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Text(rule.points)
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .fontColor('#409EFF')
    }
    .width('100%')
    .padding(12)
    .backgroundColor('#F9F9F9')
    .borderRadius(8)
    .margin({ bottom: 10 })
  }

  @Builder
  ExchangeItem(item: ExchangeOption) {
    Row() {
      Column() {
        Text(item.title)
          .fontSize(16)
          .fontWeight(FontWeight.Medium)
          .fontColor('#333')

        Text(item.desc)
          .fontSize(14)
          .fontColor('#666')
          .margin({ top: 4 })
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)

      Button({ type: ButtonType.Capsule }) {
        Text(`${item.points}积分兑换`)
          .fontSize(14)
          .fontColor(Color.White)
      }
      .height(36)
      .backgroundColor(this.currentPoints >= item.points ? '#409EFF' : '#CCCCCC')
      .enabled(this.currentPoints >= item.points)

      .onClick(() => {
        // 修改此处：点击时打开 ExchangeDialog
        this.openExchangeDialog();
      })

    }
    .width('100%')
    .padding(12)
    .backgroundColor('#F9F9F9')
    .borderRadius(8)
    .margin({ bottom: 10 })
  }

  build() {
    Scroll() {
    Column() {
      // 顶部积分信息
      Row() {
        Column() {
          Image($r('app.media.point'))
            .width(60)
            .height(60)
        }
        .margin({ right: 20 })

        Column() {
          Text(`${PointsData.getCurrentLevel(this.currentPoints)}`)
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor('#333')

          Text(`当前积分：${this.currentPoints}`)
            .fontSize(16)
            .fontColor('#409EFF')
            .margin({ top: 4 })

          if (PointsData.getNextLevelPoints(this.currentPoints) > 0) {
            Text(`距离下一等级还需 ${PointsData.getNextLevelPoints(this.currentPoints)} 积分`)
              .fontSize(14)
              .fontColor('#666')
              .margin({ top: 4 })
          } else {
            Text('已达到最高等级')
              .fontSize(14)
              .fontColor('#52C41A')
              .margin({ top: 4 })
          }

          // 等级进度条
          Row() {
            Progress({ value: PointsData.getLevelProgress(this.currentPoints), total: 100 })
              .color('#409EFF')
              .height(6)
              .width('100%')
          }
          .width('100%')
          .margin({ top: 8 })
        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)
      }
      .width('100%')
      .padding(16)
      .backgroundColor('#F5F7FA')
      .borderRadius(12)
      .margin({ bottom: 20 })

      // 选项卡
      Row() {
        Text('积分规则')
          .fontSize(16)
          .fontWeight(this.selectedTab === 0 ? FontWeight.Bold : FontWeight.Normal)
          .fontColor(this.selectedTab === 0 ? '#409EFF' : '#666')
          .padding({ left: 16, right: 16, top: 12, bottom: 12 })
          .backgroundColor(this.selectedTab === 0 ? '#ECF5FF' : 'transparent')
          .borderRadius(20)
          .onClick(() => {
            this.selectedTab = 0;
          })

        Text('积分兑换')
          .fontSize(16)
          .fontWeight(this.selectedTab === 1 ? FontWeight.Bold : FontWeight.Normal)
          .fontColor(this.selectedTab === 1 ? '#409EFF' : '#666')
          .padding({ left: 16, right: 16, top: 12, bottom: 12 })
          .backgroundColor(this.selectedTab === 1 ? '#ECF5FF' : 'transparent')
          .borderRadius(20)
          .margin({ left: 16 })
          .onClick(() => {
            this.selectedTab = 1;
          })
      }
      .width('100%')
      .margin({ bottom: 16 })

      Column() {
        // 内容区域
        if (this.selectedTab === 0) {
          // 积分规则列表
          List() {
            ForEach(PointsData.pointRules, (rule: PointRule) => {
              ListItem() {
                this.RuleItem(rule)
              }
            })
          }
          .width('100%')
          .height(300) // 设置固定高度确保内容可见
        } else {
          // 积分兑换列表
          List() {
            ForEach(PointsData.exchangeOptions, (item: ExchangeOption) => {
              ListItem() {
                this.ExchangeItem(item)
              }
            })
          }
          .width('100%')
          .height(300) // 设置固定高度确保内容可见
        }
      }
      .width('100%')

      // 底部等级说明
      Column() {
        Text("等级特权说明")
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .fontColor('#333')
          .margin({ bottom: 12 })

        Divider()
          .strokeWidth(1)
          .color('#EEE')
          .margin({ bottom: 12 })

        Grid() {
          ForEach(PointsData.levelRules, (rule:LevelRule) => {
            GridItem() {
              Column() {
                Text(rule.level)
                  .fontSize(14)
                  .fontWeight(FontWeight.Medium)
                  .fontColor('#333')

                Text(rule.points)
                  .fontSize(12)
                  .fontColor('#666')
                  .margin({ top: 4 })

                Text(rule.benefits)
                  .fontSize(12)
                  .fontColor('#409EFF')
                  .margin({ top: 4 })
              }
              .width('100%')
              .padding(8)
              .backgroundColor('#F9F9F9')
              .borderRadius(8)
            }
          })
        }
        .columnsTemplate('1fr 1fr 1fr')
        .columnsGap(8)
        .rowsGap(8)
      }
      .width('100%')
      .padding(16)
      .backgroundColor('#F5F7FA')
      .borderRadius(12)
      .margin({ top: 16 })
    }
    .width('100%')
    .padding(20)
    .backgroundColor(Color.White)
    .borderRadius(20)
    }
    .scrollable(ScrollDirection.Vertical) // 启用垂直滚动
    .scrollBar(BarState.Auto) // 自动显示滚动条
    .edgeEffect(EdgeEffect.Spring) // 添加边缘效果
    .width('90%')
    .height('80%') // 设置对话框高度为屏幕的80%
    .backgroundColor(Color.White)
    .borderRadius(20)
    .shadow({ radius: 16, color: '#30000000' })
  }
}