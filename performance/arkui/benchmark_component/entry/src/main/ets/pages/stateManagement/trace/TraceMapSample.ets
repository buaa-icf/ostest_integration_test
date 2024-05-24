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

const timeHelper: TimeHelper = new TimeHelper('TraceMapSample');
let isType: boolean = true

@ObservedV2
class Info {
  @Trace memberMap: Map<number, string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
}

@Component
struct ChildTraceMapSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  mapType: Info = new Info()
  mapType1: Info = new Info()
  mapType2: Info = new Info()
  mapType3: Info = new Info()
  mapType4: Info = new Info()
  mapType5: Info = new Info()
  mapType6: Info = new Info()
  mapType7: Info = new Info()
  mapType8: Info = new Info()
  mapType9: Info = new Info()
  mapType10: Info = new Info()
  mapType11: Info = new Info()
  mapType12: Info = new Info()
  mapType13: Info = new Info()
  mapType14: Info = new Info()
  mapType15: Info = new Info()
  mapType16: Info = new Info()
  mapType17: Info = new Info()
  mapType18: Info = new Info()
  mapType19: Info = new Info()
  mapType20: Info = new Info()
  mapType21: Info = new Info()
  mapType22: Info = new Info()
  mapType23: Info = new Info()
  mapType24: Info = new Info()
  mapType25: Info = new Info()
  mapType26: Info = new Info()
  mapType27: Info = new Info()
  mapType28: Info = new Info()
  mapType29: Info = new Info()
  mapType30: Info = new Info()
  mapType31: Info = new Info()
  mapType32: Info = new Info()
  mapType33: Info = new Info()
  mapType34: Info = new Info()
  mapType35: Info = new Info()
  mapType36: Info = new Info()
  mapType37: Info = new Info()
  mapType38: Info = new Info()
  mapType39: Info = new Info()
  mapType40: Info = new Info()
  mapType41: Info = new Info()
  mapType42: Info = new Info()
  mapType43: Info = new Info()
  mapType44: Info = new Info()
  mapType45: Info = new Info()
  mapType46: Info = new Info()
  mapType47: Info = new Info()
  mapType48: Info = new Info()
  mapType49: Info = new Info()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.mapType.memberMap.set(index, index.toString())
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.mapType.memberMap.get(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.mapType.memberMap.get(0)}` :
        `child value: ${this.mapType.memberMap.get(0)}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.mapType.memberMap.get(index)
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
            this.mapType.memberMap.set(index, index.toString())
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceMapSample {
  testDate: Info = new Info();

  build() {
    Column({ space: 15 }) {
      Text('TraceMapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testDate.memberMap.get(0)}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testDate.memberMap = new Map([[0, 'apple'], [1, 'banana'], [3, 'cat']])
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildTraceMapSample({ mapType: this.testDate })
    }
  }
}
