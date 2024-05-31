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

const timeHelper: TimeHelper = new TimeHelper('OnceSetSample')

@ComponentV2
struct ChildOnceSetSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childSet: Set<number> = new Set();
  @Once @Param childSet1: Set<number> = new Set();
  @Once @Param childSet2: Set<number> = new Set();
  @Once @Param childSet3: Set<number> = new Set();
  @Once @Param childSet4: Set<number> = new Set();
  @Once @Param childSet5: Set<number> = new Set();
  @Once @Param childSet6: Set<number> = new Set();
  @Once @Param childSet7: Set<number> = new Set();
  @Once @Param childSet8: Set<number> = new Set();
  @Once @Param childSet9: Set<number> = new Set();
  @Once @Param childSet10: Set<number> = new Set();
  @Once @Param childSet11: Set<number> = new Set();
  @Once @Param childSet12: Set<number> = new Set();
  @Once @Param childSet13: Set<number> = new Set();
  @Once @Param childSet14: Set<number> = new Set();
  @Once @Param childSet15: Set<number> = new Set();
  @Once @Param childSet16: Set<number> = new Set();
  @Once @Param childSet17: Set<number> = new Set();
  @Once @Param childSet18: Set<number> = new Set();
  @Once @Param childSet19: Set<number> = new Set();
  @Once @Param childSet20: Set<number> = new Set();
  @Once @Param childSet21: Set<number> = new Set();
  @Once @Param childSet22: Set<number> = new Set();
  @Once @Param childSet23: Set<number> = new Set();
  @Once @Param childSet24: Set<number> = new Set();
  @Once @Param childSet25: Set<number> = new Set();
  @Once @Param childSet26: Set<number> = new Set();
  @Once @Param childSet27: Set<number> = new Set();
  @Once @Param childSet28: Set<number> = new Set();
  @Once @Param childSet29: Set<number> = new Set();
  @Once @Param childSet30: Set<number> = new Set();
  @Once @Param childSet31: Set<number> = new Set();
  @Once @Param childSet32: Set<number> = new Set();
  @Once @Param childSet33: Set<number> = new Set();
  @Once @Param childSet34: Set<number> = new Set();
  @Once @Param childSet35: Set<number> = new Set();
  @Once @Param childSet36: Set<number> = new Set();
  @Once @Param childSet37: Set<number> = new Set();
  @Once @Param childSet38: Set<number> = new Set();
  @Once @Param childSet39: Set<number> = new Set();
  @Once @Param childSet40: Set<number> = new Set();
  @Once @Param childSet41: Set<number> = new Set();
  @Once @Param childSet42: Set<number> = new Set();
  @Once @Param childSet43: Set<number> = new Set();
  @Once @Param childSet44: Set<number> = new Set();
  @Once @Param childSet45: Set<number> = new Set();
  @Once @Param childSet46: Set<number> = new Set();
  @Once @Param childSet47: Set<number> = new Set();
  @Once @Param childSet48: Set<number> = new Set();
  @Once @Param childSet49: Set<number> = new Set();
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
      Text(`child value: ${Array.from(this.childSet.values()).toString()}`)
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
      ChildOnceSetSample({
        childSet: this.parentSet,
        childSet1: this.parentSet,
        childSet2: this.parentSet,
        childSet3: this.parentSet,
        childSet4: this.parentSet,
        childSet5: this.parentSet,
        childSet6: this.parentSet,
        childSet7: this.parentSet,
        childSet8: this.parentSet,
        childSet9: this.parentSet,
        childSet10: this.parentSet,
        childSet11: this.parentSet,
        childSet12: this.parentSet,
        childSet13: this.parentSet,
        childSet14: this.parentSet,
        childSet15: this.parentSet,
        childSet16: this.parentSet,
        childSet17: this.parentSet,
        childSet18: this.parentSet,
        childSet19: this.parentSet,
        childSet20: this.parentSet,
        childSet21: this.parentSet,
        childSet22: this.parentSet,
        childSet23: this.parentSet,
        childSet24: this.parentSet,
        childSet25: this.parentSet,
        childSet26: this.parentSet,
        childSet27: this.parentSet,
        childSet28: this.parentSet,
        childSet29: this.parentSet,
        childSet30: this.parentSet,
        childSet31: this.parentSet,
        childSet32: this.parentSet,
        childSet33: this.parentSet,
        childSet34: this.parentSet,
        childSet35: this.parentSet,
        childSet36: this.parentSet,
        childSet37: this.parentSet,
        childSet38: this.parentSet,
        childSet39: this.parentSet,
        childSet40: this.parentSet,
        childSet41: this.parentSet,
        childSet42: this.parentSet,
        childSet43: this.parentSet,
        childSet44: this.parentSet,
        childSet45: this.parentSet,
        childSet46: this.parentSet,
        childSet47: this.parentSet,
        childSet48: this.parentSet,
        childSet49: this.parentSet,
      })
    }
  }
}