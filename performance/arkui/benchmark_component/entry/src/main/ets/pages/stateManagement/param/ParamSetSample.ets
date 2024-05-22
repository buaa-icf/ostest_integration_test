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

const timeHelper: TimeHelper = new TimeHelper('ParamSetSample')
let isType: boolean = true
@ComponentV2
struct ChildParamSetSample {

  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childSet: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet1: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet2: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet3: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet4: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet5: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet6: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet7: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet8: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet9: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet10: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet11: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet12: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet13: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet14: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet15: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet16: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet17: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet18: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet19: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet20: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet21: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet22: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet23: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet24: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet25: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet26: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet27: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet28: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet29: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet30: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet31: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet32: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet33: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet34: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet35: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet36: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet37: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet38: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet39: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet40: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet41: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet42: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet43: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet44: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet45: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet46: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet47: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet48: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Param childSet49: Set<number> = new Set([0, 1, 2, 3, 4]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childSet.add(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.childSet.clear()
    this.childSet.add(500)
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childSet.values()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${Array.from(this.childSet.values()).toString()}` :
        `child value: ${Array.from(this.childSet.values()).toString()}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childSet.values()
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
            this.childSet.add(index)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamSetSample {
  @Local parentSet: Set<number> = new Set([0, 1, 2, 3, 4]);
  build() {
    Column({ space: 15 }) {
      Text('ParamSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${Array.from(this.parentSet.values()).toString()}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentSet.add(10000)
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamSetSample({childSet:this.parentSet})
    }
  }
}