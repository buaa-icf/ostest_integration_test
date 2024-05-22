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

const timeHelper: TimeHelper = new TimeHelper('ParamUnionSample')
let isType: boolean = true

@ComponentV2
struct ChildParamUnionSample {
  @Event changeChildUnion: (x: number) => void = (x: number) => {
  };
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childUnion: null | undefined | number = 0
  @Param childUnion1: null | undefined | number = 0
  @Param childUnion2: null | undefined | number = 0
  @Param childUnion3: null | undefined | number = 0
  @Param childUnion4: null | undefined | number = 0
  @Param childUnion5: null | undefined | number = 0
  @Param childUnion6: null | undefined | number = 0
  @Param childUnion7: null | undefined | number = 0
  @Param childUnion8: null | undefined | number = 0
  @Param childUnion9: null | undefined | number = 0
  @Param childUnion10: null | undefined | number = 0
  @Param childUnion11: null | undefined | number = 0
  @Param childUnion12: null | undefined | number = 0
  @Param childUnion13: null | undefined | number = 0
  @Param childUnion14: null | undefined | number = 0
  @Param childUnion15: null | undefined | number = 0
  @Param childUnion16: null | undefined | number = 0
  @Param childUnion17: null | undefined | number = 0
  @Param childUnion18: null | undefined | number = 0
  @Param childUnion19: null | undefined | number = 0
  @Param childUnion20: null | undefined | number = 0
  @Param childUnion21: null | undefined | number = 0
  @Param childUnion22: null | undefined | number = 0
  @Param childUnion23: null | undefined | number = 0
  @Param childUnion24: null | undefined | number = 0
  @Param childUnion25: null | undefined | number = 0
  @Param childUnion26: null | undefined | number = 0
  @Param childUnion27: null | undefined | number = 0
  @Param childUnion28: null | undefined | number = 0
  @Param childUnion29: null | undefined | number = 0
  @Param childUnion30: null | undefined | number = 0
  @Param childUnion31: null | undefined | number = 0
  @Param childUnion32: null | undefined | number = 0
  @Param childUnion33: null | undefined | number = 0
  @Param childUnion34: null | undefined | number = 0
  @Param childUnion35: null | undefined | number = 0
  @Param childUnion36: null | undefined | number = 0
  @Param childUnion37: null | undefined | number = 0
  @Param childUnion38: null | undefined | number = 0
  @Param childUnion39: null | undefined | number = 0
  @Param childUnion40: null | undefined | number = 0
  @Param childUnion41: null | undefined | number = 0
  @Param childUnion42: null | undefined | number = 0
  @Param childUnion43: null | undefined | number = 0
  @Param childUnion44: null | undefined | number = 0
  @Param childUnion45: null | undefined | number = 0
  @Param childUnion46: null | undefined | number = 0
  @Param childUnion47: null | undefined | number = 0
  @Param childUnion48: null | undefined | number = 0
  @Param childUnion49: null | undefined | number = 0
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildUnion(index % 2)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childUnion
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ? `child value: ${this.childUnion}` :
        `child value: ${this.childUnion}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childUnion
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
            this.changeChildUnion(index % 2)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamUnionSample {
  @Local parentUnion: null | undefined | number = 0
  changeParentUnion: (type: number) => void = (type: number) => {
    if (type == 0) {
      this.parentUnion = undefined
    } else if (type == 1) {
      this.parentUnion = null
    }
  };

  build() {
    Column({ space: 15 }) {
      Text('ParamUnionSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentUnion}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentUnion = undefined
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamUnionSample({ childUnion: this.parentUnion, changeChildUnion: this.changeParentUnion.bind(this) })
    }
  }
}