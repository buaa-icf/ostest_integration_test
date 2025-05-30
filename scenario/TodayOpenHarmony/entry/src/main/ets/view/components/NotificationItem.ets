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

@Component
export struct NotificationItem{
  @Prop notificationStatus: boolean = false;
  @State unreadCount: number = 0; // 初始未读数设为0
  @State lastTime: string = "--:--"; // 默认无通知时间
  private onStatusChange?: (v: boolean) => void


  private handleToggleChange(v: boolean) {
    if (v) { // 当开启通知时
      this.unreadCount = 11 // 显示红点
      this.lastTime = new Date().toLocaleTimeString('zh-CN', { hour12: false }).slice(0,5)
    } else {
      this.unreadCount = 0 // 关闭时隐藏红点
    }
    this.notificationStatus = v
    this.onStatusChange?.(v)
  }

  build() {
    ListItem() {
      Row() {
        Column() {
          Badge({
            count: this.unreadCount,
            position: BadgePosition.RightTop,
            style: {
              color: '#FFF',
              badgeColor: '#FF3B30',
              fontSize: 12
            }
          }) {
            Image($r('app.media.message'))
              .width(22)
              .height(22)

          }
        }

        .margin({ right: 18 })

        Column() {
          Text($r('app.string.message_notification'))
            .fontSize(18)
            .fontColor('#333')

          Row() {
            Text($r('app.string.last_notification'))
              .fontSize(16)
              .fontColor('#333333')
            Text(`  ${this.lastTime}`)
              .fontSize(16)
              .fontColor('#333333')
          }
        }
        .alignItems(HorizontalAlign.Start)

        Blank()

        Toggle({ type: ToggleType.Switch, isOn: this.notificationStatus })
          .size({ width: 36, height: 22 })
          .onChange((v: boolean) => this.handleToggleChange(v))  // 独立处理开关逻辑
      }

      .width('100%')
      .padding(8)
      .alignItems(VerticalAlign.Center)
    }
    .margin({ top: 4, bottom: 4, left: 2 })
    .height(50)
    .backgroundColor('#FFF')
    .borderRadius(12)
  }
}

