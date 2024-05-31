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
import { stringArr } from '../ClassModel';
import { StateConstants, StateModel } from '../StateModel';

const timeHelper: TimeHelper = new TimeHelper('ConsumerArraySample');

@ComponentV2
struct ChildConsumerArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer('Array') testData: Array<string> = stringArr
  @Consumer('Array1') testData1: Array<string> = stringArr
  @Consumer('Array2') testData2: Array<string> = stringArr
  @Consumer('Array3') testData3: Array<string> = stringArr
  @Consumer('Array4') testData4: Array<string> = stringArr
  @Consumer('Array5') testData5: Array<string> = stringArr
  @Consumer('Array6') testData6: Array<string> = stringArr
  @Consumer('Array7') testData7: Array<string> = stringArr
  @Consumer('Array8') testData8: Array<string> = stringArr
  @Consumer('Array9') testData9: Array<string> = stringArr
  @Consumer('Array10') testData10: Array<string> = stringArr
  @Consumer('Array11') testData11: Array<string> = stringArr
  @Consumer('Array12') testData12: Array<string> = stringArr
  @Consumer('Array13') testData13: Array<string> = stringArr
  @Consumer('Array14') testData14: Array<string> = stringArr
  @Consumer('Array15') testData15: Array<string> = stringArr
  @Consumer('Array16') testData16: Array<string> = stringArr
  @Consumer('Array17') testData17: Array<string> = stringArr
  @Consumer('Array18') testData18: Array<string> = stringArr
  @Consumer('Array19') testData19: Array<string> = stringArr
  @Consumer('Array20') testData20: Array<string> = stringArr
  @Consumer('Array21') testData21: Array<string> = stringArr
  @Consumer('Array22') testData22: Array<string> = stringArr
  @Consumer('Array23') testData23: Array<string> = stringArr
  @Consumer('Array24') testData24: Array<string> = stringArr
  @Consumer('Array25') testData25: Array<string> = stringArr
  @Consumer('Array26') testData26: Array<string> = stringArr
  @Consumer('Array27') testData27: Array<string> = stringArr
  @Consumer('Array28') testData28: Array<string> = stringArr
  @Consumer('Array29') testData29: Array<string> = stringArr
  @Consumer('Array30') testData30: Array<string> = stringArr
  @Consumer('Array31') testData31: Array<string> = stringArr
  @Consumer('Array32') testData32: Array<string> = stringArr
  @Consumer('Array33') testData33: Array<string> = stringArr
  @Consumer('Array34') testData34: Array<string> = stringArr
  @Consumer('Array35') testData35: Array<string> = stringArr
  @Consumer('Array36') testData36: Array<string> = stringArr
  @Consumer('Array37') testData37: Array<string> = stringArr
  @Consumer('Array38') testData38: Array<string> = stringArr
  @Consumer('Array39') testData39: Array<string> = stringArr
  @Consumer('Array40') testData40: Array<string> = stringArr
  @Consumer('Array41') testData41: Array<string> = stringArr
  @Consumer('Array42') testData42: Array<string> = stringArr
  @Consumer('Array43') testData43: Array<string> = stringArr
  @Consumer('Array44') testData44: Array<string> = stringArr
  @Consumer('Array45') testData45: Array<string> = stringArr
  @Consumer('Array46') testData46: Array<string> = stringArr
  @Consumer('Array47') testData47: Array<string> = stringArr
  @Consumer('Array48') testData48: Array<string> = stringArr
  @Consumer('Array49') testData49: Array<string> = stringArr
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData[0] = index.toString()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.testData[0]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text('ConsumerArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(`child value: ${this.testData[0]}`)
      Button('child clink: 读@Consumer的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData[0]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child clink: 写@Consumer的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData[0] = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct ConsumerArraySample {
  @Provider('Array') testData: Array<string> = stringArr
  build() {
    Column({space: 15}) {
      ChildConsumerArraySample()
      Text(`parent value: ${this.testData[0]}`)
    }
  }
}
