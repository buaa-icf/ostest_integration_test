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


// view/news/components/Banner.ets
import { BannerItem } from '../../model/BannerModel';
interface BannerCallback {
  onItemClick?: (link: string) => void
}
@Component
export struct Banner {
  @Prop items: BannerItem[] = [];
  @Prop callbackObj: BannerCallback = { onItemClick: () => {} }
  @State private lastX: number = 0
  @State private rotateY: number = 0
  @State private scaleValue: number = 1

  build() {
    Swiper() {
      ForEach(this.items,
        (item: BannerItem) => {
          Column() {
            Image(item.image)
              .width('100%')
              .height(250)
              .objectFit(ImageFit.Cover)
              .scale({ x: this.scaleValue, y: this.scaleValue })
              .rotate({
                angle: this.rotateY, // 必须包含angle
                centerY: '50%',     // 可选旋转中心
              })
          }
          .width('100%')
          .onClick(() => this.callbackObj.onItemClick?.(item.link))
          .onTouch((e: TouchEvent) => {
            if (e.type === TouchType.Move && e.touches[0]) {
              const currentX = e.touches[0].windowX
              const deltaX = currentX - this.lastX

              this.rotateY = deltaX / 3
              this.scaleValue = 1 - Math.abs(deltaX) / 500
              this.lastX = currentX
            } else if (e.type === TouchType.Up) {
              animateTo({ duration: 300, curve: Curve.Friction }, () => {
                this.rotateY = 0
                this.scaleValue = 1
              })
              this.lastX = 0
            }
          })
        },
        (item: BannerItem) => item.id.toString()
      )
    }
    .autoPlay(true)
    .indicator(true)
    .height(250)
  }
}