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

const timeHelper: TimeHelper = new TimeHelper('ProviderArraySample');
let isType: boolean = true

@ComponentV2
struct ChildProviderArraySample {
  @Consumer() testData: Array<string> = []

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData[0]}` :
        `child value: ${this.testData[0]}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider() testData: Array<string> = ['1', '2']
  @Provider() testData1: Array<string> = ['1', '2']
  @Provider() testData2: Array<string> = ['1', '2']
  @Provider() testData3: Array<string> = ['1', '2']
  @Provider() testData4: Array<string> = ['1', '2']
  @Provider() testData5: Array<string> = ['1', '2']
  @Provider() testData6: Array<string> = ['1', '2']
  @Provider() testData7: Array<string> = ['1', '2']
  @Provider() testData8: Array<string> = ['1', '2']
  @Provider() testData9: Array<string> = ['1', '2']
  @Provider() testData10: Array<string> = ['1', '2']
  @Provider() testData11: Array<string> = ['1', '2']
  @Provider() testData12: Array<string> = ['1', '2']
  @Provider() testData13: Array<string> = ['1', '2']
  @Provider() testData14: Array<string> = ['1', '2']
  @Provider() testData15: Array<string> = ['1', '2']
  @Provider() testData16: Array<string> = ['1', '2']
  @Provider() testData17: Array<string> = ['1', '2']
  @Provider() testData18: Array<string> = ['1', '2']
  @Provider() testData19: Array<string> = ['1', '2']
  @Provider() testData20: Array<string> = ['1', '2']
  @Provider() testData21: Array<string> = ['1', '2']
  @Provider() testData22: Array<string> = ['1', '2']
  @Provider() testData23: Array<string> = ['1', '2']
  @Provider() testData24: Array<string> = ['1', '2']
  @Provider() testData25: Array<string> = ['1', '2']
  @Provider() testData26: Array<string> = ['1', '2']
  @Provider() testData27: Array<string> = ['1', '2']
  @Provider() testData28: Array<string> = ['1', '2']
  @Provider() testData29: Array<string> = ['1', '2']
  @Provider() testData30: Array<string> = ['1', '2']
  @Provider() testData31: Array<string> = ['1', '2']
  @Provider() testData32: Array<string> = ['1', '2']
  @Provider() testData33: Array<string> = ['1', '2']
  @Provider() testData34: Array<string> = ['1', '2']
  @Provider() testData35: Array<string> = ['1', '2']
  @Provider() testData36: Array<string> = ['1', '2']
  @Provider() testData37: Array<string> = ['1', '2']
  @Provider() testData38: Array<string> = ['1', '2']
  @Provider() testData39: Array<string> = ['1', '2']
  @Provider() testData40: Array<string> = ['1', '2']
  @Provider() testData41: Array<string> = ['1', '2']
  @Provider() testData42: Array<string> = ['1', '2']
  @Provider() testData43: Array<string> = ['1', '2']
  @Provider() testData44: Array<string> = ['1', '2']
  @Provider() testData45: Array<string> = ['1', '2']
  @Provider() testData46: Array<string> = ['1', '2']
  @Provider() testData47: Array<string> = ['1', '2']
  @Provider() testData48: Array<string> = ['1', '2']
  @Provider() testData49: Array<string> = ['1', '2']
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
    Column({ space: 15 }) {
      Text('ProviderArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData[0]}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData[0] = '你好世界'
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('parent click: 读@Provider的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData[index]
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
            this.testData[index] = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderArraySample()
    }
  }
}
