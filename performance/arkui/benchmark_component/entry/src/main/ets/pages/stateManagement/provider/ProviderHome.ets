/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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
@ComponentV2
struct ProviderHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ProviderHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'ProviderNumberSample',buttonUrl:'pages/stateManagement/provider/ProviderNumberSample'});
        CommonButton({buttonName:'ProviderStringSample',buttonUrl:'pages/stateManagement/provider/ProviderStringSample'});
        CommonButton({buttonName:'ProviderBooleanSample',buttonUrl:'pages/stateManagement/provider/ProviderBooleanSample'});
        CommonButton({buttonName:'ProviderClassSample',buttonUrl:'pages/stateManagement/provider/ProviderClassSample'});
        CommonButton({buttonName:'ProviderArraySample',buttonUrl:'pages/stateManagement/provider/ProviderArraySample'});
        CommonButton({buttonName:'ProviderDateSample',buttonUrl:'pages/stateManagement/provider/ProviderDateSample'});
        CommonButton({buttonName:'ProviderMapSample',buttonUrl:'pages/stateManagement/provider/ProviderMapSample'});
        CommonButton({buttonName:'ProviderSetSample',buttonUrl:'pages/stateManagement/provider/ProviderSetSample'});
        CommonButton({buttonName:'ProviderEnumSample',buttonUrl:'pages/stateManagement/provider/ProviderEnumSample'});
        CommonButton({buttonName:'ProviderObjectSample',buttonUrl:'pages/stateManagement/provider/ProviderObjectSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}