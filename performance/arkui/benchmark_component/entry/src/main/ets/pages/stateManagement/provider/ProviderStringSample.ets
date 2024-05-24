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

const timeHelper: TimeHelper = new TimeHelper('ProviderStringSample');
let isType: boolean = true

@ComponentV2
struct ChildProviderStringSample {
  @Consumer() testData: string = '0'

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData}` :
        `child value: ${this.testData}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderStringSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider() testData: string = 'hello, world';
  @Provider() testData1: string = '0'
  @Provider() testData2: string = '0'
  @Provider() testData3: string = '0'
  @Provider() testData4: string = '0'
  @Provider() testData5: string = '0'
  @Provider() testData6: string = '0'
  @Provider() testData7: string = '0'
  @Provider() testData8: string = '0'
  @Provider() testData9: string = '0'
  @Provider() testData10: string = '0'
  @Provider() testData11: string = '0'
  @Provider() testData12: string = '0'
  @Provider() testData13: string = '0'
  @Provider() testData14: string = '0'
  @Provider() testData15: string = '0'
  @Provider() testData16: string = '0'
  @Provider() testData17: string = '0'
  @Provider() testData18: string = '0'
  @Provider() testData19: string = '0'
  @Provider() testData20: string = '0'
  @Provider() testData21: string = '0'
  @Provider() testData22: string = '0'
  @Provider() testData23: string = '0'
  @Provider() testData24: string = '0'
  @Provider() testData25: string = '0'
  @Provider() testData26: string = '0'
  @Provider() testData27: string = '0'
  @Provider() testData28: string = '0'
  @Provider() testData29: string = '0'
  @Provider() testData30: string = '0'
  @Provider() testData31: string = '0'
  @Provider() testData32: string = '0'
  @Provider() testData33: string = '0'
  @Provider() testData34: string = '0'
  @Provider() testData35: string = '0'
  @Provider() testData36: string = '0'
  @Provider() testData37: string = '0'
  @Provider() testData38: string = '0'
  @Provider() testData39: string = '0'
  @Provider() testData40: string = '0'
  @Provider() testData41: string = '0'
  @Provider() testData42: string = '0'
  @Provider() testData43: string = '0'
  @Provider() testData44: string = '0'
  @Provider() testData45: string = '0'
  @Provider() testData46: string = '0'
  @Provider() testData47: string = '0'
  @Provider() testData48: string = '0'
  @Provider() testData49: string = '0'
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData = index.toString()
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
      Text('ProviderStringSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.testData = '你好世界'
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
            this.testData = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderStringSample()
    }
  }
}
