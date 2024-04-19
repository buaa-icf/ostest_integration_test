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
struct StoragePropHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('StoragePropHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'StoragePropBooleanArrSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropBooleanArrSample'});
        CommonButton({buttonName:'StoragePropBooleanSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropBooleanSample'});
        CommonButton({buttonName:'StoragePropClassArrSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropClassArrSample'});
        CommonButton({buttonName:'StoragePropClassSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropClassSample'});
        CommonButton({buttonName:'StoragePropEnumArrSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropEnumArrSample'});
        CommonButton({buttonName:'StoragePropEnumSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropEnumSample'});
        CommonButton({buttonName:'StoragePropNumberArrSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropNumberArrSample'});
        CommonButton({buttonName:'StoragePropNumberSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropNumberSample'});
        CommonButton({buttonName:'StoragePropObjectArrSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropObjectArrSample'});
        CommonButton({buttonName:'StoragePropObjectSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropObjectSample'});
        CommonButton({buttonName:'StoragePropStringArrSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropStringArrSample'});
        CommonButton({buttonName:'StoragePropStringSample',buttonUrl:'pages/stateManagement/storageProp/StoragePropStringSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}