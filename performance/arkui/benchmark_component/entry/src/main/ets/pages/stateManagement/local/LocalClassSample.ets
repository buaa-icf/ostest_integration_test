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
import { ClassModel, classModel, classModel1, classModel2, classModel3 } from '../ClassModel'

@Entry
@ComponentV2
struct LocalClassSample {
  timeHelper: TimeHelper = new TimeHelper('LocalClassSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: ClassModel = classModel1
  @Local testData1: ClassModel = classModel1
  @Local testData2: ClassModel = classModel1
  @Local testData3: ClassModel = classModel1
  @Local testData4: ClassModel = classModel1
  @Local testData5: ClassModel = classModel1
  @Local testData6: ClassModel = classModel1
  @Local testData7: ClassModel = classModel1
  @Local testData8: ClassModel = classModel1
  @Local testData9: ClassModel = classModel1
  @Local testData10: ClassModel = classModel1
  @Local testData11: ClassModel = classModel1
  @Local testData12: ClassModel = classModel1
  @Local testData13: ClassModel = classModel1
  @Local testData14: ClassModel = classModel1
  @Local testData15: ClassModel = classModel1
  @Local testData16: ClassModel = classModel1
  @Local testData17: ClassModel = classModel1
  @Local testData18: ClassModel = classModel1
  @Local testData19: ClassModel = classModel1
  @Local testData20: ClassModel = classModel1
  @Local testData21: ClassModel = classModel1
  @Local testData22: ClassModel = classModel1
  @Local testData23: ClassModel = classModel1
  @Local testData24: ClassModel = classModel1
  @Local testData25: ClassModel = classModel1
  @Local testData26: ClassModel = classModel1
  @Local testData27: ClassModel = classModel1
  @Local testData28: ClassModel = classModel1
  @Local testData29: ClassModel = classModel1
  @Local testData30: ClassModel = classModel1
  @Local testData31: ClassModel = classModel1
  @Local testData32: ClassModel = classModel1
  @Local testData33: ClassModel = classModel1
  @Local testData34: ClassModel = classModel1
  @Local testData35: ClassModel = classModel1
  @Local testData36: ClassModel = classModel1
  @Local testData37: ClassModel = classModel1
  @Local testData38: ClassModel = classModel1
  @Local testData39: ClassModel = classModel1
  @Local testData40: ClassModel = classModel1
  @Local testData41: ClassModel = classModel1
  @Local testData42: ClassModel = classModel1
  @Local testData43: ClassModel = classModel1
  @Local testData44: ClassModel = classModel1
  @Local testData45: ClassModel = classModel1
  @Local testData46: ClassModel = classModel1
  @Local testData47: ClassModel = classModel1
  @Local testData48: ClassModel = classModel1
  @Local testData49: ClassModel = classModel1
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  tmpArr: ClassModel[] = [classModel, classModel1]
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
        Text(StateUtils.isType(this.isType, this.timeHelper) ? `parent value: ${this.testData.value}` :
          `parent value: ${this.testData.value}`)
          .id('changeUITimeTaken')
          .onClick(() => {
            this.isType = false
            this.testData = classModel2
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