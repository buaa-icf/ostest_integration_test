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
import { numberArr } from '../ClassModel';

const timeHelper: TimeHelper = new TimeHelper('OnceArraySample')

@ComponentV2
struct ChildOnceArraySample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childArray: Array<number> = numberArr
  @Once @Param childArray1: Array<number> = numberArr
  @Once @Param childArray2: Array<number> = numberArr
  @Once @Param childArray3: Array<number> = numberArr
  @Once @Param childArray4: Array<number> = numberArr
  @Once @Param childArray5: Array<number> = numberArr
  @Once @Param childArray6: Array<number> = numberArr
  @Once @Param childArray7: Array<number> = numberArr
  @Once @Param childArray8: Array<number> = numberArr
  @Once @Param childArray9: Array<number> = numberArr
  @Once @Param childArray10: Array<number> = numberArr
  @Once @Param childArray11: Array<number> = numberArr
  @Once @Param childArray12: Array<number> = numberArr
  @Once @Param childArray13: Array<number> = numberArr
  @Once @Param childArray14: Array<number> = numberArr
  @Once @Param childArray15: Array<number> = numberArr
  @Once @Param childArray16: Array<number> = numberArr
  @Once @Param childArray17: Array<number> = numberArr
  @Once @Param childArray18: Array<number> = numberArr
  @Once @Param childArray19: Array<number> = numberArr
  @Once @Param childArray20: Array<number> = numberArr
  @Once @Param childArray21: Array<number> = numberArr
  @Once @Param childArray22: Array<number> = numberArr
  @Once @Param childArray23: Array<number> = numberArr
  @Once @Param childArray24: Array<number> = numberArr
  @Once @Param childArray25: Array<number> = numberArr
  @Once @Param childArray26: Array<number> = numberArr
  @Once @Param childArray27: Array<number> = numberArr
  @Once @Param childArray28: Array<number> = numberArr
  @Once @Param childArray29: Array<number> = numberArr
  @Once @Param childArray30: Array<number> = numberArr
  @Once @Param childArray31: Array<number> = numberArr
  @Once @Param childArray32: Array<number> = numberArr
  @Once @Param childArray33: Array<number> = numberArr
  @Once @Param childArray34: Array<number> = numberArr
  @Once @Param childArray35: Array<number> = numberArr
  @Once @Param childArray36: Array<number> = numberArr
  @Once @Param childArray37: Array<number> = numberArr
  @Once @Param childArray38: Array<number> = numberArr
  @Once @Param childArray39: Array<number> = numberArr
  @Once @Param childArray40: Array<number> = numberArr
  @Once @Param childArray41: Array<number> = numberArr
  @Once @Param childArray42: Array<number> = numberArr
  @Once @Param childArray43: Array<number> = numberArr
  @Once @Param childArray44: Array<number> = numberArr
  @Once @Param childArray45: Array<number> = numberArr
  @Once @Param childArray46: Array<number> = numberArr
  @Once @Param childArray47: Array<number> = numberArr
  @Once @Param childArray48: Array<number> = numberArr
  @Once @Param childArray49: Array<number> = numberArr
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childArray[0]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childArray[0]}`)
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childArray[0]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceArraySample {
  @Local parentArray: Array<number> = [5, 4, 3];

  build() {
    Column({ space: 15 }) {
      Text('OnceArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentArray[0]}`)
      ChildOnceArraySample({
        childArray: this.parentArray,
        childArray1: this.parentArray,
        childArray2: this.parentArray,
        childArray3: this.parentArray,
        childArray4: this.parentArray,
        childArray5: this.parentArray,
        childArray6: this.parentArray,
        childArray7: this.parentArray,
        childArray8: this.parentArray,
        childArray9: this.parentArray,
        childArray10: this.parentArray,
        childArray11: this.parentArray,
        childArray12: this.parentArray,
        childArray13: this.parentArray,
        childArray14: this.parentArray,
        childArray15: this.parentArray,
        childArray16: this.parentArray,
        childArray17: this.parentArray,
        childArray18: this.parentArray,
        childArray19: this.parentArray,
        childArray20: this.parentArray,
        childArray21: this.parentArray,
        childArray22: this.parentArray,
        childArray23: this.parentArray,
        childArray24: this.parentArray,
        childArray25: this.parentArray,
        childArray26: this.parentArray,
        childArray27: this.parentArray,
        childArray28: this.parentArray,
        childArray29: this.parentArray,
        childArray30: this.parentArray,
        childArray31: this.parentArray,
        childArray32: this.parentArray,
        childArray33: this.parentArray,
        childArray34: this.parentArray,
        childArray35: this.parentArray,
        childArray36: this.parentArray,
        childArray37: this.parentArray,
        childArray38: this.parentArray,
        childArray39: this.parentArray,
        childArray40: this.parentArray,
        childArray41: this.parentArray,
        childArray42: this.parentArray,
        childArray43: this.parentArray,
        childArray44: this.parentArray,
        childArray45: this.parentArray,
        childArray46: this.parentArray,
        childArray47: this.parentArray,
        childArray48: this.parentArray,
        childArray49: this.parentArray,
      })
    }
  }
}