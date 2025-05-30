
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

import abilityAccessCtrl, { PermissionRequestResult } from '@ohos.abilityAccessCtrl';
import { promptAction } from "@kit.ArkUI";
@Component
export struct SettingsItem {
  @State isExpanded: boolean = false
  @StorageLink('fontScale') fontScale: number = 1.0
  @State storageUsed: number = 0  // 添加状态变量
  @State storageTotal: number = 128  // 添加状态变量
  @State permissionStatus: string = '未授权';
  @State lastBackupTime: string = '' // 初始值可设为空字符串
  @State isBackingUp: boolean = false

  // 添加生命周期获取数据
  aboutToAppear() {
    this.getStorageInfo()
  }
  // 获取存储信息方法
  getStorageInfo() {
    // 实际应调用系统API,这里模拟数据
    this.storageUsed = 23.5
    this.storageTotal = 128
  }

  adjustFont(delta: number) {
    const newVal = Math.min(Math.max(0.8, this.fontScale + delta), 1.5)
    this.fontScale = Number(newVal.toFixed(1)) // 限制步长0.1
  }

  private handleBackup() {
    this.isBackingUp = true;
    // 模拟备份过程
    setTimeout(() => {
      this.isBackingUp = false;

      // 获取当前日期并格式化为 "月-日 时:分" 格式
      const now = new Date();
      const month = (now.getMonth() + 1).toString().padStart(2, '0'); // 月份补零
      const day = now.getDate().toString().padStart(2, '0'); // 日期补零
      const hours = now.getHours().toString().padStart(2, '0'); // 小时补零
      const minutes = now.getMinutes().toString().padStart(2, '0'); // 分钟补零

      this.lastBackupTime = `${month}-${day} ${hours}:${minutes}`;

      promptAction.showToast({ message: '备份成功' });
    }, 2000);
  }

  // 权限请求方法
  private handleManagePermissions() {
    const atManager = abilityAccessCtrl.createAtManager();
    // 正确使用异步请求方式
    atManager.requestPermissionsFromUser(
      getContext(),
      ['ohos.permission.CAMERA'],
      (err: Error, result: PermissionRequestResult) => {
        if (err) {
          console.error('Permission Error:', err.message);
          return;
        }
        // 添加详细结果处理
        if (result.authResults.length > 0) {
          this.permissionStatus = result.authResults[0] === 0 ? "已授权" : "未授权";
          promptAction.showToast({ message: `权限状态：${this.permissionStatus}` });
        }
      }
    );
  }

  build() {
    Column() {
      // 主卡片
      Row() {
        Image($r('app.media.setting'))
          .width(24)
          .margin({ left: 16, right: 12 })
        Text($r('app.string.system_settings'))
          .fontSize(16)
          .fontColor('#333')
      }
      .width('100%')
      .height(56)
      .backgroundColor('#FFF')
      .borderRadius(12)
      .alignItems(VerticalAlign.Center) // 垂直居中
      .onClick(() => this.isExpanded = !this.isExpanded)

      // 子项样式
      if (this.isExpanded) {
        Column() {
          Row() {
            Image($r('app.media.sync'))
              .width(35)
              .margin({ left: 12, right: 12 })

            Text($r('app.string.auto_sync'))
              .fontColor('#666')

            Toggle({ type: ToggleType.Switch })
              .width(48)
              .height(28)
              .margin({ right: 16 })
          }
          .height(48)
          .alignItems(VerticalAlign.Center)

          Divider()
            .strokeWidth(1)
            .color('#EEE')
            .margin({ left: 16, right: 16 })

          Row() {
            Image($r('app.media.backup'))
              .width(28)
              .margin({ left: 12, right: 12 })

            Column() {
              Text($r('app.string.data_backup'))
                .fontColor('#666')

              if (this.lastBackupTime) {
                Text(`上次备份：${this.lastBackupTime}`)
                  .fontSize(12)
                  .fontColor('#999')
                  .margin({ top: 4 })
              } else {
                Text($r('app.string.no_backup_history'))
                  .fontSize(12)
                  .fontColor('#FF8800')
                  .margin({ top: 2 })
              }
            }
            .layoutWeight(1)

            Button(this.isBackingUp
              ? $r('app.string.backup_in_progress')
              : $r('app.string.backup_now'))
              .width(100)
              .height(28)
              .backgroundColor(this.isBackingUp ? '#F0F0F0' : Color.Transparent)
              .border({
                width: 1,
                color: this.isBackingUp ? '#DDD' : '#409EFF',
                style: BorderStyle.Solid
              })
              .fontColor(this.isBackingUp ? '#666' : '#409EFF')
              .onClick(() => {
                if (!this.isBackingUp) {
                  this.handleBackup();
                }
              })
              .margin({ right: 16 })
          }
          .height(60)
          .alignItems(VerticalAlign.Center)

          Divider()
            .strokeWidth(1)
            .color('#EEE')
            .margin({ left: 16, right: 16 })

          Row() {
            Image($r('app.media.text'))
              .width(20)
              .margin({ left: 16, right: 12 })
            Text($r('app.string.font_size'))
              .fontColor('#666')

            // 右侧调节区域
            Row() {
              Text(`${Math.round(16 * this.fontScale)}px`)
                .width(40)
                .fontColor('#333')
                .textAlign(TextAlign.End)

              Button() {
                Image($r('app.media.minus'))
                  .width(20)
                  .height(20)
              }
              .backgroundColor(Color.Transparent)
              .border({
                width: 1,
                color: '#1890FF',
                style: BorderStyle.Solid
              })
              .margin({ left: 8 })
              .onClick(() => this.adjustFont(-0.1))

              Button() {
                Image($r('app.media.plus'))
                  .width(20)
                  .height(20)
              }
              .backgroundColor(Color.Transparent)
              .border({
                width: 1,
                color:  '#1890FF',
                style: BorderStyle.Solid
              })
              .margin({ left: 4 })
              .onClick(() => this.adjustFont(0.1))
            }
            .margin({ right: 16 })
          }
          .justifyContent(FlexAlign.SpaceBetween) // 左右分栏

          Divider()
            .strokeWidth(1)
            .color('#EEE')
            .margin({ left: 16, right: 16 })

          Row() {
            Image($r('app.media.permission'))
              .width(28)
              .margin({ left:16, right:12 })
            Text($r('app.string.app_permission'))
              .fontColor('#666')
              .margin({ right: 8 })

            Text(this.permissionStatus)
              .fontColor('#333')
              .margin({ right: 8 })

            Button($r('app.string.manage'))
              .margin({left:8, right:16})
              .width(60)
              .height(28)
              .onClick(() => this.handleManagePermissions())
          }
          .justifyContent(FlexAlign.SpaceBetween)

          Divider()
            .strokeWidth(1)
            .color('#EEE')
            .margin({ left: 16, right: 16 })

          Row() {
            Row() {
              Image($r('app.media.storage'))
                .width(24)
                .margin({  right: 12 })
              Text($r('app.string.storage_management'))
                .fontColor('#666')
            }
            .layoutWeight(1)
            .justifyContent(FlexAlign.Center)

            Row() {
              Text(`${this.storageUsed}GB / ${this.storageTotal}GB`)
                .fontColor('#555')
                .fontSize(14)
                .margin({ right:100 })
            }
          }
          .alignItems(VerticalAlign.Center)
        }
        .height(300)
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)  // 两端对齐
        .backgroundColor('#FFF')
        .borderRadius(8)
        .margin({ top: 8 })
        .padding(20) // 添加内边距
        .transition({ type: TransitionType.Insert, opacity: 0.95 })
      }
    }
    .backgroundColor('#F3F4F6')
  }
}
