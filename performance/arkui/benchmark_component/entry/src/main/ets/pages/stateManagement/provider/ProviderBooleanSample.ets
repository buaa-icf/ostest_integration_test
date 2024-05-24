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

const timeHelper: TimeHelper = new TimeHelper('ProviderBooleanSample');
let isType: boolean = true

@ComponentV2
struct ChildProviderBooleanSample {
  @Consumer() testData: boolean = false

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData}` :
        `child value: ${this.testData}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderBooleanSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider() testData: boolean = true;
  @Provider() testData1: boolean = true
  @Provider() testData2: boolean = true
  @Provider() testData3: boolean = true
  @Provider() testData4: boolean = true
  @Provider() testData5: boolean = true
  @Provider() testData6: boolean = true
  @Provider() testData7: boolean = true
  @Provider() testData8: boolean = true
  @Provider() testData9: boolean = true
  @Provider() testData10: boolean = true
  @Provider() testData11: boolean = true
  @Provider() testData12: boolean = true
  @Provider() testData13: boolean = true
  @Provider() testData14: boolean = true
  @Provider() testData15: boolean = true
  @Provider() testData16: boolean = true
  @Provider() testData17: boolean = true
  @Provider() testData18: boolean = true
  @Provider() testData19: boolean = true
  @Provider() testData20: boolean = true
  @Provider() testData21: boolean = true
  @Provider() testData22: boolean = true
  @Provider() testData23: boolean = true
  @Provider() testData24: boolean = true
  @Provider() testData25: boolean = true
  @Provider() testData26: boolean = true
  @Provider() testData27: boolean = true
  @Provider() testData28: boolean = true
  @Provider() testData29: boolean = true
  @Provider() testData30: boolean = true
  @Provider() testData31: boolean = true
  @Provider() testData32: boolean = true
  @Provider() testData33: boolean = true
  @Provider() testData34: boolean = true
  @Provider() testData35: boolean = true
  @Provider() testData36: boolean = true
  @Provider() testData37: boolean = true
  @Provider() testData38: boolean = true
  @Provider() testData39: boolean = true
  @Provider() testData40: boolean = true
  @Provider() testData41: boolean = true
  @Provider() testData42: boolean = true
  @Provider() testData43: boolean = true
  @Provider() testData44: boolean = true
  @Provider() testData45: boolean = true
  @Provider() testData46: boolean = true
  @Provider() testData47: boolean = true
  @Provider() testData48: boolean = true
  @Provider() testData49: boolean = true
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
      Text('ProviderBooleanSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData = !this.testData
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
      ChildProviderBooleanSample()
    }
  }
}
