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

const timeHelper: TimeHelper = new TimeHelper('ConsumerStringSample');

@ComponentV2
struct ChildConsumerStringSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consumer('String') testData: string = '0'
  @Consumer('String1') testData1: string = '0'
  @Consumer('String2') testData2: string = '0'
  @Consumer('String3') testData3: string = '0'
  @Consumer('String4') testData4: string = '0'
  @Consumer('String5') testData5: string = '0'
  @Consumer('String6') testData6: string = '0'
  @Consumer('String7') testData7: string = '0'
  @Consumer('String8') testData8: string = '0'
  @Consumer('String9') testData9: string = '0'
  @Consumer('String10') testData10: string = '0'
  @Consumer('String11') testData11: string = '0'
  @Consumer('String12') testData12: string = '0'
  @Consumer('String13') testData13: string = '0'
  @Consumer('String14') testData14: string = '0'
  @Consumer('String15') testData15: string = '0'
  @Consumer('String16') testData16: string = '0'
  @Consumer('String17') testData17: string = '0'
  @Consumer('String18') testData18: string = '0'
  @Consumer('String19') testData19: string = '0'
  @Consumer('String20') testData20: string = '0'
  @Consumer('String21') testData21: string = '0'
  @Consumer('String22') testData22: string = '0'
  @Consumer('String23') testData23: string = '0'
  @Consumer('String24') testData24: string = '0'
  @Consumer('String25') testData25: string = '0'
  @Consumer('String26') testData26: string = '0'
  @Consumer('String27') testData27: string = '0'
  @Consumer('String28') testData28: string = '0'
  @Consumer('String29') testData29: string = '0'
  @Consumer('String30') testData30: string = '0'
  @Consumer('String31') testData31: string = '0'
  @Consumer('String32') testData32: string = '0'
  @Consumer('String33') testData33: string = '0'
  @Consumer('String34') testData34: string = '0'
  @Consumer('String35') testData35: string = '0'
  @Consumer('String36') testData36: string = '0'
  @Consumer('String37') testData37: string = '0'
  @Consumer('String38') testData38: string = '0'
  @Consumer('String39') testData39: string = '0'
  @Consumer('String40') testData40: string = '0'
  @Consumer('String41') testData41: string = '0'
  @Consumer('String42') testData42: string = '0'
  @Consumer('String43') testData43: string = '0'
  @Consumer('String44') testData44: string = '0'
  @Consumer('String45') testData45: string = '0'
  @Consumer('String46') testData46: string = '0'
  @Consumer('String47') testData47: string = '0'
  @Consumer('String48') testData48: string = '0'
  @Consumer('String49') testData49: string = '0'
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
      Text(`child value: ${this.testData}`)
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
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
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
  @Provider('String') testData: string = 'hello, world';
  build() {
    Column({space: 15}) {
      ChildConsumerStringSample()
      Text(`parent value: ${this.testData}`)
    }
  }
}
