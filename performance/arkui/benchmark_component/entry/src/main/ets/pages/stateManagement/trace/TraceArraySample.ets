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
import { numberArr } from '../ClassModel';

const timeHelper: TimeHelper = new TimeHelper('TraceArraySample');

@ObservedV2
class Arr {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace numberArr: number[] = numberArr;
  @Trace numberArr1: number[] = numberArr;
  @Trace numberArr2: number[] = numberArr;
  @Trace numberArr3: number[] = numberArr;
  @Trace numberArr4: number[] = numberArr;
  @Trace numberArr5: number[] = numberArr;
  @Trace numberArr6: number[] = numberArr;
  @Trace numberArr7: number[] = numberArr;
  @Trace numberArr8: number[] = numberArr;
  @Trace numberArr9: number[] = numberArr;
  @Trace numberArr10: number[] = numberArr;
  @Trace numberArr11: number[] = numberArr;
  @Trace numberArr12: number[] = numberArr;
  @Trace numberArr13: number[] = numberArr;
  @Trace numberArr14: number[] = numberArr;
  @Trace numberArr15: number[] = numberArr;
  @Trace numberArr16: number[] = numberArr;
  @Trace numberArr17: number[] = numberArr;
  @Trace numberArr18: number[] = numberArr;
  @Trace numberArr19: number[] = numberArr;
  @Trace numberArr20: number[] = numberArr;
  @Trace numberArr21: number[] = numberArr;
  @Trace numberArr22: number[] = numberArr;
  @Trace numberArr23: number[] = numberArr;
  @Trace numberArr24: number[] = numberArr;
  @Trace numberArr25: number[] = numberArr;
  @Trace numberArr26: number[] = numberArr;
  @Trace numberArr27: number[] = numberArr;
  @Trace numberArr28: number[] = numberArr;
  @Trace numberArr29: number[] = numberArr;
  @Trace numberArr30: number[] = numberArr;
  @Trace numberArr31: number[] = numberArr;
  @Trace numberArr32: number[] = numberArr;
  @Trace numberArr33: number[] = numberArr;
  @Trace numberArr34: number[] = numberArr;
  @Trace numberArr35: number[] = numberArr;
  @Trace numberArr36: number[] = numberArr;
  @Trace numberArr37: number[] = numberArr;
  @Trace numberArr38: number[] = numberArr;
  @Trace numberArr39: number[] = numberArr;
  @Trace numberArr40: number[] = numberArr;
  @Trace numberArr41: number[] = numberArr;
  @Trace numberArr42: number[] = numberArr;
  @Trace numberArr43: number[] = numberArr;
  @Trace numberArr44: number[] = numberArr;
  @Trace numberArr45: number[] = numberArr;
  @Trace numberArr46: number[] = numberArr;
  @Trace numberArr47: number[] = numberArr;
  @Trace numberArr48: number[] = numberArr;
  @Trace numberArr49: number[] = numberArr;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let testData: Arr = new Arr();

@ComponentV2
struct ChildTraceArraySample {
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      testData.numberArr[0] = index
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = testData.numberArr[0]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${testData.numberArr[0]}`)
      Button('child clink: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = testData.numberArr[0]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink:  写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            testData.numberArr[0] = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct TraceArraySample {

  build() {
    Column({ space: 15 }) {
      Text('TraceArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value:${testData.numberArr[0]}`)
      ChildTraceArraySample()
    }
  }
}