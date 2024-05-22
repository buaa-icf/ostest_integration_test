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
const timeHelper: TimeHelper = new TimeHelper('MonitorDeepLayerSample');

@ObservedV2
class Inner {
  @Trace num: string = "0";
}

@ObservedV2
class Outer {
  inner: Inner = new Inner();

  @Monitor("inner.num")
  onChange(monitor: IMonitor) {
    console.log(`inner.num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
}

@ComponentV2
struct ChildMonitorDeepLayerSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  testData: Inner = new Inner()
  testData1: Inner = new Inner()
  testData2: Inner = new Inner()
  testData3: Inner = new Inner()
  testData4: Inner = new Inner()
  testData5: Inner = new Inner()
  testData6: Inner = new Inner()
  testData7: Inner = new Inner()
  testData8: Inner = new Inner()
  testData9: Inner = new Inner()
  testData10: Inner = new Inner()
  testData11: Inner = new Inner()
  testData12: Inner = new Inner()
  testData13: Inner = new Inner()
  testData14: Inner = new Inner()
  testData15: Inner = new Inner()
  testData16: Inner = new Inner()
  testData17: Inner = new Inner()
  testData18: Inner = new Inner()
  testData19: Inner = new Inner()
  testData20: Inner = new Inner()
  testData21: Inner = new Inner()
  testData22: Inner = new Inner()
  testData23: Inner = new Inner()
  testData24: Inner = new Inner()
  testData25: Inner = new Inner()
  testData26: Inner = new Inner()
  testData27: Inner = new Inner()
  testData28: Inner = new Inner()
  testData29: Inner = new Inner()
  testData30: Inner = new Inner()
  testData31: Inner = new Inner()
  testData32: Inner = new Inner()
  testData33: Inner = new Inner()
  testData34: Inner = new Inner()
  testData35: Inner = new Inner()
  testData36: Inner = new Inner()
  testData37: Inner = new Inner()
  testData38: Inner = new Inner()
  testData39: Inner = new Inner()
  testData40: Inner = new Inner()
  testData41: Inner = new Inner()
  testData42: Inner = new Inner()
  testData43: Inner = new Inner()
  testData44: Inner = new Inner()
  testData45: Inner = new Inner()
  testData46: Inner = new Inner()
  testData47: Inner = new Inner()
  testData48: Inner = new Inner()
  testData49: Inner = new Inner()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.num = index.toString()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData.num
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.num}` :
        `child value: ${this.testData.num}`)
      Button('child click: 读@Monitor的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData.num
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
            this.testData.num = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct MonitorDeepLayerSample {
  testData: Outer = new Outer();

  build() {
    Column({ space: 15 }) {
      Text('MonitorDeepLayerSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.inner.num}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.inner.num = "10"
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildMonitorDeepLayerSample({ testData: this.testData.inner })
    }
  }
}