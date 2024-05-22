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

const timeHelper: TimeHelper = new TimeHelper('ParamArraySample')
let isType: boolean = true

@ComponentV2
struct ChildParamArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childArray: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray1: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray2: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray3: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray4: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray5: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray6: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray7: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray8: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray9: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray10: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray11: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray12: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray13: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray14: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray15: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray16: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray17: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray18: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray19: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray20: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray21: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray22: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray23: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray24: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray25: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray26: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray27: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray28: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray29: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray30: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray31: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray32: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray33: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray34: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray35: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray36: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray37: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray38: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray39: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray40: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray41: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray42: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray43: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray44: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray45: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray46: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray47: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray48: Array<number> = [1, 2, 3, 4, 5]
  @Param childArray49: Array<number> = [1, 2, 3, 4, 5]
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childArray[index] = index
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childArray[index]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.childArray[0]}` :
        `child value: ${this.childArray[0]}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childArray[index]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Param的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          isType = true
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            this.childArray[index] = index
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamArraySample {
  @Local parentArray: Array<number> = [1, 2, 3, 4, 5];

  build() {
    Column({ space: 15 }) {
      Text('ParamArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentArray[0]}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentArray[0] = 1000
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamArraySample({ childArray: this.parentArray })
    }
  }
}