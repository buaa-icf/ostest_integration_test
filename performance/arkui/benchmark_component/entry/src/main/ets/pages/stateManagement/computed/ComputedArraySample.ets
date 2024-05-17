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

@Entry
@ComponentV2
struct ComputedArraySample {
  isType: boolean = true
  @Local testData: string[] = ['吴辉', '予升', '3', '晟松', '1', '晓卿', '万葵', '5', '轩宇', '少辰']

  @Computed
  get computedFun() {
    return this.testData
  }

  timeHelper: TimeHelper = new TimeHelper('ComputedArraySample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  test = this.computedFun
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

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
    Column({ space: 15 }) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `value:${this.computedFun[this.computedFun.length - 1]}` :
        `value: ${this.computedFun[this.computedFun.length - 1]}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.testData[this.testData.length - 1] = 'click test'
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('读@Computed的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.computedFun[0]
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('写@Computed的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.testData[this.testData.length - 1] = `set test`
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

