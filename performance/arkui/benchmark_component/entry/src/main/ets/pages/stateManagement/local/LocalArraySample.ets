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
import { stringArr } from '../ClassModel';

class StringArray<T> extends Array<T>{
}

@Entry
@ComponentV2
struct LocalArraySample {
  timeHelper: TimeHelper = new TimeHelper('LocalArraySample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local testData: StringArray<string> = stringArr;
  @Local testData1: StringArray<string> = stringArr;
  @Local testData2: StringArray<string> = stringArr;
  @Local testData3: StringArray<string> = stringArr;
  @Local testData4: StringArray<string> = stringArr;
  @Local testData5: StringArray<string> = stringArr;
  @Local testData6: StringArray<string> = stringArr;
  @Local testData7: StringArray<string> = stringArr;
  @Local testData8: StringArray<string> = stringArr;
  @Local testData9: StringArray<string> = stringArr;
  @Local testData10: StringArray<string> = stringArr;
  @Local testData11: StringArray<string> = stringArr;
  @Local testData12: StringArray<string> = stringArr;
  @Local testData13: StringArray<string> = stringArr;
  @Local testData14: StringArray<string> = stringArr;
  @Local testData15: StringArray<string> = stringArr;
  @Local testData16: StringArray<string> = stringArr;
  @Local testData17: StringArray<string> = stringArr;
  @Local testData18: StringArray<string> = stringArr;
  @Local testData19: StringArray<string> = stringArr;
  @Local testData20: StringArray<string> = stringArr;
  @Local testData21: StringArray<string> = stringArr;
  @Local testData22: StringArray<string> = stringArr;
  @Local testData23: StringArray<string> = stringArr;
  @Local testData24: StringArray<string> = stringArr;
  @Local testData25: StringArray<string> = stringArr;
  @Local testData26: StringArray<string> = stringArr;
  @Local testData27: StringArray<string> = stringArr;
  @Local testData28: StringArray<string> = stringArr;
  @Local testData29: StringArray<string> = stringArr;
  @Local testData30: StringArray<string> = stringArr;
  @Local testData31: StringArray<string> = stringArr;
  @Local testData32: StringArray<string> = stringArr;
  @Local testData33: StringArray<string> = stringArr;
  @Local testData34: StringArray<string> = stringArr;
  @Local testData35: StringArray<string> = stringArr;
  @Local testData36: StringArray<string> = stringArr;
  @Local testData37: StringArray<string> = stringArr;
  @Local testData38: StringArray<string> = stringArr;
  @Local testData39: StringArray<string> = stringArr;
  @Local testData40: StringArray<string> = stringArr;
  @Local testData41: StringArray<string> = stringArr;
  @Local testData42: StringArray<string> = stringArr;
  @Local testData43: StringArray<string> = stringArr;
  @Local testData44: StringArray<string> = stringArr;
  @Local testData45: StringArray<string> = stringArr;
  @Local testData46: StringArray<string> = stringArr;
  @Local testData47: StringArray<string> = stringArr;
  @Local testData48: StringArray<string> = stringArr;
  @Local testData49: StringArray<string> = stringArr;
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData[0] = index.toString()
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData[0]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Row() {
      Column({ space: 10 }) {
        Text('LocalArraySample')
          .fontSize('25')
          .textAlign(TextAlign.Center)
          .margin({ bottom: 50, top: 50 })
        Text(`parent value: ${this.testData[0]}`)
        Button('parent click: 读@Local的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
              let tmp = this.testData[0]
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
          })
        Button('parent click: 写@Local的耗时')
          .id('setStateTimeTaken')
          .onClick(() => {
            this.isTypeState = !this.isTypeState
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
            for (let index = ArrEntity.STATE_LOOP; index > 0 ; index--) {
              this.testData[0] = index.toString()
            }
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}