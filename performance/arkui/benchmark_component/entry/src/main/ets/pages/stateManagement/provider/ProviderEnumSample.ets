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
import { LanguageEnum } from '../ClassModel';
import { TimeHelper } from '../../../util/TimeHelper'
import { StateConstants, StateModel } from '../StateModel';

const timeHelper: TimeHelper = new TimeHelper('ProviderEnumSample');

@ComponentV2
struct ChildProviderEnumSample {
  @Consumer('Enum') testData: LanguageEnum = LanguageEnum.English

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData}`)
    }
  }
}

@Entry
@ComponentV2
struct ProviderEnumSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Provider('Enum') testData: LanguageEnum = LanguageEnum.English;
  @Provider('Enum1') testData1: LanguageEnum = LanguageEnum.English
  @Provider('Enum2') testData2: LanguageEnum = LanguageEnum.English
  @Provider('Enum3') testData3: LanguageEnum = LanguageEnum.English
  @Provider('Enum4') testData4: LanguageEnum = LanguageEnum.English
  @Provider('Enum5') testData5: LanguageEnum = LanguageEnum.English
  @Provider('Enum6') testData6: LanguageEnum = LanguageEnum.English
  @Provider('Enum7') testData7: LanguageEnum = LanguageEnum.English
  @Provider('Enum8') testData8: LanguageEnum = LanguageEnum.English
  @Provider('Enum9') testData9: LanguageEnum = LanguageEnum.English
  @Provider('Enum10') testData10: LanguageEnum = LanguageEnum.English
  @Provider('Enum11') testData11: LanguageEnum = LanguageEnum.English
  @Provider('Enum12') testData12: LanguageEnum = LanguageEnum.English
  @Provider('Enum13') testData13: LanguageEnum = LanguageEnum.English
  @Provider('Enum14') testData14: LanguageEnum = LanguageEnum.English
  @Provider('Enum15') testData15: LanguageEnum = LanguageEnum.English
  @Provider('Enum16') testData16: LanguageEnum = LanguageEnum.English
  @Provider('Enum17') testData17: LanguageEnum = LanguageEnum.English
  @Provider('Enum18') testData18: LanguageEnum = LanguageEnum.English
  @Provider('Enum19') testData19: LanguageEnum = LanguageEnum.English
  @Provider('Enum20') testData20: LanguageEnum = LanguageEnum.English
  @Provider('Enum21') testData21: LanguageEnum = LanguageEnum.English
  @Provider('Enum22') testData22: LanguageEnum = LanguageEnum.English
  @Provider('Enum23') testData23: LanguageEnum = LanguageEnum.English
  @Provider('Enum24') testData24: LanguageEnum = LanguageEnum.English
  @Provider('Enum25') testData25: LanguageEnum = LanguageEnum.English
  @Provider('Enum26') testData26: LanguageEnum = LanguageEnum.English
  @Provider('Enum27') testData27: LanguageEnum = LanguageEnum.English
  @Provider('Enum28') testData28: LanguageEnum = LanguageEnum.English
  @Provider('Enum29') testData29: LanguageEnum = LanguageEnum.English
  @Provider('Enum30') testData30: LanguageEnum = LanguageEnum.English
  @Provider('Enum31') testData31: LanguageEnum = LanguageEnum.English
  @Provider('Enum32') testData32: LanguageEnum = LanguageEnum.English
  @Provider('Enum33') testData33: LanguageEnum = LanguageEnum.English
  @Provider('Enum34') testData34: LanguageEnum = LanguageEnum.English
  @Provider('Enum35') testData35: LanguageEnum = LanguageEnum.English
  @Provider('Enum36') testData36: LanguageEnum = LanguageEnum.English
  @Provider('Enum37') testData37: LanguageEnum = LanguageEnum.English
  @Provider('Enum38') testData38: LanguageEnum = LanguageEnum.English
  @Provider('Enum39') testData39: LanguageEnum = LanguageEnum.English
  @Provider('Enum40') testData40: LanguageEnum = LanguageEnum.English
  @Provider('Enum41') testData41: LanguageEnum = LanguageEnum.English
  @Provider('Enum42') testData42: LanguageEnum = LanguageEnum.English
  @Provider('Enum43') testData43: LanguageEnum = LanguageEnum.English
  @Provider('Enum44') testData44: LanguageEnum = LanguageEnum.English
  @Provider('Enum45') testData45: LanguageEnum = LanguageEnum.English
  @Provider('Enum46') testData46: LanguageEnum = LanguageEnum.English
  @Provider('Enum47') testData47: LanguageEnum = LanguageEnum.English
  @Provider('Enum48') testData48: LanguageEnum = LanguageEnum.English
  @Provider('Enum49') testData49: LanguageEnum = LanguageEnum.English
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true
  tmpArr: LanguageEnum[] = [LanguageEnum.English, LanguageEnum.Chinese]

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData  = this.tmpArr[index % 2]
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
      Text('ProviderEnumSample')
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
            this.testData  = this.tmpArr[index % 2]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
      ChildProviderEnumSample()
    }
  }
}
