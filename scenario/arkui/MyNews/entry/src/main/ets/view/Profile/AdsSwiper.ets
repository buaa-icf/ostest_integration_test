/*
 * Copyright (c) 2023 Southeast University.
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

/**
 * Common invisible button style
 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}

/**
 * Ads swiper
 */
@Component
export default struct AdsSwiper {
  @State adImgList: Resource[] = [
    $r('app.media.fig_14'),
    $r('app.media.fig_15'),
    $r('app.media.fig_16'),
    $r('app.media.fig_17'),
    $r('app.media.fig_18'),
    $r('app.media.fig_19'),
    $r('app.media.fig_20')
  ]
  private adSwiperController = new SwiperController()

  build() {
    Swiper(this.adSwiperController) {
      ForEach(this.adImgList, (item: Resource, itemIdx: number) => {
        Button() {
          Image(item)
            .width('100%')
            .height(80)
            .padding({ left: 20, right: 20 })
            .objectFit(ImageFit.Fill)
            .borderRadius(5)
        }
        .commonBtnStyle()
      })
    }
    .loop(true)
    .autoPlay(true)
    .interval(3000)
  }
}