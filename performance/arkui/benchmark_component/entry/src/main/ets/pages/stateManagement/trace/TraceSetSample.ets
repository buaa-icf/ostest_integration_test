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

const timeHelper: TimeHelper = new TimeHelper('TraceSetSample');
let isType: boolean = true

@ObservedV2
class Info {
  @Trace memberSet: Set<number> = new Set([0, 1, 2, 3, 4]);
}

@Component
struct ChildTraceSetSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  setType: Info = new Info()
  setType1: Info = new Info()
  setType2: Info = new Info()
  setType3: Info = new Info()
  setType4: Info = new Info()
  setType5: Info = new Info()
  setType6: Info = new Info()
  setType7: Info = new Info()
  setType8: Info = new Info()
  setType9: Info = new Info()
  setType10: Info = new Info()
  setType11: Info = new Info()
  setType12: Info = new Info()
  setType13: Info = new Info()
  setType14: Info = new Info()
  setType15: Info = new Info()
  setType16: Info = new Info()
  setType17: Info = new Info()
  setType18: Info = new Info()
  setType19: Info = new Info()
  setType20: Info = new Info()
  setType21: Info = new Info()
  setType22: Info = new Info()
  setType23: Info = new Info()
  setType24: Info = new Info()
  setType25: Info = new Info()
  setType26: Info = new Info()
  setType27: Info = new Info()
  setType28: Info = new Info()
  setType29: Info = new Info()
  setType30: Info = new Info()
  setType31: Info = new Info()
  setType32: Info = new Info()
  setType33: Info = new Info()
  setType34: Info = new Info()
  setType35: Info = new Info()
  setType36: Info = new Info()
  setType37: Info = new Info()
  setType38: Info = new Info()
  setType39: Info = new Info()
  setType40: Info = new Info()
  setType41: Info = new Info()
  setType42: Info = new Info()
  setType43: Info = new Info()
  setType44: Info = new Info()
  setType45: Info = new Info()
  setType46: Info = new Info()
  setType47: Info = new Info()
  setType48: Info = new Info()
  setType49: Info = new Info()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.setType.memberSet.add(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.setType.memberSet.clear()
    this.setType.memberSet.add(500)
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.setType.memberSet.values()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${Array.from(this.setType.memberSet.values()).toString()}` :
        `child value: ${Array.from(this.setType.memberSet.values()).toString()}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.setType.memberSet.values()
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
            this.setType.memberSet.add(index)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceSetSample {
  testDate: Info = new Info();

  build() {
    Column({ space: 15 }) {
      Text('TraceSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${Array.from(this.testDate.memberSet.values()).toString()}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testDate.memberSet.add(10000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildTraceSetSample({ setType: this.testDate })
    }
  }
}
