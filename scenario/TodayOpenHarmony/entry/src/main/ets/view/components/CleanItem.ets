
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

  build() {
    Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {

    Row() {
      Image($r('app.media.clean'))
        .width(24)
        .height(24)
        .margin({ right: 18, left:4 })
        .colorFilter('#666666')

      Text(`缓存大小 ${(this.cacheSize / 1024).toFixed(1)}MB`)
        .fontSize(16)
        .fontColor('#333333')

    }
    .layoutWeight(1)

      Button($r('app.string.clean_now'))
        .height(36)
        .width(80)
        .fontSize(14)
        .fontColor('#FFFFFF')
        .backgroundColor('#409EFF')
        .type(ButtonType.Capsule)
        .onClick(() => {
          this.cacheSize = 0 // 直接操作
          promptAction.showToast({
            message: '清理完成',
            duration: 2000
          })
        })
    }
    .padding(8)
    .width('100%')
    .height(56)
    .backgroundColor('#FFF')
    .borderRadius(12)
    .shadow({ radius: 6, color: 'rgba(0,0,0,0.1)' })
  }
}