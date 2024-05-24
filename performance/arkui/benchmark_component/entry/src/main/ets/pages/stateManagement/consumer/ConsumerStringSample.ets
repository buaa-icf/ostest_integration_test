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

const timeHelper: TimeHelper = new TimeHelper('ConsumerStringSample');
let isType: boolean = true

@ComponentV2
struct ChildConsumerStringSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer() testData: string = '0'
  @Consumer() testData1: string = '0'
  @Consumer() testData2: string = '0'
  @Consumer() testData3: string = '0'
  @Consumer() testData4: string = '0'
  @Consumer() testData5: string = '0'
  @Consumer() testData6: string = '0'
  @Consumer() testData7: string = '0'
  @Consumer() testData8: string = '0'
  @Consumer() testData9: string = '0'
  @Consumer() testData10: string = '0'
  @Consumer() testData11: string = '0'
  @Consumer() testData12: string = '0'
  @Consumer() testData13: string = '0'
  @Consumer() testData14: string = '0'
  @Consumer() testData15: string = '0'
  @Consumer() testData16: string = '0'
  @Consumer() testData17: string = '0'
  @Consumer() testData18: string = '0'
  @Consumer() testData19: string = '0'
  @Consumer() testData20: string = '0'
  @Consumer() testData21: string = '0'
  @Consumer() testData22: string = '0'
  @Consumer() testData23: string = '0'
  @Consumer() testData24: string = '0'
  @Consumer() testData25: string = '0'
  @Consumer() testData26: string = '0'
  @Consumer() testData27: string = '0'
  @Consumer() testData28: string = '0'
  @Consumer() testData29: string = '0'
  @Consumer() testData30: string = '0'
  @Consumer() testData31: string = '0'
  @Consumer() testData32: string = '0'
  @Consumer() testData33: string = '0'
  @Consumer() testData34: string = '0'
  @Consumer() testData35: string = '0'
  @Consumer() testData36: string = '0'
  @Consumer() testData37: string = '0'
  @Consumer() testData38: string = '0'
  @Consumer() testData39: string = '0'
  @Consumer() testData40: string = '0'
  @Consumer() testData41: string = '0'
  @Consumer() testData42: string = '0'
  @Consumer() testData43: string = '0'
  @Consumer() testData44: string = '0'
  @Consumer() testData45: string = '0'
  @Consumer() testData46: string = '0'
  @Consumer() testData47: string = '0'
  @Consumer() testData48: string = '0'
  @Consumer() testData49: string = '0'
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
    Column({space: 15}) {
      Text('ConsumerStringSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData}` : `child value: ${this.testData}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          isType = false
          this.testData = '你好世界'
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
            this.testData = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerStringSample {
  @Provider() testData: string = 'hello, world';
  build() {
    Column({space: 15}) {
      ChildConsumerStringSample()
      Text(`parent value: ${this.testData}`)
    }
  }
}
