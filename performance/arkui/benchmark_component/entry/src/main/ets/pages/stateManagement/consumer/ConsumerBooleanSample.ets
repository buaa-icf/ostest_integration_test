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

const timeHelper: TimeHelper = new TimeHelper('ConsumerBooleanSample');
let isType: boolean = true

@ComponentV2
struct ChildConsumerBooleanSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer() testData: boolean = true
  @Consumer() testData1: boolean = true
  @Consumer() testData2: boolean = true
  @Consumer() testData3: boolean = true
  @Consumer() testData4: boolean = true
  @Consumer() testData5: boolean = true
  @Consumer() testData6: boolean = true
  @Consumer() testData7: boolean = true
  @Consumer() testData8: boolean = true
  @Consumer() testData9: boolean = true
  @Consumer() testData10: boolean = true
  @Consumer() testData11: boolean = true
  @Consumer() testData12: boolean = true
  @Consumer() testData13: boolean = true
  @Consumer() testData14: boolean = true
  @Consumer() testData15: boolean = true
  @Consumer() testData16: boolean = true
  @Consumer() testData17: boolean = true
  @Consumer() testData18: boolean = true
  @Consumer() testData19: boolean = true
  @Consumer() testData20: boolean = true
  @Consumer() testData21: boolean = true
  @Consumer() testData22: boolean = true
  @Consumer() testData23: boolean = true
  @Consumer() testData24: boolean = true
  @Consumer() testData25: boolean = true
  @Consumer() testData26: boolean = true
  @Consumer() testData27: boolean = true
  @Consumer() testData28: boolean = true
  @Consumer() testData29: boolean = true
  @Consumer() testData30: boolean = true
  @Consumer() testData31: boolean = true
  @Consumer() testData32: boolean = true
  @Consumer() testData33: boolean = true
  @Consumer() testData34: boolean = true
  @Consumer() testData35: boolean = true
  @Consumer() testData36: boolean = true
  @Consumer() testData37: boolean = true
  @Consumer() testData38: boolean = true
  @Consumer() testData39: boolean = true
  @Consumer() testData40: boolean = true
  @Consumer() testData41: boolean = true
  @Consumer() testData42: boolean = true
  @Consumer() testData43: boolean = true
  @Consumer() testData44: boolean = true
  @Consumer() testData45: boolean = true
  @Consumer() testData46: boolean = true
  @Consumer() testData47: boolean = true
  @Consumer() testData48: boolean = true
  @Consumer() testData49: boolean = true
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: boolean[] = [false, true]
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
      Text('ConsumerBooleanSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.toString()}` : `child value: ${this.testData.toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData = !this.testData
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
            this.testData = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerBooleanSample {
  @Provider() testData: boolean = true;

  build() {
    Column({ space: 15 }) {
      ChildConsumerBooleanSample()
      Text(`parent value: ${this.testData.toString()}`)
    }
  }
}
