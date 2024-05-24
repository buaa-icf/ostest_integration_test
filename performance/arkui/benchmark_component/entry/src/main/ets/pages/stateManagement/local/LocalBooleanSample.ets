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
struct LocalBooleanSample {
  timeHelper: TimeHelper = new TimeHelper('LocalBooleanSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: boolean = true;
  @Local testData1: boolean = true;
  @Local testData2: boolean = true;
  @Local testData3: boolean = true;
  @Local testData4: boolean = true;
  @Local testData5: boolean = true;
  @Local testData6: boolean = true;
  @Local testData7: boolean = true;
  @Local testData8: boolean = true;
  @Local testData9: boolean = true;
  @Local testData10: boolean = true;
  @Local testData11: boolean = true;
  @Local testData12: boolean = true;
  @Local testData13: boolean = true;
  @Local testData14: boolean = true;
  @Local testData15: boolean = true;
  @Local testData16: boolean = true;
  @Local testData17: boolean = true;
  @Local testData18: boolean = true;
  @Local testData19: boolean = true;
  @Local testData20: boolean = true;
  @Local testData21: boolean = true;
  @Local testData22: boolean = true;
  @Local testData23: boolean = true;
  @Local testData24: boolean = true;
  @Local testData25: boolean = true;
  @Local testData26: boolean = true;
  @Local testData27: boolean = true;
  @Local testData28: boolean = true;
  @Local testData29: boolean = true;
  @Local testData30: boolean = true;
  @Local testData31: boolean = true;
  @Local testData32: boolean = true;
  @Local testData33: boolean = true;
  @Local testData34: boolean = true;
  @Local testData35: boolean = true;
  @Local testData36: boolean = true;
  @Local testData37: boolean = true;
  @Local testData38: boolean = true;
  @Local testData39: boolean = true;
  @Local testData40: boolean = true;
  @Local testData41: boolean = true;
  @Local testData42: boolean = true;
  @Local testData43: boolean = true;
  @Local testData44: boolean = true;
  @Local testData45: boolean = true;
  @Local testData46: boolean = true;
  @Local testData47: boolean = true;
  @Local testData48: boolean = true;
  @Local testData49: boolean = true;
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  tmpArr: boolean[] = [false, true]
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = this.tmpArr[index % 2]
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
            this.testData = !this.testData
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
              this.testData = this.tmpArr[index % 2]
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}