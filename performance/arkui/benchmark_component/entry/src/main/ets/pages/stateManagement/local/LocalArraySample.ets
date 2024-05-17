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
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

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
            let tmp = this.testData[0]
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
          })
        Button('parent click: 写@Local的耗时')
          .id('setStateTimeTaken')
          .onClick(() => {
            let index = this.testData.length - 1
            this.isType = true
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
            this.testData[index] = 'setStateTimeTaken'
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
    }
  }
}