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

const timeHelper: TimeHelper = new TimeHelper('ConsumerDateSample');
let isType: boolean = true

@ComponentV2
struct ChildConsumerDateSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer() testData: Date = new Date()
  @Consumer() testData1: Date = new Date()
  @Consumer() testData2: Date = new Date()
  @Consumer() testData3: Date = new Date()
  @Consumer() testData4: Date = new Date()
  @Consumer() testData5: Date = new Date()
  @Consumer() testData6: Date = new Date()
  @Consumer() testData7: Date = new Date()
  @Consumer() testData8: Date = new Date()
  @Consumer() testData9: Date = new Date()
  @Consumer() testData10: Date = new Date()
  @Consumer() testData11: Date = new Date()
  @Consumer() testData12: Date = new Date()
  @Consumer() testData13: Date = new Date()
  @Consumer() testData14: Date = new Date()
  @Consumer() testData15: Date = new Date()
  @Consumer() testData16: Date = new Date()
  @Consumer() testData17: Date = new Date()
  @Consumer() testData18: Date = new Date()
  @Consumer() testData19: Date = new Date()
  @Consumer() testData20: Date = new Date()
  @Consumer() testData21: Date = new Date()
  @Consumer() testData22: Date = new Date()
  @Consumer() testData23: Date = new Date()
  @Consumer() testData24: Date = new Date()
  @Consumer() testData25: Date = new Date()
  @Consumer() testData26: Date = new Date()
  @Consumer() testData27: Date = new Date()
  @Consumer() testData28: Date = new Date()
  @Consumer() testData29: Date = new Date()
  @Consumer() testData30: Date = new Date()
  @Consumer() testData31: Date = new Date()
  @Consumer() testData32: Date = new Date()
  @Consumer() testData33: Date = new Date()
  @Consumer() testData34: Date = new Date()
  @Consumer() testData35: Date = new Date()
  @Consumer() testData36: Date = new Date()
  @Consumer() testData37: Date = new Date()
  @Consumer() testData38: Date = new Date()
  @Consumer() testData39: Date = new Date()
  @Consumer() testData40: Date = new Date()
  @Consumer() testData41: Date = new Date()
  @Consumer() testData42: Date = new Date()
  @Consumer() testData43: Date = new Date()
  @Consumer() testData44: Date = new Date()
  @Consumer() testData45: Date = new Date()
  @Consumer() testData46: Date = new Date()
  @Consumer() testData47: Date = new Date()
  @Consumer() testData48: Date = new Date()
  @Consumer() testData49: Date = new Date()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: number[] = [this.testData.getTime() - 60 * 60 * 1000,this.testData.getTime() - 30 * 60 * 1000]
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.setTime(this.tmpArr[index % 2])
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
      Text('ConsumerDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.testData.toTimeString()}` : `child value: ${this.testData.toTimeString()}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          isType = false
          this.testData.setTime(this.testData.getTime() + 3 * 60 * 60 * 1000)
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
            this.testData.setTime(this.tmpArr[index % 2])
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerDateSample {
  @Provider() testData: Date = new Date();
  build() {
    Column({space: 15}) {
      ChildConsumerDateSample()
      Text(`parent value: ${this.testData.toTimeString()}`)
    }
  }
}
