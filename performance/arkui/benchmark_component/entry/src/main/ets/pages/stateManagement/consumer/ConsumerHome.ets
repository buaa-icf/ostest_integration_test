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
struct ConsumerHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ConsumerHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'ConsumerNumberSample',buttonUrl:'pages/stateManagement/consumer/ConsumerNumberSample'});
        CommonButton({buttonName:'ConsumerStringSample',buttonUrl:'pages/stateManagement/consumer/ConsumerStringSample'});
        CommonButton({buttonName:'ConsumerBooleanSample',buttonUrl:'pages/stateManagement/consumer/ConsumerBooleanSample'});
        CommonButton({buttonName:'ConsumerClassSample',buttonUrl:'pages/stateManagement/consumer/ConsumerClassSample'});
        CommonButton({buttonName:'ConsumerArraySample',buttonUrl:'pages/stateManagement/consumer/ConsumerArraySample'});
        CommonButton({buttonName:'ConsumerDateSample',buttonUrl:'pages/stateManagement/consumer/ConsumerDateSample'});
        CommonButton({buttonName:'ConsumerMapSample',buttonUrl:'pages/stateManagement/consumer/ConsumerMapSample'});
        CommonButton({buttonName:'ConsumerSetSample',buttonUrl:'pages/stateManagement/consumer/ConsumerSetSample'});
        CommonButton({buttonName:'ConsumerEnumSample',buttonUrl:'pages/stateManagement/consumer/ConsumerEnumSample'});
        CommonButton({buttonName:'ConsumerObjectSample',buttonUrl:'pages/stateManagement/consumer/ConsumerObjectSample'});
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}