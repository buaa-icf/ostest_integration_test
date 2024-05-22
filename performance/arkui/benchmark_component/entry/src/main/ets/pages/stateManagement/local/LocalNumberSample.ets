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
struct LocalNumberSample {
  timeHelper: TimeHelper = new TimeHelper('LocalNumberSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: number = 0;
  @Local testData1: number = 0;
  @Local testData2: number = 0;
  @Local testData3: number = 0;
  @Local testData4: number = 0;
  @Local testData5: number = 0;
  @Local testData6: number = 0;
  @Local testData7: number = 0;
  @Local testData8: number = 0;
  @Local testData9: number = 0;
  @Local testData10: number = 0;
  @Local testData11: number = 0;
  @Local testData12: number = 0;
  @Local testData13: number = 0;
  @Local testData14: number = 0;
  @Local testData15: number = 0;
  @Local testData16: number = 0;
  @Local testData17: number = 0;
  @Local testData18: number = 0;
  @Local testData19: number = 0;
  @Local testData20: number = 0;
  @Local testData21: number = 0;
  @Local testData22: number = 0;
  @Local testData23: number = 0;
  @Local testData24: number = 0;
  @Local testData25: number = 0;
  @Local testData26: number = 0;
  @Local testData27: number = 0;
  @Local testData28: number = 0;
  @Local testData29: number = 0;
  @Local testData30: number = 0;
  @Local testData31: number = 0;
  @Local testData32: number = 0;
  @Local testData33: number = 0;
  @Local testData34: number = 0;
  @Local testData35: number = 0;
  @Local testData36: number = 0;
  @Local testData37: number = 0;
  @Local testData38: number = 0;
  @Local testData39: number = 0;
  @Local testData40: number = 0;
  @Local testData41: number = 0;
  @Local testData42: number = 0;
  @Local testData43: number = 0;
  @Local testData44: number = 0;
  @Local testData45: number = 0;
  @Local testData46: number = 0;
  @Local testData47: number = 0;
  @Local testData48: number = 0;
  @Local testData49: number = 0;
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
        Text(StateUtils.isType(this.isType, this.timeHelper) ? `parent value: ${this.testData.toString()}` :
          `parent value: ${this.testData.toString()}`)
          .id('changeUITimeTaken')
          .onClick(() => {
            this.isType = false
            this.testData += 1
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