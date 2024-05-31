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

import { ArrEntity } from '../../../entity/ArrEntity';
import { TimeHelper } from '../../../util/TimeHelper'
import { StateConstants, StateModel } from '../StateModel';

const timeHelper: TimeHelper = new TimeHelper('TraceSetSample');

@ObservedV2
class Info {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace memberSet: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet1: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet2: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet3: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet4: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet5: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet6: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet7: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet8: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet9: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet10: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet11: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet12: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet13: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet14: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet15: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet16: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet17: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet18: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet19: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet20: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet21: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet22: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet23: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet24: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet25: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet26: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet27: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet28: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet29: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet30: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet31: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet32: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet33: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet34: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet35: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet36: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet37: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet38: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet39: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet40: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet41: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet42: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet43: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet44: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet45: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet46: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet47: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet48: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Trace memberSet49: Set<number> = new Set([0, 1, 2, 3, 4]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let testData: Info = new Info()

@ComponentV2
struct ChildTraceSetSample {
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      testData.memberSet.add(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    testData.memberSet.clear()
    testData.memberSet.add(500)
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = testData.memberSet.values()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${Array.from(testData.memberSet.values()).toString()}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = testData.memberSet.values()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            testData.memberSet.add(index)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct TraceSetSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${Array.from(testData.memberSet.values()).toString()}`)
      ChildTraceSetSample()
    }
  }
}
