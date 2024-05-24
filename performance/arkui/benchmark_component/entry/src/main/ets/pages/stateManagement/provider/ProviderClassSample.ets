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
import { classModel, ClassModel, classModel1, classModel2, classModel3 } from '../ClassModel'

const timeHelper: TimeHelper = new TimeHelper('ProviderClassSample');
let isType: boolean = true

@ComponentV2
struct ChildProviderClassSample {
  @Consumer() testData: ClassModel = classModel

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.value}` :
        `child value: ${this.testData.value}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderClassSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider() testData: ClassModel = classModel;
  @Provider() testData1: ClassModel = classModel
  @Provider() testData2: ClassModel = classModel
  @Provider() testData3: ClassModel = classModel
  @Provider() testData4: ClassModel = classModel
  @Provider() testData5: ClassModel = classModel
  @Provider() testData6: ClassModel = classModel
  @Provider() testData7: ClassModel = classModel
  @Provider() testData8: ClassModel = classModel
  @Provider() testData9: ClassModel = classModel
  @Provider() testData10: ClassModel = classModel
  @Provider() testData11: ClassModel = classModel
  @Provider() testData12: ClassModel = classModel
  @Provider() testData13: ClassModel = classModel
  @Provider() testData14: ClassModel = classModel
  @Provider() testData15: ClassModel = classModel
  @Provider() testData16: ClassModel = classModel
  @Provider() testData17: ClassModel = classModel
  @Provider() testData18: ClassModel = classModel
  @Provider() testData19: ClassModel = classModel
  @Provider() testData20: ClassModel = classModel
  @Provider() testData21: ClassModel = classModel
  @Provider() testData22: ClassModel = classModel
  @Provider() testData23: ClassModel = classModel
  @Provider() testData24: ClassModel = classModel
  @Provider() testData25: ClassModel = classModel
  @Provider() testData26: ClassModel = classModel
  @Provider() testData27: ClassModel = classModel
  @Provider() testData28: ClassModel = classModel
  @Provider() testData29: ClassModel = classModel
  @Provider() testData30: ClassModel = classModel
  @Provider() testData31: ClassModel = classModel
  @Provider() testData32: ClassModel = classModel
  @Provider() testData33: ClassModel = classModel
  @Provider() testData34: ClassModel = classModel
  @Provider() testData35: ClassModel = classModel
  @Provider() testData36: ClassModel = classModel
  @Provider() testData37: ClassModel = classModel
  @Provider() testData38: ClassModel = classModel
  @Provider() testData39: ClassModel = classModel
  @Provider() testData40: ClassModel = classModel
  @Provider() testData41: ClassModel = classModel
  @Provider() testData42: ClassModel = classModel
  @Provider() testData43: ClassModel = classModel
  @Provider() testData44: ClassModel = classModel
  @Provider() testData45: ClassModel = classModel
  @Provider() testData46: ClassModel = classModel
  @Provider() testData47: ClassModel = classModel
  @Provider() testData48: ClassModel = classModel
  @Provider() testData49: ClassModel = classModel
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: ClassModel[] = [classModel1, classModel2]
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = this.tmpArr[index % 2]
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
      Text('ProviderClassSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.value}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData = classModel1
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
            this.testData = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderClassSample()
    }
  }
}
