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
struct PatternLockHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('PatternLockBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'PatternLockCreate',buttonUrl:'pages/base/patternLock/PatternLockCreateSample'});
        CommonButton({buttonName:'PatternLockSideLength',buttonUrl:'pages/base/patternLock/PatternLockSideLengthSample'});
        CommonButton({buttonName:'PatternLockCircleRadius',buttonUrl:'pages/base/patternLock/PatternLockCircleRadiusSample'});
        CommonButton({buttonName:'PatternLockRegularColor',buttonUrl:'pages/base/patternLock/PatternLockRegularColorSample'});
        CommonButton({buttonName:'PatternLockSelectedColor',buttonUrl:'pages/base/patternLock/PatternLockSelectedColorSample'});
        CommonButton({buttonName:'PatternLockActiveColor',buttonUrl:'pages/base/patternLock/PatternLockActiveColorSample'});
        CommonButton({buttonName:'PatternLockPathColor',buttonUrl:'pages/base/patternLock/PatternLockPathColorSample'});
        CommonButton({buttonName:'PatternLockPathStrokeWidth',buttonUrl:'pages/base/patternLock/PatternLockPathStrokeWidthSample'});
        CommonButton({buttonName:'PatternLockWidth',buttonUrl:'pages/base/patternLock/PatternLockWidthSample'});
        CommonButton({buttonName:'PatternLockHeight',buttonUrl:'pages/base/patternLock/PatternLockHeightSample'});
        CommonButton({buttonName:'PatternLockPadding',buttonUrl:'pages/base/patternLock/PatternLockPaddingSample'});
        CommonButton({buttonName:'PatternLockMargin',buttonUrl:'pages/base/patternLock/PatternLockMarginSample'});

      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}