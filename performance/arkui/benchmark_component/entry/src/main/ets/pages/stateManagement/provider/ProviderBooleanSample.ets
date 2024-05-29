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

const timeHelper: TimeHelper = new TimeHelper('ProviderBooleanSample');

@ComponentV2
struct ChildProviderBooleanSample {
  @Consumer('Boolean') testData: boolean = false

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderBooleanSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('Boolean') testData: boolean = true;
  @Provider('Boolean1') testData1: boolean = true
  @Provider('Boolean2') testData2: boolean = true
  @Provider('Boolean3') testData3: boolean = true
  @Provider('Boolean4') testData4: boolean = true
  @Provider('Boolean5') testData5: boolean = true
  @Provider('Boolean6') testData6: boolean = true
  @Provider('Boolean7') testData7: boolean = true
  @Provider('Boolean8') testData8: boolean = true
  @Provider('Boolean9') testData9: boolean = true
  @Provider('Boolean10') testData10: boolean = true
  @Provider('Boolean11') testData11: boolean = true
  @Provider('Boolean12') testData12: boolean = true
  @Provider('Boolean13') testData13: boolean = true
  @Provider('Boolean14') testData14: boolean = true
  @Provider('Boolean15') testData15: boolean = true
  @Provider('Boolean16') testData16: boolean = true
  @Provider('Boolean17') testData17: boolean = true
  @Provider('Boolean18') testData18: boolean = true
  @Provider('Boolean19') testData19: boolean = true
  @Provider('Boolean20') testData20: boolean = true
  @Provider('Boolean21') testData21: boolean = true
  @Provider('Boolean22') testData22: boolean = true
  @Provider('Boolean23') testData23: boolean = true
  @Provider('Boolean24') testData24: boolean = true
  @Provider('Boolean25') testData25: boolean = true
  @Provider('Boolean26') testData26: boolean = true
  @Provider('Boolean27') testData27: boolean = true
  @Provider('Boolean28') testData28: boolean = true
  @Provider('Boolean29') testData29: boolean = true
  @Provider('Boolean30') testData30: boolean = true
  @Provider('Boolean31') testData31: boolean = true
  @Provider('Boolean32') testData32: boolean = true
  @Provider('Boolean33') testData33: boolean = true
  @Provider('Boolean34') testData34: boolean = true
  @Provider('Boolean35') testData35: boolean = true
  @Provider('Boolean36') testData36: boolean = true
  @Provider('Boolean37') testData37: boolean = true
  @Provider('Boolean38') testData38: boolean = true
  @Provider('Boolean39') testData39: boolean = true
  @Provider('Boolean40') testData40: boolean = true
  @Provider('Boolean41') testData41: boolean = true
  @Provider('Boolean42') testData42: boolean = true
  @Provider('Boolean43') testData43: boolean = true
  @Provider('Boolean44') testData44: boolean = true
  @Provider('Boolean45') testData45: boolean = true
  @Provider('Boolean46') testData46: boolean = true
  @Provider('Boolean47') testData47: boolean = true
  @Provider('Boolean48') testData48: boolean = true
  @Provider('Boolean49') testData49: boolean = true
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
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderBooleanSample()
    }
  }
}
