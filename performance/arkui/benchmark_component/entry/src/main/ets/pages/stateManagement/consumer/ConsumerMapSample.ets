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

const timeHelper: TimeHelper = new TimeHelper('ConsumerMapSample');
let isType: boolean = true

@ComponentV2
struct ChildConsumerMapSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer() testData: Map<number, string> = new Map([]);
  @Consumer() testData1: Map<number, string> = new Map([]);
  @Consumer() testData2: Map<number, string> = new Map([]);
  @Consumer() testData3: Map<number, string> = new Map([]);
  @Consumer() testData4: Map<number, string> = new Map([]);
  @Consumer() testData5: Map<number, string> = new Map([]);
  @Consumer() testData6: Map<number, string> = new Map([]);
  @Consumer() testData7: Map<number, string> = new Map([]);
  @Consumer() testData8: Map<number, string> = new Map([]);
  @Consumer() testData9: Map<number, string> = new Map([]);
  @Consumer() testData10: Map<number, string> = new Map([]);
  @Consumer() testData11: Map<number, string> = new Map([]);
  @Consumer() testData12: Map<number, string> = new Map([]);
  @Consumer() testData13: Map<number, string> = new Map([]);
  @Consumer() testData14: Map<number, string> = new Map([]);
  @Consumer() testData15: Map<number, string> = new Map([]);
  @Consumer() testData16: Map<number, string> = new Map([]);
  @Consumer() testData17: Map<number, string> = new Map([]);
  @Consumer() testData18: Map<number, string> = new Map([]);
  @Consumer() testData19: Map<number, string> = new Map([]);
  @Consumer() testData20: Map<number, string> = new Map([]);
  @Consumer() testData21: Map<number, string> = new Map([]);
  @Consumer() testData22: Map<number, string> = new Map([]);
  @Consumer() testData23: Map<number, string> = new Map([]);
  @Consumer() testData24: Map<number, string> = new Map([]);
  @Consumer() testData25: Map<number, string> = new Map([]);
  @Consumer() testData26: Map<number, string> = new Map([]);
  @Consumer() testData27: Map<number, string> = new Map([]);
  @Consumer() testData28: Map<number, string> = new Map([]);
  @Consumer() testData29: Map<number, string> = new Map([]);
  @Consumer() testData30: Map<number, string> = new Map([]);
  @Consumer() testData31: Map<number, string> = new Map([]);
  @Consumer() testData32: Map<number, string> = new Map([]);
  @Consumer() testData33: Map<number, string> = new Map([]);
  @Consumer() testData34: Map<number, string> = new Map([]);
  @Consumer() testData35: Map<number, string> = new Map([]);
  @Consumer() testData36: Map<number, string> = new Map([]);
  @Consumer() testData37: Map<number, string> = new Map([]);
  @Consumer() testData38: Map<number, string> = new Map([]);
  @Consumer() testData39: Map<number, string> = new Map([]);
  @Consumer() testData40: Map<number, string> = new Map([]);
  @Consumer() testData41: Map<number, string> = new Map([]);
  @Consumer() testData42: Map<number, string> = new Map([]);
  @Consumer() testData43: Map<number, string> = new Map([]);
  @Consumer() testData44: Map<number, string> = new Map([]);
  @Consumer() testData45: Map<number, string> = new Map([]);
  @Consumer() testData46: Map<number, string> = new Map([]);
  @Consumer() testData47: Map<number, string> = new Map([]);
  @Consumer() testData48: Map<number, string> = new Map([]);
  @Consumer() testData49: Map<number, string> = new Map([]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.set(index,index.toString())
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
      Text('ConsumerMapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.get(3)}` : `child value: ${this.testData.get(3)}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.set(3,'bye')
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('child clink: 读@Consumer的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@Consumer的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.testData.set(index,index.toString())
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerMapSample {
  @Provider() testData: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);

  build() {
    Column({ space: 15 }) {
      ChildConsumerMapSample()
      Text(`parent value: ${this.testData.get(3)}`)
    }
  }
}
