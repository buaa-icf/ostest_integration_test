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

const timeHelper: TimeHelper = new TimeHelper('TraceMapSample');

@ObservedV2
class Info {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace memberMap: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap1: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap2: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap3: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap4: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap5: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap6: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap7: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap8: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap9: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap10: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap11: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap12: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap13: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap14: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap15: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap16: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap17: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap18: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap19: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap20: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap21: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap22: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap23: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap24: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap25: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap26: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap27: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap28: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap29: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap30: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap31: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap32: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap33: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap34: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap35: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap36: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap37: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap38: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap39: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap40: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap41: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap42: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap43: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap44: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap45: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap46: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap47: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap48: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Trace memberMap49: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let testDate: Info = new Info();

@ComponentV2
struct ChildTraceMapSample {
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      testDate.memberMap.set(index, index.toString())
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = testDate.memberMap.get(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${testDate.memberMap.get(0)}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = testDate.memberMap.get(index)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            testDate.memberMap.set(index, index.toString())
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct TraceMapSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceMapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${testDate.memberMap.get(0)}`)
      ChildTraceMapSample()
    }
  }
}
