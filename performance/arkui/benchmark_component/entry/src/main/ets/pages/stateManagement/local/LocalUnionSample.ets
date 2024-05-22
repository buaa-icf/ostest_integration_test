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
struct LocalUnionSample {
  timeHelper: TimeHelper = new TimeHelper('LocalUnionSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: null | undefined | number = undefined;
  @Local testData1: null | undefined | number = undefined;
  @Local testData2: null | undefined | number = undefined;
  @Local testData3: null | undefined | number = undefined;
  @Local testData4: null | undefined | number = undefined;
  @Local testData5: null | undefined | number = undefined;
  @Local testData6: null | undefined | number = undefined;
  @Local testData7: null | undefined | number = undefined;
  @Local testData8: null | undefined | number = undefined;
  @Local testData9: null | undefined | number = undefined;
  @Local testData10: null | undefined | number = undefined;
  @Local testData11: null | undefined | number = undefined;
  @Local testData12: null | undefined | number = undefined;
  @Local testData13: null | undefined | number = undefined;
  @Local testData14: null | undefined | number = undefined;
  @Local testData15: null | undefined | number = undefined;
  @Local testData16: null | undefined | number = undefined;
  @Local testData17: null | undefined | number = undefined;
  @Local testData18: null | undefined | number = undefined;
  @Local testData19: null | undefined | number = undefined;
  @Local testData20: null | undefined | number = undefined;
  @Local testData21: null | undefined | number = undefined;
  @Local testData22: null | undefined | number = undefined;
  @Local testData23: null | undefined | number = undefined;
  @Local testData24: null | undefined | number = undefined;
  @Local testData25: null | undefined | number = undefined;
  @Local testData26: null | undefined | number = undefined;
  @Local testData27: null | undefined | number = undefined;
  @Local testData28: null | undefined | number = undefined;
  @Local testData29: null | undefined | number = undefined;
  @Local testData30: null | undefined | number = undefined;
  @Local testData31: null | undefined | number = undefined;
  @Local testData32: null | undefined | number = undefined;
  @Local testData33: null | undefined | number = undefined;
  @Local testData34: null | undefined | number = undefined;
  @Local testData35: null | undefined | number = undefined;
  @Local testData36: null | undefined | number = undefined;
  @Local testData37: null | undefined | number = undefined;
  @Local testData38: null | undefined | number = undefined;
  @Local testData39: null | undefined | number = undefined;
  @Local testData40: null | undefined | number = undefined;
  @Local testData41: null | undefined | number = undefined;
  @Local testData42: null | undefined | number = undefined;
  @Local testData43: null | undefined | number = undefined;
  @Local testData44: null | undefined | number = undefined;
  @Local testData45: null | undefined | number = undefined;
  @Local testData46: null | undefined | number = undefined;
  @Local testData47: null | undefined | number = undefined;
  @Local testData48: null | undefined | number = undefined;
  @Local testData49: null | undefined | number = undefined;
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = index
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text(StateUtils.isType(this.isType, this.timeHelper) ? `parent value: ${this.testData}` :
          `parent value: ${this.testData}`)
          .id('changeUITimeTaken')
          .onClick(() => {
            this.isType = false
            this.testData = null
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
          })
        Button('parent click: 读@Local的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              let tmp = this.testData
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
              this.testData = index
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}