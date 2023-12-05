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

import { ArrEntity } from '../../../entity/ArrEntity'
import { CommonButton } from '../../../util/CommonButton';

@Entry
@Component
struct TextHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('TextBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'TextCreate10Char',buttonUrl:'pages/base/text/TextCreate10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextCreate100Char',buttonUrl:'pages/base/text/TextCreate100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextAlign10char',buttonUrl:'pages/base/text/TextAlign10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextAlign100Char',buttonUrl:'pages/base/text/TextAlign100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextWidth10Char',buttonUrl:'pages/base/text/TextWidth10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextWidth100Char',buttonUrl:'pages/base/text/TextWidth100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextHeight10Char',buttonUrl:'pages/base/text/TextHeight10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextHeight100Char',buttonUrl:'pages/base/text/TextHeight100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextPadding10Char',buttonUrl:'pages/base/text/TextPadding10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextPadding100Char',buttonUrl:'pages/base/text/TextPadding100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextMargin10Char',buttonUrl:'pages/base/text/TextMargin10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextMargin100Char',buttonUrl:'pages/base/text/TextMargin100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextFont10Char',buttonUrl:'pages/base/text/TextFont10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextFont100Char',buttonUrl:'pages/base/text/TextFont100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextContent10Char',buttonUrl:'pages/base/text/TextContent10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextContent100Char',buttonUrl:'pages/base/text/TextContent100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextTextIndent10Char',buttonUrl:'pages/base/text/TextTextIndent10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextTextIndent100Char',buttonUrl:'pages/base/text/TextTextIndent100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextTextCase10Char',buttonUrl:'pages/base/text/TextTextCase10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextTextCase100Char',buttonUrl:'pages/base/text/TextTextCase100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextLetterSpacing10Char',buttonUrl:'pages/base/text/TextLetterSpacing10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextLetterSpacing100Char',buttonUrl:'pages/base/text/TextLetterSpacing100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextBaselineOffset10Char',buttonUrl:'pages/base/text/TextBaselineOffset10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextBaselineOffset100Char',buttonUrl:'pages/base/text/TextBaselineOffset100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextLineHeight10Char',buttonUrl:'pages/base/text/TextLineHeight10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextLineHeight100Char',buttonUrl:'pages/base/text/TextLineHeight100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextMaxLines10Char',buttonUrl:'pages/base/text/TextMaxLines10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextMaxLines100Char',buttonUrl:'pages/base/text/TextMaxLines100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextOverflow10Char',buttonUrl:'pages/base/text/TextOverflow10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextOverflow100Char',buttonUrl:'pages/base/text/TextOverflow100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'heightAdaptivePolicyOne10Char',buttonUrl:'pages/base/text/TextHeightAdaptivePolicy10CharOneSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'heightAdaptivePolicyOne100Char',buttonUrl:'pages/base/text/TextHeightAdaptivePolicy100CharOneSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'heightAdaptivePolicyTwo10Char',buttonUrl:'pages/base/text/TextHeightAdaptivePolicy10CharTwoSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'heightAdaptivePolicyTwo100Char',buttonUrl:'pages/base/text/TextHeightAdaptivePolicy100CharTwoSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'heightAdaptivePolicyThree10Char',buttonUrl:'pages/base/text/TextHeightAdaptivePolicy10CharThreeSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'heightAdaptivePolicyThree100Char',buttonUrl:'pages/base/text/TextHeightAdaptivePolicy100CharThreeSample',data:ArrEntity.textOneHundredHuLength});

      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}