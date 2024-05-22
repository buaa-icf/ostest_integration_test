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

const timeHelper: TimeHelper = new TimeHelper('ConsumerArraySample');
let isType: boolean = true

@ComponentV2
struct ChildConsumerArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer() testData: Array<string> = []
  @Consumer() testData1: Array<string> = []
  @Consumer() testData2: Array<string> = []
  @Consumer() testData3: Array<string> = []
  @Consumer() testData4: Array<string> = []
  @Consumer() testData5: Array<string> = []
  @Consumer() testData6: Array<string> = []
  @Consumer() testData7: Array<string> = []
  @Consumer() testData8: Array<string> = []
  @Consumer() testData9: Array<string> = []
  @Consumer() testData10: Array<string> = []
  @Consumer() testData11: Array<string> = []
  @Consumer() testData12: Array<string> = []
  @Consumer() testData13: Array<string> = []
  @Consumer() testData14: Array<string> = []
  @Consumer() testData15: Array<string> = []
  @Consumer() testData16: Array<string> = []
  @Consumer() testData17: Array<string> = []
  @Consumer() testData18: Array<string> = []
  @Consumer() testData19: Array<string> = []
  @Consumer() testData20: Array<string> = []
  @Consumer() testData21: Array<string> = []
  @Consumer() testData22: Array<string> = []
  @Consumer() testData23: Array<string> = []
  @Consumer() testData24: Array<string> = []
  @Consumer() testData25: Array<string> = []
  @Consumer() testData26: Array<string> = []
  @Consumer() testData27: Array<string> = []
  @Consumer() testData28: Array<string> = []
  @Consumer() testData29: Array<string> = []
  @Consumer() testData30: Array<string> = []
  @Consumer() testData31: Array<string> = []
  @Consumer() testData32: Array<string> = []
  @Consumer() testData33: Array<string> = []
  @Consumer() testData34: Array<string> = []
  @Consumer() testData35: Array<string> = []
  @Consumer() testData36: Array<string> = []
  @Consumer() testData37: Array<string> = []
  @Consumer() testData38: Array<string> = []
  @Consumer() testData39: Array<string> = []
  @Consumer() testData40: Array<string> = []
  @Consumer() testData41: Array<string> = []
  @Consumer() testData42: Array<string> = []
  @Consumer() testData43: Array<string> = []
  @Consumer() testData44: Array<string> = []
  @Consumer() testData45: Array<string> = []
  @Consumer() testData46: Array<string> = []
  @Consumer() testData47: Array<string> = []
  @Consumer() testData48: Array<string> = []
  @Consumer() testData49: Array<string> = []
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData[index] = index.toString()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData[index]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text('ConsumerArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData[0]}` : `child value: ${this.testData[0]}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          isType = false
          this.testData[0] = '你好世界'
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('child clink: 读@Consumer的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData[index]
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
            this.testData[index] = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerArraySample {
  @Provider() testData: Array<string> = ['1','2']
  build() {
    Column({space: 15}) {
      ChildConsumerArraySample()
      Text(`parent value: ${this.testData[0]}`)
    }
  }
}
