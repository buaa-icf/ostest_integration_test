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

import { CommonButton } from '../../../util/CommonButton';

@Entry
@Component
struct RatingHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('RatingBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'RatingCreate',buttonUrl:'pages/base/rating/RatingCreateSample'});
        CommonButton({buttonName:'RatingWidth',buttonUrl:'pages/base/rating/RatingWidthSample'});
        CommonButton({buttonName:'RatingHeight',buttonUrl:'pages/base/rating/RatingHeightSample'});
        CommonButton({buttonName:'RatingPadding',buttonUrl:'pages/base/rating/RatingPaddingSample'});
        CommonButton({buttonName:'RatingMargin',buttonUrl:'pages/base/rating/RatingMarginSample'});
        CommonButton({buttonName:'RatingStars',buttonUrl:'pages/base/rating/RatingStarsSample'});
        CommonButton({buttonName:'RatingStarStyle',buttonUrl:'pages/base/rating/RatingStarStyleSample'});
        CommonButton({buttonName:'RatingOptionsRating',buttonUrl:'pages/base/rating/RatingOptionsRatingSample'});
        CommonButton({buttonName:'RatingClick',buttonUrl:'pages/base/rating/RatingClickSample'});
        CommonButton({buttonName:'RatingSwip',buttonUrl:'pages/base/rating/RatingSwipSample'});



      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}