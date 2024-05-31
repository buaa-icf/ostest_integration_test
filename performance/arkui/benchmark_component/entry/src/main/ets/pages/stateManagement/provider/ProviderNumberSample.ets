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

const timeHelper: TimeHelper = new TimeHelper('ProviderNumberSample');

@ComponentV2
struct ChildProviderNumberSample {
  @Consumer('Number') testData: number = 0

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderNumberSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('Number') testData: number = 1;
  @Provider('Number1') testData1: number = 0
  @Provider('Number2') testData2: number = 0
  @Provider('Number3') testData3: number = 0
  @Provider('Number4') testData4: number = 0
  @Provider('Number5') testData5: number = 0
  @Provider('Number6') testData6: number = 0
  @Provider('Number7') testData7: number = 0
  @Provider('Number8') testData8: number = 0
  @Provider('Number9') testData9: number = 0
  @Provider('Number10') testData10: number = 0
  @Provider('Number11') testData11: number = 0
  @Provider('Number12') testData12: number = 0
  @Provider('Number13') testData13: number = 0
  @Provider('Number14') testData14: number = 0
  @Provider('Number15') testData15: number = 0
  @Provider('Number16') testData16: number = 0
  @Provider('Number17') testData17: number = 0
  @Provider('Number18') testData18: number = 0
  @Provider('Number19') testData19: number = 0
  @Provider('Number20') testData20: number = 0
  @Provider('Number21') testData21: number = 0
  @Provider('Number22') testData22: number = 0
  @Provider('Number23') testData23: number = 0
  @Provider('Number24') testData24: number = 0
  @Provider('Number25') testData25: number = 0
  @Provider('Number26') testData26: number = 0
  @Provider('Number27') testData27: number = 0
  @Provider('Number28') testData28: number = 0
  @Provider('Number29') testData29: number = 0
  @Provider('Number30') testData30: number = 0
  @Provider('Number31') testData31: number = 0
  @Provider('Number32') testData32: number = 0
  @Provider('Number33') testData33: number = 0
  @Provider('Number34') testData34: number = 0
  @Provider('Number35') testData35: number = 0
  @Provider('Number36') testData36: number = 0
  @Provider('Number37') testData37: number = 0
  @Provider('Number38') testData38: number = 0
  @Provider('Number39') testData39: number = 0
  @Provider('Number40') testData40: number = 0
  @Provider('Number41') testData41: number = 0
  @Provider('Number42') testData42: number = 0
  @Provider('Number43') testData43: number = 0
  @Provider('Number44') testData44: number = 0
  @Provider('Number45') testData45: number = 0
  @Provider('Number46') testData46: number = 0
  @Provider('Number47') testData47: number = 0
  @Provider('Number48') testData48: number = 0
  @Provider('Number49') testData49: number = 0
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
            this.testData = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderNumberSample()
    }
  }
}
