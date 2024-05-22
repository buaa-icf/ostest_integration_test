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

const timeHelper: TimeHelper = new TimeHelper('OnceSetSample')
let isType: boolean = true
@ComponentV2
struct ChildOnceSetSample {

  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childSet: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet1: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet2: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet3: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet4: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet5: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet6: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet7: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet8: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet9: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet10: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet11: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet12: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet13: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet14: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet15: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet16: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet17: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet18: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet19: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet20: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet21: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet22: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet23: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet24: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet25: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet26: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet27: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet28: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet29: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet30: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet31: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet32: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet33: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet34: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet35: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet36: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet37: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet38: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet39: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet40: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet41: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet42: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet43: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet44: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet45: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet46: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet47: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet48: Set<number> = new Set([0, 1, 2, 3, 4]);
  @Once @Param childSet49: Set<number> = new Set([0, 1, 2, 3, 4]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
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
      Button('child click: 读@Once @Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childSet.values()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceSetSample {
  @Local parentSet: Set<number> = new Set([0, 1, 2, 3, 4]);
  build() {
    Column({ space: 15 }) {
      Text('OnceSetSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${Array.from(this.parentSet.values()).toString()}`)
      ChildOnceSetSample({childSet:this.parentSet})
    }
  }
}