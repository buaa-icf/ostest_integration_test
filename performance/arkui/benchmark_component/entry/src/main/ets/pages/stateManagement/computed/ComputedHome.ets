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
struct ComputedHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ComputedHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)
        CommonButton({buttonName:'ComputedArraySample',buttonUrl:'pages/stateManagement/computed/ComputedArraySample'});
        CommonButton({buttonName:'ComputedBooleanSample',buttonUrl:'pages/stateManagement/computed/ComputedBooleanSample'});
        CommonButton({buttonName:'ComputedDateSample',buttonUrl:'pages/stateManagement/computed/ComputedDateSample'});
        CommonButton({buttonName:'ComputedEnumSample',buttonUrl:'pages/stateManagement/computed/ComputedEnumSample'});
        CommonButton({buttonName:'ComputedMapSample',buttonUrl:'pages/stateManagement/computed/ComputedMapSample'});
        CommonButton({buttonName:'ComputedNumberSample',buttonUrl:'pages/stateManagement/computed/ComputedNumberSample'});
        CommonButton({buttonName:'ComputedObjectSample',buttonUrl:'pages/stateManagement/computed/ComputedObjectSample'});
        CommonButton({buttonName:'ComputedSetSample',buttonUrl:'pages/stateManagement/computed/ComputedSetSample'});
        CommonButton({buttonName:'ComputedStringSample',buttonUrl:'pages/stateManagement/computed/ComputedStringSample'});
        CommonButton({buttonName:'ComputedClassSample',buttonUrl:'pages/stateManagement/computed/ComputedClassSample'});
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}