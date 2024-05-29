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

const timeHelper: TimeHelper = new TimeHelper('ConsumerBooleanSample');

@ComponentV2
struct ChildConsumerBooleanSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer('Boolean') testData: boolean = true
  @Consumer('Boolean1') testData1: boolean = true
  @Consumer('Boolean2') testData2: boolean = true
  @Consumer('Boolean3') testData3: boolean = true
  @Consumer('Boolean4') testData4: boolean = true
  @Consumer('Boolean5') testData5: boolean = true
  @Consumer('Boolean6') testData6: boolean = true
  @Consumer('Boolean7') testData7: boolean = true
  @Consumer('Boolean8') testData8: boolean = true
  @Consumer('Boolean9') testData9: boolean = true
  @Consumer('Boolean10') testData10: boolean = true
  @Consumer('Boolean11') testData11: boolean = true
  @Consumer('Boolean12') testData12: boolean = true
  @Consumer('Boolean13') testData13: boolean = true
  @Consumer('Boolean14') testData14: boolean = true
  @Consumer('Boolean15') testData15: boolean = true
  @Consumer('Boolean16') testData16: boolean = true
  @Consumer('Boolean17') testData17: boolean = true
  @Consumer('Boolean18') testData18: boolean = true
  @Consumer('Boolean19') testData19: boolean = true
  @Consumer('Boolean20') testData20: boolean = true
  @Consumer('Boolean21') testData21: boolean = true
  @Consumer('Boolean22') testData22: boolean = true
  @Consumer('Boolean23') testData23: boolean = true
  @Consumer('Boolean24') testData24: boolean = true
  @Consumer('Boolean25') testData25: boolean = true
  @Consumer('Boolean26') testData26: boolean = true
  @Consumer('Boolean27') testData27: boolean = true
  @Consumer('Boolean28') testData28: boolean = true
  @Consumer('Boolean29') testData29: boolean = true
  @Consumer('Boolean30') testData30: boolean = true
  @Consumer('Boolean31') testData31: boolean = true
  @Consumer('Boolean32') testData32: boolean = true
  @Consumer('Boolean33') testData33: boolean = true
  @Consumer('Boolean34') testData34: boolean = true
  @Consumer('Boolean35') testData35: boolean = true
  @Consumer('Boolean36') testData36: boolean = true
  @Consumer('Boolean37') testData37: boolean = true
  @Consumer('Boolean38') testData38: boolean = true
  @Consumer('Boolean39') testData39: boolean = true
  @Consumer('Boolean40') testData40: boolean = true
  @Consumer('Boolean41') testData41: boolean = true
  @Consumer('Boolean42') testData42: boolean = true
  @Consumer('Boolean43') testData43: boolean = true
  @Consumer('Boolean44') testData44: boolean = true
  @Consumer('Boolean45') testData45: boolean = true
  @Consumer('Boolean46') testData46: boolean = true
  @Consumer('Boolean47') testData47: boolean = true
  @Consumer('Boolean48') testData48: boolean = true
  @Consumer('Boolean49') testData49: boolean = true
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
      Text(`child value: ${this.testData.toString()}`)
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
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
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
  @Provider('Boolean') testData: boolean = true;

  build() {
    Column({ space: 15 }) {
      ChildConsumerBooleanSample()
      Text(`parent value: ${this.testData.toString()}`)
    }
  }
}
