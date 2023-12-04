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
struct TextInputHome {

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('TextInputBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'TextInputCreate10Char',buttonUrl:'pages/base/textInput/TextInputCreate10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextInputCreate100Char',buttonUrl:'pages/base/textInput/TextInputCreate100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextInputWidth10Char',buttonUrl:'pages/base/textInput/TextInputWidth10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextInputWidth100Char',buttonUrl:'pages/base/textInput/TextInputWidth100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextInputHeight10Char',buttonUrl:'pages/base/textInput/TextInputHeight10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextInputHeight100Char',buttonUrl:'pages/base/textInput/TextInputHeight100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextInputPadding10Char',buttonUrl:'pages/base/textInput/TextInputPadding10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextInputPadding100Char',buttonUrl:'pages/base/textInput/TextInputPadding100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextInputMargin10Char',buttonUrl:'pages/base/textInput/TextInputMargin10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextInputMargin100Char',buttonUrl:'pages/base/textInput/TextInputMargin100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextInputAlign10Char',buttonUrl:'pages/base/textInput/TextInputAlign10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextInputAlign100Char',buttonUrl:'pages/base/textInput/TextInputAlign100CharSample',data:ArrEntity.textOneHundredHuLength});

        CommonButton({buttonName:'TextInputType10Char',buttonUrl:'pages/base/textInput/TextInputType10CharSample',data:ArrEntity.textTenLength});
        CommonButton({buttonName:'TextInputType100Char',buttonUrl:'pages/base/textInput/TextInputType100CharSample',data:ArrEntity.textOneHundredHuLength});


      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}