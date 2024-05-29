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

const timeHelper: TimeHelper = new TimeHelper('ConsumerNumberSample');

@ComponentV2
struct ChildConsumerNumberSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer('Number') testData: number = 0
  @Consumer('Number1') testData1: number = 0
  @Consumer('Number2') testData2: number = 0
  @Consumer('Number3') testData3: number = 0
  @Consumer('Number4') testData4: number = 0
  @Consumer('Number5') testData5: number = 0
  @Consumer('Number6') testData6: number = 0
  @Consumer('Number7') testData7: number = 0
  @Consumer('Number8') testData8: number = 0
  @Consumer('Number9') testData9: number = 0
  @Consumer('Number10') testData10: number = 0
  @Consumer('Number11') testData11: number = 0
  @Consumer('Number12') testData12: number = 0
  @Consumer('Number13') testData13: number = 0
  @Consumer('Number14') testData14: number = 0
  @Consumer('Number15') testData15: number = 0
  @Consumer('Number16') testData16: number = 0
  @Consumer('Number17') testData17: number = 0
  @Consumer('Number18') testData18: number = 0
  @Consumer('Number19') testData19: number = 0
  @Consumer('Number20') testData20: number = 0
  @Consumer('Number21') testData21: number = 0
  @Consumer('Number22') testData22: number = 0
  @Consumer('Number23') testData23: number = 0
  @Consumer('Number24') testData24: number = 0
  @Consumer('Number25') testData25: number = 0
  @Consumer('Number26') testData26: number = 0
  @Consumer('Number27') testData27: number = 0
  @Consumer('Number28') testData28: number = 0
  @Consumer('Number29') testData29: number = 0
  @Consumer('Number30') testData30: number = 0
  @Consumer('Number31') testData31: number = 0
  @Consumer('Number32') testData32: number = 0
  @Consumer('Number33') testData33: number = 0
  @Consumer('Number34') testData34: number = 0
  @Consumer('Number35') testData35: number = 0
  @Consumer('Number36') testData36: number = 0
  @Consumer('Number37') testData37: number = 0
  @Consumer('Number38') testData38: number = 0
  @Consumer('Number39') testData39: number = 0
  @Consumer('Number40') testData40: number = 0
  @Consumer('Number41') testData41: number = 0
  @Consumer('Number42') testData42: number = 0
  @Consumer('Number43') testData43: number = 0
  @Consumer('Number44') testData44: number = 0
  @Consumer('Number45') testData45: number = 0
  @Consumer('Number46') testData46: number = 0
  @Consumer('Number47') testData47: number = 0
  @Consumer('Number48') testData48: number = 0
  @Consumer('Number49') testData49: number = 0
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
      Text('ConsumerNumberSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`child value: ${this.testData}`)
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
            this.testData = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerNumberSample {
  @Provider('Number') testData: number = 1;

  build() {
    Column({ space: 15 }) {
      ChildConsumerNumberSample()
      Text(`parent value: ${this.testData}`)
    }
  }
}
