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
import { StateUtils } from '../StateUtils';

const timeHelper: TimeHelper = new TimeHelper('TraceArraySample');
let isType: boolean = true

@ObservedV2
class Arr {
  @Trace numberArr: number[] = [];
}

@Component
struct ChildTraceArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  test: Arr = new Arr()
  test1: Arr = new Arr()
  test2: Arr = new Arr()
  test3: Arr = new Arr()
  test4: Arr = new Arr()
  test5: Arr = new Arr()
  test6: Arr = new Arr()
  test7: Arr = new Arr()
  test8: Arr = new Arr()
  test9: Arr = new Arr()
  test10: Arr = new Arr()
  test11: Arr = new Arr()
  test12: Arr = new Arr()
  test13: Arr = new Arr()
  test14: Arr = new Arr()
  test15: Arr = new Arr()
  test16: Arr = new Arr()
  test17: Arr = new Arr()
  test18: Arr = new Arr()
  test19: Arr = new Arr()
  test20: Arr = new Arr()
  test21: Arr = new Arr()
  test22: Arr = new Arr()
  test23: Arr = new Arr()
  test24: Arr = new Arr()
  test25: Arr = new Arr()
  test26: Arr = new Arr()
  test27: Arr = new Arr()
  test28: Arr = new Arr()
  test29: Arr = new Arr()
  test30: Arr = new Arr()
  test31: Arr = new Arr()
  test32: Arr = new Arr()
  test33: Arr = new Arr()
  test34: Arr = new Arr()
  test35: Arr = new Arr()
  test36: Arr = new Arr()
  test37: Arr = new Arr()
  test38: Arr = new Arr()
  test39: Arr = new Arr()
  test40: Arr = new Arr()
  test41: Arr = new Arr()
  test42: Arr = new Arr()
  test43: Arr = new Arr()
  test44: Arr = new Arr()
  test45: Arr = new Arr()
  test46: Arr = new Arr()
  test47: Arr = new Arr()
  test48: Arr = new Arr()
  test49: Arr = new Arr()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.test.numberArr[index] = index
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.test.numberArr[index]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.test.numberArr[0]}` : `child value: ${this.test.numberArr[0]}`)
      Button('child clink: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.test.numberArr[index]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink:  写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.test.numberArr[index] = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceArraySample {
  testData: Arr = new Arr();

  build() {
    Column({ space: 15 }) {
      Text('TraceArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(this.testData.numberArr[0] ? `parent value: ${this.testData.numberArr[0]}` : `parent value:${this.testData.numberArr[0]}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.numberArr[0] = 1000
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildTraceArraySample({ test: this.testData })
    }
  }
}