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

import hilog from '@ohos.hilog';
import router from '@ohos.router';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';

const TRACK_STRING_SAMPLE_SUITE: string = 'TrackStringSampleCoverageTest';
const TRACK_STRING_SAMPLE_URL: string = 'pages/stateManagement/track/TrackStringSample';

@Entry
@Component
struct Index {
  @State private hasRouted: boolean = false;

  aboutToAppear() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'TestAbility index aboutToAppear');
    if (this.hasRouted || !this.shouldOpenTrackStringSample()) {
      return;
    }
    this.hasRouted = true;
    router.replaceUrl({ url: TRACK_STRING_SAMPLE_URL });
  }

  private shouldOpenTrackStringSample(): boolean {
    let abilityDelegatorArguments: AbilityDelegatorRegistry.AbilityDelegatorArgs =
      AbilityDelegatorRegistry.getArguments();
    let suiteName: string = '';
    if (abilityDelegatorArguments.parameters && abilityDelegatorArguments.parameters['-s class']) {
      suiteName = abilityDelegatorArguments.parameters['-s class'] as string;
    } else if (abilityDelegatorArguments.testCaseNames) {
      suiteName = abilityDelegatorArguments.testCaseNames;
    }
    return suiteName.indexOf(TRACK_STRING_SAMPLE_SUITE) !== -1;
  }

  build() {
    Row() {
      Column() {
        Text('TrackStringSample test host')
          .id('trackStringSampleHost')
          .fontSize(24)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}
