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

@Entry
@ComponentV2
struct LocalSetSample {
  timeHelper: TimeHelper = new TimeHelper('LocalSetSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData1: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData2: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData3: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData4: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData5: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData6: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData7: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData8: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData9: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData10: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData11: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData12: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData13: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData14: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData15: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData16: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData17: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData18: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData19: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData20: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData21: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData22: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData23: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData24: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData25: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData26: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData27: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData28: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData29: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData30: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData31: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData32: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData33: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData34: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData35: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData36: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData37: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData38: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData39: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData40: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData41: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData42: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData43: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData44: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData45: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData46: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData47: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData48: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Local testData49: Set<number> = new Set([0, 1, 2, 3, 4]);
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.add(index)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.testData.clear()
    this.testData.add(500)
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData.values()
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text(StateUtils.isType(this.isType, this.timeHelper) ? `parent value: ${Array.from(this.testData.values()).toString()}` :
          `parent value: ${Array.from(this.testData.values()).toString()}`)
          .id('changeUITimeTaken')
          .onClick(() => {
            this.isType = false
            this.testData.add(10000)
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
          })
        Button('parent click: 读@Local的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              let tmp = this.testData.values()
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
          })
        Button('parent click: 写@Local的耗时')
          .id('setStateTimeTaken')
          .onClick(() => {
            this.isType = true
            this.isTypeState = !this.isTypeState
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              this.testData.add(index)
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}