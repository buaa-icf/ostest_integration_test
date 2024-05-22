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
const timeHelper: TimeHelper = new TimeHelper('MonitorOrdinarySample');

@ObservedV2
class Info {
  @Trace name: string = "Tom";

  @Monitor("name")
  onNameChange(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
}

@ComponentV2
struct ChildMonitorOrdinarySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  testData: Info = new Info();
  testData1: Info = new Info();
  testData2: Info = new Info();
  testData3: Info = new Info();
  testData4: Info = new Info();
  testData5: Info = new Info();
  testData6: Info = new Info();
  testData7: Info = new Info();
  testData8: Info = new Info();
  testData9: Info = new Info();
  testData10: Info = new Info();
  testData11: Info = new Info();
  testData12: Info = new Info();
  testData13: Info = new Info();
  testData14: Info = new Info();
  testData15: Info = new Info();
  testData16: Info = new Info();
  testData17: Info = new Info();
  testData18: Info = new Info();
  testData19: Info = new Info();
  testData20: Info = new Info();
  testData21: Info = new Info();
  testData22: Info = new Info();
  testData23: Info = new Info();
  testData24: Info = new Info();
  testData25: Info = new Info();
  testData26: Info = new Info();
  testData27: Info = new Info();
  testData28: Info = new Info();
  testData29: Info = new Info();
  testData30: Info = new Info();
  testData31: Info = new Info();
  testData32: Info = new Info();
  testData33: Info = new Info();
  testData34: Info = new Info();
  testData35: Info = new Info();
  testData36: Info = new Info();
  testData37: Info = new Info();
  testData38: Info = new Info();
  testData39: Info = new Info();
  testData40: Info = new Info();
  testData41: Info = new Info();
  testData42: Info = new Info();
  testData43: Info = new Info();
  testData44: Info = new Info();
  testData45: Info = new Info();
  testData46: Info = new Info();
  testData47: Info = new Info();
  testData48: Info = new Info();
  testData49: Info = new Info();
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
struct MonitorOrdinarySample {
  testData: Info = new Info();

  build() {
    Column({ space: 15 }) {
      Text('MonitorOrdinarySample')
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
      ChildMonitorOrdinarySample({ testData: this.testData })
    }
  }
}