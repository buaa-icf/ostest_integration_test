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

let isType: boolean = true
const timeHelper: TimeHelper = new TimeHelper('MonitorArraySample');

@ObservedV2
class ArrMonitor{
  @Trace dimensionTwo: number[][] = [[1,1,1],[2,2,2],[3,3,3]];
  @Monitor("dimensionTwo.0.0")
  onDimensionTwoChange(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimensionTwo path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
}

@ComponentV2
struct ChildMonitorArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  testData: number[][] = []
  testData1: number[][] = []
  testData2: number[][] = []
  testData3: number[][] = []
  testData4: number[][] = []
  testData5: number[][] = []
  testData6: number[][] = []
  testData7: number[][] = []
  testData8: number[][] = []
  testData9: number[][] = []
  testData10: number[][] = []
  testData11: number[][] = []
  testData12: number[][] = []
  testData13: number[][] = []
  testData14: number[][] = []
  testData15: number[][] = []
  testData16: number[][] = []
  testData17: number[][] = []
  testData18: number[][] = []
  testData19: number[][] = []
  testData20: number[][] = []
  testData21: number[][] = []
  testData22: number[][] = []
  testData23: number[][] = []
  testData24: number[][] = []
  testData25: number[][] = []
  testData26: number[][] = []
  testData27: number[][] = []
  testData28: number[][] = []
  testData29: number[][] = []
  testData30: number[][] = []
  testData31: number[][] = []
  testData32: number[][] = []
  testData33: number[][] = []
  testData34: number[][] = []
  testData35: number[][] = []
  testData36: number[][] = []
  testData37: number[][] = []
  testData38: number[][] = []
  testData39: number[][] = []
  testData40: number[][] = []
  testData41: number[][] = []
  testData42: number[][] = []
  testData43: number[][] = []
  testData44: number[][] = []
  testData45: number[][] = []
  testData46: number[][] = []
  testData47: number[][] = []
  testData48: number[][] = []
  testData49: number[][] = []
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData[0][index] = index
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }
  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData[0][0]}` :
        `child value: ${this.testData[0][0]}`)
      Button('child click: 读@Monitor的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Monitor的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.testData[0][0] = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct MonitorArraySample {
  testData: ArrMonitor = new ArrMonitor();
  build() {
    Column({ space: 15 }) {
      Text('MonitorArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.dimensionTwo[0][0]}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.dimensionTwo[0][0] = 100
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildMonitorArraySample({testData : this.testData.dimensionTwo})
    }
  }
}