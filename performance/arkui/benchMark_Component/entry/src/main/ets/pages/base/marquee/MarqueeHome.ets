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
struct DividerHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('MarqueeBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'MarqueeCreate',buttonUrl:'pages/base/marquee/MarqueeCreateSample'});
        CommonButton({buttonName:'MarqueeWidth',buttonUrl:'pages/base/marquee/MarqueeWidthSample'});
        CommonButton({buttonName:'MarqueeHeight',buttonUrl:'pages/base/marquee/MarqueeHeightSample'});
        CommonButton({buttonName:'MarqueePadding',buttonUrl:'pages/base/marquee/MarqueePaddingSample'});
        CommonButton({buttonName:'MarqueeMargin',buttonUrl:'pages/base/marquee/MarqueeMarginSample'});
        CommonButton({buttonName:'MarqueeSrc',buttonUrl:'pages/base/marquee/MarqueeSrcSample'});
        CommonButton({buttonName:'MarqueeStep',buttonUrl:'pages/base/marquee/MarqueeStepSample'});
        CommonButton({buttonName:'MarqueeFromStart',buttonUrl:'pages/base/marquee/MarqueeFromStartSample'});



      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}