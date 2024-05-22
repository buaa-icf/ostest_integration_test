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

const timeHelper: TimeHelper = new TimeHelper('ConsumerSetSample');
let isType: boolean = true

@ComponentV2
struct ChildConsumerSetSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer() testData: Set<number> = new Set([0]);
  @Consumer() testData1: Set<number> = new Set([0]);
  @Consumer() testData2: Set<number> = new Set([0]);
  @Consumer() testData3: Set<number> = new Set([0]);
  @Consumer() testData4: Set<number> = new Set([0]);
  @Consumer() testData5: Set<number> = new Set([0]);
  @Consumer() testData6: Set<number> = new Set([0]);
  @Consumer() testData7: Set<number> = new Set([0]);
  @Consumer() testData8: Set<number> = new Set([0]);
  @Consumer() testData9: Set<number> = new Set([0]);
  @Consumer() testData10: Set<number> = new Set([0]);
  @Consumer() testData11: Set<number> = new Set([0]);
  @Consumer() testData12: Set<number> = new Set([0]);
  @Consumer() testData13: Set<number> = new Set([0]);
  @Consumer() testData14: Set<number> = new Set([0]);
  @Consumer() testData15: Set<number> = new Set([0]);
  @Consumer() testData16: Set<number> = new Set([0]);
  @Consumer() testData17: Set<number> = new Set([0]);
  @Consumer() testData18: Set<number> = new Set([0]);
  @Consumer() testData19: Set<number> = new Set([0]);
  @Consumer() testData20: Set<number> = new Set([0]);
  @Consumer() testData21: Set<number> = new Set([0]);
  @Consumer() testData22: Set<number> = new Set([0]);
  @Consumer() testData23: Set<number> = new Set([0]);
  @Consumer() testData24: Set<number> = new Set([0]);
  @Consumer() testData25: Set<number> = new Set([0]);
  @Consumer() testData26: Set<number> = new Set([0]);
  @Consumer() testData27: Set<number> = new Set([0]);
  @Consumer() testData28: Set<number> = new Set([0]);
  @Consumer() testData29: Set<number> = new Set([0]);
  @Consumer() testData30: Set<number> = new Set([0]);
  @Consumer() testData31: Set<number> = new Set([0]);
  @Consumer() testData32: Set<number> = new Set([0]);
  @Consumer() testData33: Set<number> = new Set([0]);
  @Consumer() testData34: Set<number> = new Set([0]);
  @Consumer() testData35: Set<number> = new Set([0]);
  @Consumer() testData36: Set<number> = new Set([0]);
  @Consumer() testData37: Set<number> = new Set([0]);
  @Consumer() testData38: Set<number> = new Set([0]);
  @Consumer() testData39: Set<number> = new Set([0]);
  @Consumer() testData40: Set<number> = new Set([0]);
  @Consumer() testData41: Set<number> = new Set([0]);
  @Consumer() testData42: Set<number> = new Set([0]);
  @Consumer() testData43: Set<number> = new Set([0]);
  @Consumer() testData44: Set<number> = new Set([0]);
  @Consumer() testData45: Set<number> = new Set([0]);
  @Consumer() testData46: Set<number> = new Set([0]);
  @Consumer() testData47: Set<number> = new Set([0]);
  @Consumer() testData48: Set<number> = new Set([0]);
  @Consumer() testData49: Set<number> = new Set([0]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.add(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.testData.clear()
    this.testData.add(500)
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text('ConsumerSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${Array.from(this.testData.values()).toString()}` :
        `child value: ${Array.from(this.testData.values()).toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.add(10000)
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
            this.testData.add(index)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerSetSample {
  @Provider() testData: Set<number> = new Set([0, 1, 2, 3, 4]);

  build() {
    Column({ space: 15 }) {
      ChildConsumerSetSample()
      Text(`parent value: ${Array.from(this.testData.values()).toString()}`)
    }
  }
}
