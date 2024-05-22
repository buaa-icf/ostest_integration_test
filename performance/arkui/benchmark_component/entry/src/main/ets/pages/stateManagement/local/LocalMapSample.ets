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
struct LocalMapSample {
  timeHelper: TimeHelper = new TimeHelper('LocalMapSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData1: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData2: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData3: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData4: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData5: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData6: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData7: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData8: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData9: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData10: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData11: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData12: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData13: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData14: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData15: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData16: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData17: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData18: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData19: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData20: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData21: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData22: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData23: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData24: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData25: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData26: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData27: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData28: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData29: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData30: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData31: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData32: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData33: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData34: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData35: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData36: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData37: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData38: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData39: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData40: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData41: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData42: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData43: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData44: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData45: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData46: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData47: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData48: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  @Local testData49: Map<number, string> = new Map([[0, "a"], [1, "b"], [3, "c"]]);
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.set(index, index.toString())
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData.get(index)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text(StateUtils.isType(this.isType, this.timeHelper) ? `parent value: ${this.testData.get(3)}` :
          `parent value: ${this.testData.get(3)}`)
          .id('changeUITimeTaken')
          .onClick(() => {
            this.isType = false
            this.testData.set(3, 'bye')
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
          })
        Button('parent click: 读@Local的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              let tmp = this.testData.get(index)
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
              this.testData.set(index, index.toString())
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}