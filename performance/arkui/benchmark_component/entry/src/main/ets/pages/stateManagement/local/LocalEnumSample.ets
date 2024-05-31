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
import { LanguageEnum } from '../ClassModel';

@Entry
@ComponentV2
struct LocalEnumSample {
  timeHelper: TimeHelper = new TimeHelper('LocalEnumSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: LanguageEnum = LanguageEnum.English;
  @Local testData1: LanguageEnum = LanguageEnum.English;
  @Local testData2: LanguageEnum = LanguageEnum.English;
  @Local testData3: LanguageEnum = LanguageEnum.English;
  @Local testData4: LanguageEnum = LanguageEnum.English;
  @Local testData5: LanguageEnum = LanguageEnum.English;
  @Local testData6: LanguageEnum = LanguageEnum.English;
  @Local testData7: LanguageEnum = LanguageEnum.English;
  @Local testData8: LanguageEnum = LanguageEnum.English;
  @Local testData9: LanguageEnum = LanguageEnum.English;
  @Local testData10: LanguageEnum = LanguageEnum.English;
  @Local testData11: LanguageEnum = LanguageEnum.English;
  @Local testData12: LanguageEnum = LanguageEnum.English;
  @Local testData13: LanguageEnum = LanguageEnum.English;
  @Local testData14: LanguageEnum = LanguageEnum.English;
  @Local testData15: LanguageEnum = LanguageEnum.English;
  @Local testData16: LanguageEnum = LanguageEnum.English;
  @Local testData17: LanguageEnum = LanguageEnum.English;
  @Local testData18: LanguageEnum = LanguageEnum.English;
  @Local testData19: LanguageEnum = LanguageEnum.English;
  @Local testData20: LanguageEnum = LanguageEnum.English;
  @Local testData21: LanguageEnum = LanguageEnum.English;
  @Local testData22: LanguageEnum = LanguageEnum.English;
  @Local testData23: LanguageEnum = LanguageEnum.English;
  @Local testData24: LanguageEnum = LanguageEnum.English;
  @Local testData25: LanguageEnum = LanguageEnum.English;
  @Local testData26: LanguageEnum = LanguageEnum.English;
  @Local testData27: LanguageEnum = LanguageEnum.English;
  @Local testData28: LanguageEnum = LanguageEnum.English;
  @Local testData29: LanguageEnum = LanguageEnum.English;
  @Local testData30: LanguageEnum = LanguageEnum.English;
  @Local testData31: LanguageEnum = LanguageEnum.English;
  @Local testData32: LanguageEnum = LanguageEnum.English;
  @Local testData33: LanguageEnum = LanguageEnum.English;
  @Local testData34: LanguageEnum = LanguageEnum.English;
  @Local testData35: LanguageEnum = LanguageEnum.English;
  @Local testData36: LanguageEnum = LanguageEnum.English;
  @Local testData37: LanguageEnum = LanguageEnum.English;
  @Local testData38: LanguageEnum = LanguageEnum.English;
  @Local testData39: LanguageEnum = LanguageEnum.English;
  @Local testData40: LanguageEnum = LanguageEnum.English;
  @Local testData41: LanguageEnum = LanguageEnum.English;
  @Local testData42: LanguageEnum = LanguageEnum.English;
  @Local testData43: LanguageEnum = LanguageEnum.English;
  @Local testData44: LanguageEnum = LanguageEnum.English;
  @Local testData45: LanguageEnum = LanguageEnum.English;
  @Local testData46: LanguageEnum = LanguageEnum.English;
  @Local testData47: LanguageEnum = LanguageEnum.English;
  @Local testData48: LanguageEnum = LanguageEnum.English;
  @Local testData49: LanguageEnum = LanguageEnum.English;
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: LanguageEnum[] = [LanguageEnum.English, LanguageEnum.Chinese]
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData  = this.tmpArr[index % 2]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text('LocalEnumSample')
          .fontSize('25')
          .textAlign(TextAlign.Center)
          .margin({ bottom: 50, top: 50 })
        Text(`parent value: ${this.testData}`)
        Button('parent click: 读@Local的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              let tmp = this.testData
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
          })
        Button('parent click: 写@Local的耗时')
          .id('setStateTimeTaken')
          .onClick(() => {
            this.isTypeState = !this.isTypeState
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
            for (let index = ArrEntity.STATE_LOOP; index > 0 ; index--) {
              this.testData  = this.tmpArr[index % 2]
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}