
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
import { promptAction } from "@kit.ArkUI";

@Component
export struct CleanItem {
  @Prop cacheSize: number ;
  @State isCleaning: boolean = false; // 新增清理状态
  @State cleanAnimation: boolean = false; // 清理动画效果

  build() {
    Column() {
      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {

        Row() {
          Image($r('app.media.clean'))
            .width(24)
            .height(24)
            .margin({ right: 18, left: 4 })
            .colorFilter('#666666')

          Row() {
            Text($r('app.string.cache_size'))
              .fontSize(16)
              .fontColor('#333333')
            Text(` ${(this.cacheSize / 1024).toFixed(1)}MB`)
              .fontSize(16)
              .fontColor('#333333')
          }
          .opacity(this.cleanAnimation ? 0.5 : 1)
          .scale({ x: this.cleanAnimation ? 0.9 : 1, y: this.cleanAnimation ? 0.9 : 1 })
          .animation({ duration: 500, curve: Curve.EaseOut })
        }
        .layoutWeight(1)

        Button(this.isCleaning ? $r('app.string.cleaning') : $r('app.string.clean_now'))
          .height(36)
          .width(100)
          .fontSize(14)
          .padding(8)
          .fontColor('#FFFFFF')
          .backgroundColor('#409EFF')
          .type(ButtonType.Capsule)
          .stateEffect(!this.isCleaning)// 清理中禁用点击效果
          .onClick(() => {
            if (this.isCleaning || this.cacheSize === 0) return;

            this.isCleaning = true;
            this.cleanAnimation = true;

            // 模拟清理过程
            setTimeout(() => {
              this.cacheSize = 0;
              this.isCleaning = false;
              this.cleanAnimation = false;

              promptAction.showToast({
                message: $r('app.string.clean_completed_message', [ (Math.random() * 50 + 50).toFixed(0) ]),
                duration: 2000
              })
            }, 1500);
          })
      }
      .padding(8)
      .width('100%')
      .height(56)
      .backgroundColor('#FFF')
      .borderRadius(12)
      .shadow({ radius: 6, color: 'rgba(0,0,0,0.1)' })

      // 添加存储空间可视化
      Stack() {
        Progress({
          value: this.cacheSize > 0 ? 100 : 0,
          total: 100,
          type: ProgressType.Linear
        })
          .width('100%')
          .height(4)
          .color('#409EFF')
          .backgroundColor('#EBEEF5')

        if (this.cacheSize > 0) {
          Circle()
            .width(8)
            .height(8)
            .fill('#409EFF')
            .margin({ left: `${Math.min(95, (this.cacheSize / 1024))}%` })
            .offset({ x: -4 })
        }
      }
      .width('100%')
      .margin({ top: 4, bottom: 4 })
    }
    .height(64)
    .backgroundColor('#FFF')
    .borderRadius(12)
    .shadow({ radius: 6, color: 'rgba(0,0,0,0.1)' })
    .width('100%')
  }
}