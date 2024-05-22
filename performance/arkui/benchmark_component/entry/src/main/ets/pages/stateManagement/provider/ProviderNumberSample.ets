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

const timeHelper: TimeHelper = new TimeHelper('ProviderNumberSample');
let isType: boolean = true

@ComponentV2
struct ChildProviderNumberSample {
  @Consumer() testData: number = 0

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData}` :
        `child value: ${this.testData}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderNumberSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider() testData: number = 1;
  @Provider() testData1: number = 0
  @Provider() testData2: number = 0
  @Provider() testData3: number = 0
  @Provider() testData4: number = 0
  @Provider() testData5: number = 0
  @Provider() testData6: number = 0
  @Provider() testData7: number = 0
  @Provider() testData8: number = 0
  @Provider() testData9: number = 0
  @Provider() testData10: number = 0
  @Provider() testData11: number = 0
  @Provider() testData12: number = 0
  @Provider() testData13: number = 0
  @Provider() testData14: number = 0
  @Provider() testData15: number = 0
  @Provider() testData16: number = 0
  @Provider() testData17: number = 0
  @Provider() testData18: number = 0
  @Provider() testData19: number = 0
  @Provider() testData20: number = 0
  @Provider() testData21: number = 0
  @Provider() testData22: number = 0
  @Provider() testData23: number = 0
  @Provider() testData24: number = 0
  @Provider() testData25: number = 0
  @Provider() testData26: number = 0
  @Provider() testData27: number = 0
  @Provider() testData28: number = 0
  @Provider() testData29: number = 0
  @Provider() testData30: number = 0
  @Provider() testData31: number = 0
  @Provider() testData32: number = 0
  @Provider() testData33: number = 0
  @Provider() testData34: number = 0
  @Provider() testData35: number = 0
  @Provider() testData36: number = 0
  @Provider() testData37: number = 0
  @Provider() testData38: number = 0
  @Provider() testData39: number = 0
  @Provider() testData40: number = 0
  @Provider() testData41: number = 0
  @Provider() testData42: number = 0
  @Provider() testData43: number = 0
  @Provider() testData44: number = 0
  @Provider() testData45: number = 0
  @Provider() testData46: number = 0
  @Provider() testData47: number = 0
  @Provider() testData48: number = 0
  @Provider() testData49: number = 0
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
      Text('ProviderNumberSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData += 1
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
            this.testData = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderNumberSample()
    }
  }
}
