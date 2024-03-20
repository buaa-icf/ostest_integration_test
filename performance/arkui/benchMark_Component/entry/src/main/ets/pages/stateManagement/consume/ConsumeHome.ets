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
struct ConsumeHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ConsumeHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)
        CommonButton({buttonName:'ConsumeObjectSample',buttonUrl:'pages/stateManagement/consume/ConsumeObjectSample'});
        CommonButton({buttonName:'ConsumeClassSample',buttonUrl:'pages/stateManagement/consume/ConsumeClassSample'});
        CommonButton({buttonName:'ConsumeStringSample',buttonUrl:'pages/stateManagement/consume/ConsumeStringSample'});
        CommonButton({buttonName:'ConsumeNumberSample',buttonUrl:'pages/stateManagement/consume/ConsumeNumberSample'});
        CommonButton({buttonName:'ConsumeBooleanSample',buttonUrl:'pages/stateManagement/consume/ConsumeBooleanSample'});
        CommonButton({buttonName:'ConsumeEnumSample',buttonUrl:'pages/stateManagement/consume/ConsumeEnumSample'});
        CommonButton({buttonName:'ConsumeDateSample',buttonUrl:'pages/stateManagement/consume/ConsumeDateSample'});
        CommonButton({buttonName:'ConsumeObjectArrSample',buttonUrl:'pages/stateManagement/consume/ConsumeObjectArrSample'});
        CommonButton({buttonName:'ConsumeClassArrSample',buttonUrl:'pages/stateManagement/consume/ConsumeClassArrSample'});
        CommonButton({buttonName:'ConsumeStringArrSample',buttonUrl:'pages/stateManagement/consume/ConsumeStringArrSample'});
        CommonButton({buttonName:'ConsumeNumberArrSample',buttonUrl:'pages/stateManagement/consume/ConsumeNumberArrSample'});
        CommonButton({buttonName:'ConsumeBooleanArrSample',buttonUrl:'pages/stateManagement/consume/ConsumeBooleanArrSample'});
        CommonButton({buttonName:'ConsumeEnumArrSample',buttonUrl:'pages/stateManagement/consume/ConsumeEnumArrSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}