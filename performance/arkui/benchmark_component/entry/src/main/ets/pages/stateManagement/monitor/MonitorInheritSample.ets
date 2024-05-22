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
const timeHelper: TimeHelper = new TimeHelper('MonitorInheritSample');

@ObservedV2
class Base {
  @Trace name: string;
  @Monitor("name")
  onBaseNameChange(monitor: IMonitor) {
    console.log(`Base Class name change`);
  }
  constructor(name: string) {
    this.name = name;
  }
}
@ObservedV2
class Derived extends Base {
  @Monitor("name")
  onDerivedNameChange(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  constructor(name: string) {
    super(name);
  }
}

@ComponentV2
struct ChildMonitorInheritSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  testData: Derived = new Derived("hello");
  testData1: Derived = new Derived("hello");
  testData2: Derived = new Derived("hello");
  testData3: Derived = new Derived("hello");
  testData4: Derived = new Derived("hello");
  testData5: Derived = new Derived("hello");
  testData6: Derived = new Derived("hello");
  testData7: Derived = new Derived("hello");
  testData8: Derived = new Derived("hello");
  testData9: Derived = new Derived("hello");
  testData10: Derived = new Derived("hello");
  testData11: Derived = new Derived("hello");
  testData12: Derived = new Derived("hello");
  testData13: Derived = new Derived("hello");
  testData14: Derived = new Derived("hello");
  testData15: Derived = new Derived("hello");
  testData16: Derived = new Derived("hello");
  testData17: Derived = new Derived("hello");
  testData18: Derived = new Derived("hello");
  testData19: Derived = new Derived("hello");
  testData20: Derived = new Derived("hello");
  testData21: Derived = new Derived("hello");
  testData22: Derived = new Derived("hello");
  testData23: Derived = new Derived("hello");
  testData24: Derived = new Derived("hello");
  testData25: Derived = new Derived("hello");
  testData26: Derived = new Derived("hello");
  testData27: Derived = new Derived("hello");
  testData28: Derived = new Derived("hello");
  testData29: Derived = new Derived("hello");
  testData30: Derived = new Derived("hello");
  testData31: Derived = new Derived("hello");
  testData32: Derived = new Derived("hello");
  testData33: Derived = new Derived("hello");
  testData34: Derived = new Derived("hello");
  testData35: Derived = new Derived("hello");
  testData36: Derived = new Derived("hello");
  testData37: Derived = new Derived("hello");
  testData38: Derived = new Derived("hello");
  testData39: Derived = new Derived("hello");
  testData40: Derived = new Derived("hello");
  testData41: Derived = new Derived("hello");
  testData42: Derived = new Derived("hello");
  testData43: Derived = new Derived("hello");
  testData44: Derived = new Derived("hello");
  testData45: Derived = new Derived("hello");
  testData46: Derived = new Derived("hello");
  testData47: Derived = new Derived("hello");
  testData48: Derived = new Derived("hello");
  testData49: Derived = new Derived("hello");
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.name = `not bind UI:世界，你好` + (index + 1)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData.name
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }
  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.name}` :
        `child value: ${this.testData.name}`)
      Button('child click: 读@Monitor的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData.name
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
            this.testData.name = `not bind UI:世界，你好` + (index + 1)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct MonitorInheritSample {
  testData: Derived = new Derived("hi")

  build() {
    Column({ space: 15 }) {
      Text('MonitorInheritSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.name}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.name = "Jack1"
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildMonitorInheritSample({testData : this.testData})
    }
  }
}