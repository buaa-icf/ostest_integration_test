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

const timeHelper: TimeHelper = new TimeHelper('TraceDateSample');
let isType: boolean = true

@ObservedV2
class Info {
  @Trace selectedDate: Date = new Date('2021-08-08')
}

@Component
struct ChildTraceDateSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  time: Date = new Date()
  time1: Date = new Date()
  time2: Date = new Date()
  time3: Date = new Date()
  time4: Date = new Date()
  time5: Date = new Date()
  time6: Date = new Date()
  time7: Date = new Date()
  time8: Date = new Date()
  time9: Date = new Date()
  time10: Date = new Date()
  time11: Date = new Date()
  time12: Date = new Date()
  time13: Date = new Date()
  time14: Date = new Date()
  time15: Date = new Date()
  time16: Date = new Date()
  time17: Date = new Date()
  time18: Date = new Date()
  time19: Date = new Date()
  time20: Date = new Date()
  time21: Date = new Date()
  time22: Date = new Date()
  time23: Date = new Date()
  time24: Date = new Date()
  time25: Date = new Date()
  time26: Date = new Date()
  time27: Date = new Date()
  time28: Date = new Date()
  time29: Date = new Date()
  time30: Date = new Date()
  time31: Date = new Date()
  time32: Date = new Date()
  time33: Date = new Date()
  time34: Date = new Date()
  time35: Date = new Date()
  time36: Date = new Date()
  time37: Date = new Date()
  time38: Date = new Date()
  time39: Date = new Date()
  time40: Date = new Date()
  time41: Date = new Date()
  time42: Date = new Date()
  time43: Date = new Date()
  time44: Date = new Date()
  time45: Date = new Date()
  time46: Date = new Date()
  time47: Date = new Date()
  time48: Date = new Date()
  time49: Date = new Date()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State isTypeState: boolean = true

  aboutToAppear(): void {
    let arr: number[] = [this.time.getTime() - 60 * 60 * 1000, this.time.getTime() - 20 * 60 * 1000]
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.time.setTime(arr[index%2])
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.time.getTime()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.time.toString()}` : `child value: ${this.time.toString()}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.time.getTime()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          let timeType: number[] = [this.time.getTime() + 10 * 60 * 60 * 1000, this.time.getTime() + 20 * 60 * 60 * 1000]
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.time.setTime(timeType[index%2])
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceDateSample {
  testDate: Info = new Info();

  build() {
    Column({ space: 15 }) {
      Text('TraceDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(this.testDate.selectedDate.toTimeString() ? `parent value: ${this.testDate.selectedDate.toTimeString()}` : `parent value: ${this.testDate.selectedDate.toTimeString()}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testDate.selectedDate.setTime(this.testDate.selectedDate.getTime() + 100 * 60 * 60 * 1000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildTraceDateSample({ time: this.testDate.selectedDate })
    }
  }
}
