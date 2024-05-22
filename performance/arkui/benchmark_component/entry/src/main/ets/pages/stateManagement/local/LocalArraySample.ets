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

class StringArray<T> extends Array<T>{
}

@Entry
@ComponentV2
struct LocalArraySample {
  timeHelper: TimeHelper = new TimeHelper('LocalArraySample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData1: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData2: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData3: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData4: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData5: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData6: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData7: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData8: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData9: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData10: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData11: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData12: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData13: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData14: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData15: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData16: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData17: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData18: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData19: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData20: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData21: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData22: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData23: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData24: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData25: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData26: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData27: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData28: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData29: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData30: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData31: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData32: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData33: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData34: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData35: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData36: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData37: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData38: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData39: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData40: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData41: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData42: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData43: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData44: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData45: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData46: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData47: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData48: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  @Local testData49: StringArray<string> = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰'];
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData[index] = index.toString()
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData[index]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text(StateUtils.isType(this.isType, this.timeHelper) ? `parent value: ${this.testData[this.testData.length - 1]}` :
          `parent value: ${this.testData[this.testData.length - 1]}`)
          .id('changeUITimeTaken')
          .onClick(() => {
            this.isType = false
            this.testData.push('changeUITimeTaken')
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
          })
        Button('parent click: 读@Local的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              let tmp = this.testData[index]
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
          })
        Button('parent click: 写@Local的耗时')
          .id('setStateTimeTaken')
          .onClick(() => {
            this.isType = true
            this.isTypeState = !this.isTypeState
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              this.testData[index] = index.toString()
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}