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

const timeHelper: TimeHelper = new TimeHelper('ConsumerNumberSample');
let isType: boolean = true

@ComponentV2
struct ChildConsumerNumberSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer() testData: number = 0
  @Consumer() testData1: number = 0
  @Consumer() testData2: number = 0
  @Consumer() testData3: number = 0
  @Consumer() testData4: number = 0
  @Consumer() testData5: number = 0
  @Consumer() testData6: number = 0
  @Consumer() testData7: number = 0
  @Consumer() testData8: number = 0
  @Consumer() testData9: number = 0
  @Consumer() testData10: number = 0
  @Consumer() testData11: number = 0
  @Consumer() testData12: number = 0
  @Consumer() testData13: number = 0
  @Consumer() testData14: number = 0
  @Consumer() testData15: number = 0
  @Consumer() testData16: number = 0
  @Consumer() testData17: number = 0
  @Consumer() testData18: number = 0
  @Consumer() testData19: number = 0
  @Consumer() testData20: number = 0
  @Consumer() testData21: number = 0
  @Consumer() testData22: number = 0
  @Consumer() testData23: number = 0
  @Consumer() testData24: number = 0
  @Consumer() testData25: number = 0
  @Consumer() testData26: number = 0
  @Consumer() testData27: number = 0
  @Consumer() testData28: number = 0
  @Consumer() testData29: number = 0
  @Consumer() testData30: number = 0
  @Consumer() testData31: number = 0
  @Consumer() testData32: number = 0
  @Consumer() testData33: number = 0
  @Consumer() testData34: number = 0
  @Consumer() testData35: number = 0
  @Consumer() testData36: number = 0
  @Consumer() testData37: number = 0
  @Consumer() testData38: number = 0
  @Consumer() testData39: number = 0
  @Consumer() testData40: number = 0
  @Consumer() testData41: number = 0
  @Consumer() testData42: number = 0
  @Consumer() testData43: number = 0
  @Consumer() testData44: number = 0
  @Consumer() testData45: number = 0
  @Consumer() testData46: number = 0
  @Consumer() testData47: number = 0
  @Consumer() testData48: number = 0
  @Consumer() testData49: number = 0
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = index
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
      Text('ConsumerNumberSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData}` : `child value: ${this.testData}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData += 1
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('child clink: 读@Consumer的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@Consumer的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.testData = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerNumberSample {
  @Provider() testData: number = 1;

  build() {
    Column({ space: 15 }) {
      ChildConsumerNumberSample()
      Text(`parent value: ${this.testData}`)
    }
  }
}
