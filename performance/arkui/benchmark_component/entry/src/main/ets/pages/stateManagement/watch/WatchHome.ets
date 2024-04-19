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
struct WatchHome {
  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('WatchHome')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({buttonName:'WatchConsumeStringSample',buttonUrl:'pages/stateManagement/watch/WatchConsumeStringSample'});
        CommonButton({buttonName:'WatchLinkStringSample',buttonUrl:'pages/stateManagement/watch/WatchLinkStringSample'});
        CommonButton({buttonName:'WatchLocalStorageLinkStringSample',buttonUrl:'pages/stateManagement/watch/WatchLocalStorageLinkStringSample'});
        CommonButton({buttonName:'WatchLocalStoragePropStringSample',buttonUrl:'pages/stateManagement/watch/WatchLocalStoragePropStringSample'});
        CommonButton({buttonName:'WatchObjectLinkOrdinarySample',buttonUrl:'pages/stateManagement/watch/WatchObjectLinkOrdinarySample'});
        CommonButton({buttonName:'WatchObservedOrdinarySample',buttonUrl:'pages/stateManagement/watch/WatchObservedOrdinarySample'});
        CommonButton({buttonName:'WatchPropStringSample',buttonUrl:'pages/stateManagement/watch/WatchPropStringSample'});
        CommonButton({buttonName:'WatchProvideStringSample',buttonUrl:'pages/stateManagement/watch/WatchProvideStringSample'});
        CommonButton({buttonName:'WatchStateStringSample',buttonUrl:'pages/stateManagement/watch/WatchStateStringSample'});
        CommonButton({buttonName:'WatchStorageLinkStringSample',buttonUrl:'pages/stateManagement/watch/WatchStorageLinkStringSample'});
        CommonButton({buttonName:'WatchStoragePropStringSample',buttonUrl:'pages/stateManagement/watch/WatchStoragePropStringSample'});
      }
      .padding('5vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}