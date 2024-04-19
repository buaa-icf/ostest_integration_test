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
struct StorageLinkHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('StorageLinkHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'StorageLinkBooleanArrSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkBooleanArrSample'});
        CommonButton({buttonName:'StorageLinkBooleanSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkBooleanSample'});
        CommonButton({buttonName:'StorageLinkClassArrSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkClassArrSample'});
        CommonButton({buttonName:'StorageLinkClassSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkClassSample'});
        CommonButton({buttonName:'StorageLinkEnumArrSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkEnumArrSample'});
        CommonButton({buttonName:'StorageLinkEnumSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkEnumSample'});
        CommonButton({buttonName:'StorageLinkNumberArrSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkNumberArrSample'});
        CommonButton({buttonName:'StorageLinkNumberSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkNumberSample'});
        CommonButton({buttonName:'StorageLinkObjectArrSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkObjectArrSample'});
        CommonButton({buttonName:'StorageLinkObjectSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkObjectSample'});
        CommonButton({buttonName:'StorageLinkStringArrSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkStringArrSample'});
        CommonButton({buttonName:'StorageLinkStringSample',buttonUrl:'pages/stateManagement/storageLink/StorageLinkStringSample'});

      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}