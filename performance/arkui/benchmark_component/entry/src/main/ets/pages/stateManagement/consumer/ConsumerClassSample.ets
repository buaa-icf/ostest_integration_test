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

const timeHelper: TimeHelper = new TimeHelper('ConsumerClassSample');
let isType: boolean = true

@ComponentV2
struct ChildConsumerClassSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer() testData: ClassModel = classModel
  @Consumer() testData1: ClassModel = classModel
  @Consumer() testData2: ClassModel = classModel
  @Consumer() testData3: ClassModel = classModel
  @Consumer() testData4: ClassModel = classModel
  @Consumer() testData5: ClassModel = classModel
  @Consumer() testData6: ClassModel = classModel
  @Consumer() testData7: ClassModel = classModel
  @Consumer() testData8: ClassModel = classModel
  @Consumer() testData9: ClassModel = classModel
  @Consumer() testData10: ClassModel = classModel
  @Consumer() testData11: ClassModel = classModel
  @Consumer() testData12: ClassModel = classModel
  @Consumer() testData13: ClassModel = classModel
  @Consumer() testData14: ClassModel = classModel
  @Consumer() testData15: ClassModel = classModel
  @Consumer() testData16: ClassModel = classModel
  @Consumer() testData17: ClassModel = classModel
  @Consumer() testData18: ClassModel = classModel
  @Consumer() testData19: ClassModel = classModel
  @Consumer() testData20: ClassModel = classModel
  @Consumer() testData21: ClassModel = classModel
  @Consumer() testData22: ClassModel = classModel
  @Consumer() testData23: ClassModel = classModel
  @Consumer() testData24: ClassModel = classModel
  @Consumer() testData25: ClassModel = classModel
  @Consumer() testData26: ClassModel = classModel
  @Consumer() testData27: ClassModel = classModel
  @Consumer() testData28: ClassModel = classModel
  @Consumer() testData29: ClassModel = classModel
  @Consumer() testData30: ClassModel = classModel
  @Consumer() testData31: ClassModel = classModel
  @Consumer() testData32: ClassModel = classModel
  @Consumer() testData33: ClassModel = classModel
  @Consumer() testData34: ClassModel = classModel
  @Consumer() testData35: ClassModel = classModel
  @Consumer() testData36: ClassModel = classModel
  @Consumer() testData37: ClassModel = classModel
  @Consumer() testData38: ClassModel = classModel
  @Consumer() testData39: ClassModel = classModel
  @Consumer() testData40: ClassModel = classModel
  @Consumer() testData41: ClassModel = classModel
  @Consumer() testData42: ClassModel = classModel
  @Consumer() testData43: ClassModel = classModel
  @Consumer() testData44: ClassModel = classModel
  @Consumer() testData45: ClassModel = classModel
  @Consumer() testData46: ClassModel = classModel
  @Consumer() testData47: ClassModel = classModel
  @Consumer() testData48: ClassModel = classModel
  @Consumer() testData49: ClassModel = classModel
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: ClassModel[] = [classModel1,classModel2]
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
    Column({space: 15}) {
      Text('ConsumerClassSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.value}` : `child value: ${this.testData.value}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          isType = false
          this.testData = classModel3
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('child clink: 读@Consumer的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@Consumer的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.testData = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerClassSample {
  @Provider() testData: ClassModel = classModel;
  build() {
    Column({space: 15}) {
      ChildConsumerClassSample()
      Text(`parent value: ${this.testData.value}`)
    }
  }
}
