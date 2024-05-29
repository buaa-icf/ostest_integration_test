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
import { stringArr } from '../ClassModel';
import { TimeHelper } from '../../../util/TimeHelper'
import { StateConstants, StateModel } from '../StateModel';

const timeHelper: TimeHelper = new TimeHelper('ProviderArraySample');

@ComponentV2
struct ChildProviderArraySample {
  @Consumer('Array') testData: Array<string> = stringArr

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData[0]}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('Array') testData: Array<string> = stringArr
  @Provider('Array1') testData1: Array<string> = stringArr
  @Provider('Array2') testData2: Array<string> = stringArr
  @Provider('Array3') testData3: Array<string> = stringArr
  @Provider('Array4') testData4: Array<string> = stringArr
  @Provider('Array5') testData5: Array<string> = stringArr
  @Provider('Array6') testData6: Array<string> = stringArr
  @Provider('Array7') testData7: Array<string> = stringArr
  @Provider('Array8') testData8: Array<string> = stringArr
  @Provider('Array9') testData9: Array<string> = stringArr
  @Provider('Array10') testData10: Array<string> = stringArr
  @Provider('Array11') testData11: Array<string> = stringArr
  @Provider('Array12') testData12: Array<string> = stringArr
  @Provider('Array13') testData13: Array<string> = stringArr
  @Provider('Array14') testData14: Array<string> = stringArr
  @Provider('Array15') testData15: Array<string> = stringArr
  @Provider('Array16') testData16: Array<string> = stringArr
  @Provider('Array17') testData17: Array<string> = stringArr
  @Provider('Array18') testData18: Array<string> = stringArr
  @Provider('Array19') testData19: Array<string> = stringArr
  @Provider('Array20') testData20: Array<string> = stringArr
  @Provider('Array21') testData21: Array<string> = stringArr
  @Provider('Array22') testData22: Array<string> = stringArr
  @Provider('Array23') testData23: Array<string> = stringArr
  @Provider('Array24') testData24: Array<string> = stringArr
  @Provider('Array25') testData25: Array<string> = stringArr
  @Provider('Array26') testData26: Array<string> = stringArr
  @Provider('Array27') testData27: Array<string> = stringArr
  @Provider('Array28') testData28: Array<string> = stringArr
  @Provider('Array29') testData29: Array<string> = stringArr
  @Provider('Array30') testData30: Array<string> = stringArr
  @Provider('Array31') testData31: Array<string> = stringArr
  @Provider('Array32') testData32: Array<string> = stringArr
  @Provider('Array33') testData33: Array<string> = stringArr
  @Provider('Array34') testData34: Array<string> = stringArr
  @Provider('Array35') testData35: Array<string> = stringArr
  @Provider('Array36') testData36: Array<string> = stringArr
  @Provider('Array37') testData37: Array<string> = stringArr
  @Provider('Array38') testData38: Array<string> = stringArr
  @Provider('Array39') testData39: Array<string> = stringArr
  @Provider('Array40') testData40: Array<string> = stringArr
  @Provider('Array41') testData41: Array<string> = stringArr
  @Provider('Array42') testData42: Array<string> = stringArr
  @Provider('Array43') testData43: Array<string> = stringArr
  @Provider('Array44') testData44: Array<string> = stringArr
  @Provider('Array45') testData45: Array<string> = stringArr
  @Provider('Array46') testData46: Array<string> = stringArr
  @Provider('Array47') testData47: Array<string> = stringArr
  @Provider('Array48') testData48: Array<string> = stringArr
  @Provider('Array49') testData49: Array<string> = stringArr
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
    Column({ space: 15 }) {
      Text('ProviderArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData[0]}`)
      Button('parent click: 读@Provider的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.testData[0]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('parent click: 写@Provider的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.testData[0] = index.toString()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderArraySample()
    }
  }
}
