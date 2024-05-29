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

const timeHelper: TimeHelper = new TimeHelper('ParamArraySample')

@ComponentV2
struct ChildParamArraySample {
  @Event changeChildArray: (x: number) => void = (x: number) => {
  };
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childArray: Array<number> = numberArr
  @Param childArray1: Array<number> = numberArr
  @Param childArray2: Array<number> = numberArr
  @Param childArray3: Array<number> = numberArr
  @Param childArray4: Array<number> = numberArr
  @Param childArray5: Array<number> = numberArr
  @Param childArray6: Array<number> = numberArr
  @Param childArray7: Array<number> = numberArr
  @Param childArray8: Array<number> = numberArr
  @Param childArray9: Array<number> = numberArr
  @Param childArray10: Array<number> = numberArr
  @Param childArray11: Array<number> = numberArr
  @Param childArray12: Array<number> = numberArr
  @Param childArray13: Array<number> = numberArr
  @Param childArray14: Array<number> = numberArr
  @Param childArray15: Array<number> = numberArr
  @Param childArray16: Array<number> = numberArr
  @Param childArray17: Array<number> = numberArr
  @Param childArray18: Array<number> = numberArr
  @Param childArray19: Array<number> = numberArr
  @Param childArray20: Array<number> = numberArr
  @Param childArray21: Array<number> = numberArr
  @Param childArray22: Array<number> = numberArr
  @Param childArray23: Array<number> = numberArr
  @Param childArray24: Array<number> = numberArr
  @Param childArray25: Array<number> = numberArr
  @Param childArray26: Array<number> = numberArr
  @Param childArray27: Array<number> = numberArr
  @Param childArray28: Array<number> = numberArr
  @Param childArray29: Array<number> = numberArr
  @Param childArray30: Array<number> = numberArr
  @Param childArray31: Array<number> = numberArr
  @Param childArray32: Array<number> = numberArr
  @Param childArray33: Array<number> = numberArr
  @Param childArray34: Array<number> = numberArr
  @Param childArray35: Array<number> = numberArr
  @Param childArray36: Array<number> = numberArr
  @Param childArray37: Array<number> = numberArr
  @Param childArray38: Array<number> = numberArr
  @Param childArray39: Array<number> = numberArr
  @Param childArray40: Array<number> = numberArr
  @Param childArray41: Array<number> = numberArr
  @Param childArray42: Array<number> = numberArr
  @Param childArray43: Array<number> = numberArr
  @Param childArray44: Array<number> = numberArr
  @Param childArray45: Array<number> = numberArr
  @Param childArray46: Array<number> = numberArr
  @Param childArray47: Array<number> = numberArr
  @Param childArray48: Array<number> = numberArr
  @Param childArray49: Array<number> = numberArr
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildArray(0)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childArray[0]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childArray[0]}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childArray[0]
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Param的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.changeChildArray(0)
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
  changeParentArray: (type: number) => void = (type: number) => {
    if (type == 0) {
      this.parentArray[0] += 1
    }
  };

  build() {
    Column({ space: 15 }) {
      Text('ParamArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentArray[0]}`)
      ChildParamArraySample({
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
        changeChildArray: this.changeParentArray.bind(this)
      })
    }
  }
}