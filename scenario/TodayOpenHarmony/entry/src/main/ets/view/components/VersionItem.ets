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
export struct VersionItem {
  @Prop version: string = 'v2.1.0';
  build() {
    ListItem() {
      Row() {
        Image($r('app.media.version'))
          .width(24)
          .height(24)
          .margin({ right: 20 })
          .colorFilter('#333333')
        Text($r('app.string.version_info'))
          .fontSize(16)
          .fontColor('#333')
          .layoutWeight(1)
        Text(this.version)
          .fontSize(14)
          .fontColor('#666666')
      }
      .width('100%')
      .padding({ left: 12, right: 12 })
    }
    .width('100%')
    .height(56)
    .backgroundColor('#FFF')
    .borderRadius(12)
    .shadow({ radius: 6, color: 'rgba(0,0,0,0.1)' })
    .onClick(() => {
      promptAction.showToast({ message: $r('app.string.latest_version') })
    })
  }
}