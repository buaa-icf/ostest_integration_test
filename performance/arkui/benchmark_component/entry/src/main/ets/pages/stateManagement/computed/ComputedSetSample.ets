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
struct ComputedSetSample {
  isType: boolean = true
  @Local testData: Set<number> = new Set([0, 1, 2, 3, 4]);

  @Computed
  get computedFun() {
    return this.testData
  }

  timeHelper: TimeHelper = new TimeHelper('ComputedSetSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  test = this.computedFun
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData.add(index)
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.testData.clear()
    this.testData.add(500)
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.testData.values()
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `value: ${Array.from(this.computedFun.values()).toString()}` :
        `value: ${Array.from(this.computedFun.values()).toString()}`)
        .id('changeUITimeTaken')
        .onClick(() => {
          this.isType = false
          this.testData.add(10000)
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      Button('读@Computed的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let tmp = this.computedFun.values()
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('写@Computed的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.testData.add(-1)
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}