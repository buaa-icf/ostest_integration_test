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

const timeHelper: TimeHelper = new TimeHelper('TraceNumberSample');
let isType: boolean = true

@ObservedV2
class Son {
  @Trace age: number = 10;
}

@Component
struct ChildTraceNumberSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  Arr: Son = new Son()
  Arr1: Son = new Son()
  Arr2: Son = new Son()
  Arr3: Son = new Son()
  Arr4: Son = new Son()
  Arr5: Son = new Son()
  Arr6: Son = new Son()
  Arr7: Son = new Son()
  Arr8: Son = new Son()
  Arr9: Son = new Son()
  Arr10: Son = new Son()
  Arr11: Son = new Son()
  Arr12: Son = new Son()
  Arr13: Son = new Son()
  Arr14: Son = new Son()
  Arr15: Son = new Son()
  Arr16: Son = new Son()
  Arr17: Son = new Son()
  Arr18: Son = new Son()
  Arr19: Son = new Son()
  Arr20: Son = new Son()
  Arr21: Son = new Son()
  Arr22: Son = new Son()
  Arr23: Son = new Son()
  Arr24: Son = new Son()
  Arr25: Son = new Son()
  Arr26: Son = new Son()
  Arr27: Son = new Son()
  Arr28: Son = new Son()
  Arr29: Son = new Son()
  Arr30: Son = new Son()
  Arr31: Son = new Son()
  Arr32: Son = new Son()
  Arr33: Son = new Son()
  Arr34: Son = new Son()
  Arr35: Son = new Son()
  Arr36: Son = new Son()
  Arr37: Son = new Son()
  Arr38: Son = new Son()
  Arr39: Son = new Son()
  Arr40: Son = new Son()
  Arr41: Son = new Son()
  Arr42: Son = new Son()
  Arr43: Son = new Son()
  Arr44: Son = new Son()
  Arr45: Son = new Son()
  Arr46: Son = new Son()
  Arr47: Son = new Son()
  Arr48: Son = new Son()
  Arr49: Son = new Son()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.Arr.age = index
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.Arr
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.Arr.age}` :
        `child value: ${this.Arr.age}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.Arr
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.Arr.age = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceNumberSample {
  parentNumber: Son = new Son();

  build() {
    Column({ space: 15 }) {
      Text('TraceNumberSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(this.parentNumber.age ? `parent value: ${this.parentNumber.age}` : `parent value: 1`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentNumber.age += 1
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildTraceNumberSample({ Arr: this.parentNumber })
    }
  }
}
