/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import { CommonButton } from '../../../util/CommonButton'

@Entry
@Component
struct SwiperHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('SwipeBenchmark')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'SwiperCreateSample', buttonUrl: 'pages/container/swiper/SwiperCreateSample' });
        CommonButton({ buttonName: 'SwiperWidthSample', buttonUrl: 'pages/container/swiper/SwiperWidthSample' });
        CommonButton({ buttonName: 'SwiperHeightSample', buttonUrl: 'pages/container/swiper/SwiperHeightSample' });
        CommonButton({ buttonName: 'SwiperPaddingSample', buttonUrl: 'pages/container/swiper/SwiperPaddingSample' });
        CommonButton({ buttonName: 'SwiperMarginSample', buttonUrl: 'pages/container/swiper/SwiperMarginSample' });
        CommonButton({ buttonName: 'SwiperIndexSample', buttonUrl: 'pages/container/swiper/SwiperIndexSample' });
        CommonButton({ buttonName: 'SwiperVerticalSample', buttonUrl: 'pages/container/swiper/SwiperVerticalSample' });
        CommonButton({ buttonName: 'SwiperItemSpaceSample', buttonUrl: 'pages/container/swiper/SwiperItemSpaceSample' });
        CommonButton({ buttonName: 'SwiperDisplayModeSample', buttonUrl: 'pages/container/swiper/SwiperDisplayModeSample' });
        CommonButton({ buttonName: 'SwiperDisplayCountSample', buttonUrl: 'pages/container/swiper/SwiperDisplayCountSample' });
        CommonButton({ buttonName: 'SwiperNextMarginSample', buttonUrl: 'pages/container/swiper/SwiperNextMarginSample' });
        CommonButton({ buttonName: 'SwiperPrevMarginSample', buttonUrl: 'pages/container/swiper/SwiperPrevMarginSample' });
        CommonButton({ buttonName: 'SwiperCurveSample', buttonUrl: 'pages/container/swiper/SwiperCurveSample' });
        CommonButton({ buttonName: 'SwiperControllerShowNextSample', buttonUrl: 'pages/container/swiper/SwiperControllerShowNextSample' });
        CommonButton({ buttonName: 'SwiperManualSlidingSample', buttonUrl: 'pages/container/swiper/SwiperManualSlidingSample' });
        CommonButton({ buttonName: 'SwiperLoopSample', buttonUrl: 'pages/container/swiper/SwiperLoopSample' });
        CommonButton({ buttonName: 'SwiperEffectModeSample', buttonUrl: 'pages/container/swiper/SwiperEffectModeSample' });
        CommonButton({ buttonName: 'SwiperDurationSample', buttonUrl: 'pages/container/swiper/SwiperDurationSample' });

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}