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

const timeHelper: TimeHelper = new TimeHelper('ProviderSetSample');
let isType: boolean = true

@ComponentV2
struct ChildProviderSetSample {
  @Consumer() testData: Set<number> = new Set([0]);

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${Array.from(this.testData.values()).toString()}` :
        `child value: ${Array.from(this.testData.values()).toString()}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderSetSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider() testData: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData1: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData2: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData3: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData4: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData5: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData6: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData7: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData8: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData9: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData10: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData11: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData12: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData13: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData14: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData15: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData16: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData17: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData18: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData19: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData20: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData21: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData22: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData23: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData24: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData25: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData26: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData27: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData28: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData29: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData30: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData31: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData32: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData33: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData34: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData35: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData36: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData37: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData38: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData39: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData40: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData41: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData42: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData43: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData44: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData45: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData46: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData47: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData48: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Provider() testData49: Set<number> = new Set([0, 1, 2, 3, 4]);
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
      Text('ProviderSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${Array.from(this.testData.values()).toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData.add(10000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('parent click: 读@Provider的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@Provider的耗时')
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
      ChildProviderSetSample()
    }
  }
}
