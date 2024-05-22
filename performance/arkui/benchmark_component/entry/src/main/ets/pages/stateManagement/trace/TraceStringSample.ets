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

const timeHelper: TimeHelper = new TimeHelper('TraceStringSample');
let isType: boolean = true

@ObservedV2
class Father {
  @Trace name: string = "Tom";
}

@Component
struct ChildTraceStringSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  Arr: Father = new Father()
  Arr1: Father = new Father()
  Arr2: Father = new Father()
  Arr3: Father = new Father()
  Arr4: Father = new Father()
  Arr5: Father = new Father()
  Arr6: Father = new Father()
  Arr7: Father = new Father()
  Arr8: Father = new Father()
  Arr9: Father = new Father()
  Arr10: Father = new Father()
  Arr11: Father = new Father()
  Arr12: Father = new Father()
  Arr13: Father = new Father()
  Arr14: Father = new Father()
  Arr15: Father = new Father()
  Arr16: Father = new Father()
  Arr17: Father = new Father()
  Arr18: Father = new Father()
  Arr19: Father = new Father()
  Arr20: Father = new Father()
  Arr21: Father = new Father()
  Arr22: Father = new Father()
  Arr23: Father = new Father()
  Arr24: Father = new Father()
  Arr25: Father = new Father()
  Arr26: Father = new Father()
  Arr27: Father = new Father()
  Arr28: Father = new Father()
  Arr29: Father = new Father()
  Arr30: Father = new Father()
  Arr31: Father = new Father()
  Arr32: Father = new Father()
  Arr33: Father = new Father()
  Arr34: Father = new Father()
  Arr35: Father = new Father()
  Arr36: Father = new Father()
  Arr37: Father = new Father()
  Arr38: Father = new Father()
  Arr39: Father = new Father()
  Arr40: Father = new Father()
  Arr41: Father = new Father()
  Arr42: Father = new Father()
  Arr43: Father = new Father()
  Arr44: Father = new Father()
  Arr45: Father = new Father()
  Arr46: Father = new Father()
  Arr47: Father = new Father()
  Arr48: Father = new Father()
  Arr49: Father = new Father()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.Arr.name = `not bind UI:世界，你好` + (index + 1)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.Arr.name
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.Arr.name}` : `child value: ${this.Arr.name}`)
      Button('child click: 读Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.Arr.name
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.Arr.name = `child: setStateTimeTaken` + (index + 1)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceStringSample {
  parentString: Father = new Father();

  build() {
    Column({ space: 15 }) {
      Text('TraceStringSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(this.parentString.name ? `parent value: ${this.parentString.name}` : `parent value:  ${this.parentString.name}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentString.name = 'parent: parentSetStateTimeTaken'
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildTraceStringSample({ Arr: this.parentString })
    }
  }
}
