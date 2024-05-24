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
struct LocalDateSample {
  timeHelper: TimeHelper = new TimeHelper('LocalDateSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: Date = new Date('2021-08-08');
  @Local testData1: Date = new Date('2021-08-08');
  @Local testData2: Date = new Date('2021-08-08');
  @Local testData3: Date = new Date('2021-08-08');
  @Local testData4: Date = new Date('2021-08-08');
  @Local testData5: Date = new Date('2021-08-08');
  @Local testData6: Date = new Date('2021-08-08');
  @Local testData7: Date = new Date('2021-08-08');
  @Local testData8: Date = new Date('2021-08-08');
  @Local testData9: Date = new Date('2021-08-08');
  @Local testData10: Date = new Date('2021-08-08');
  @Local testData11: Date = new Date('2021-08-08');
  @Local testData12: Date = new Date('2021-08-08');
  @Local testData13: Date = new Date('2021-08-08');
  @Local testData14: Date = new Date('2021-08-08');
  @Local testData15: Date = new Date('2021-08-08');
  @Local testData16: Date = new Date('2021-08-08');
  @Local testData17: Date = new Date('2021-08-08');
  @Local testData18: Date = new Date('2021-08-08');
  @Local testData19: Date = new Date('2021-08-08');
  @Local testData20: Date = new Date('2021-08-08');
  @Local testData21: Date = new Date('2021-08-08');
  @Local testData22: Date = new Date('2021-08-08');
  @Local testData23: Date = new Date('2021-08-08');
  @Local testData24: Date = new Date('2021-08-08');
  @Local testData25: Date = new Date('2021-08-08');
  @Local testData26: Date = new Date('2021-08-08');
  @Local testData27: Date = new Date('2021-08-08');
  @Local testData28: Date = new Date('2021-08-08');
  @Local testData29: Date = new Date('2021-08-08');
  @Local testData30: Date = new Date('2021-08-08');
  @Local testData31: Date = new Date('2021-08-08');
  @Local testData32: Date = new Date('2021-08-08');
  @Local testData33: Date = new Date('2021-08-08');
  @Local testData34: Date = new Date('2021-08-08');
  @Local testData35: Date = new Date('2021-08-08');
  @Local testData36: Date = new Date('2021-08-08');
  @Local testData37: Date = new Date('2021-08-08');
  @Local testData38: Date = new Date('2021-08-08');
  @Local testData39: Date = new Date('2021-08-08');
  @Local testData40: Date = new Date('2021-08-08');
  @Local testData41: Date = new Date('2021-08-08');
  @Local testData42: Date = new Date('2021-08-08');
  @Local testData43: Date = new Date('2021-08-08');
  @Local testData44: Date = new Date('2021-08-08');
  @Local testData45: Date = new Date('2021-08-08');
  @Local testData46: Date = new Date('2021-08-08');
  @Local testData47: Date = new Date('2021-08-08');
  @Local testData48: Date = new Date('2021-08-08');
  @Local testData49: Date = new Date('2021-08-08');
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  arr: number[] =  [this.testData.getTime() - 60 * 60 * 1000, this.testData.getTime() - 20 * 60 * 1000]
  isType: boolean = true
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.setTime(this.arr[index % 2])
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData.getTime()
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text(StateUtils.isType(this.isType, this.timeHelper) ? `parent value: ${this.testData.toTimeString()}` :
          `parent value: ${this.testData.toTimeString()}`)
          .id('changeUITimeTaken')
          .onClick(() => {
            this.isType = false
            this.testData.setTime(this.testData.getTime() + 3 * 60 * 60 * 1000)
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
              this.testData.setTime(this.arr[index % 2])
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}