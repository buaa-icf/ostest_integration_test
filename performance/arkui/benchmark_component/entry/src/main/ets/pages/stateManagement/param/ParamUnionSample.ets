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

const timeHelper: TimeHelper = new TimeHelper('ParamUnionSample')

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
      Text(`child value: ${this.childUnion}`)
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
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
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
      ChildParamUnionSample({
        childUnion: this.parentUnion,
        childUnion1: this.parentUnion,
        childUnion2: this.parentUnion,
        childUnion3: this.parentUnion,
        childUnion4: this.parentUnion,
        childUnion5: this.parentUnion,
        childUnion6: this.parentUnion,
        childUnion7: this.parentUnion,
        childUnion8: this.parentUnion,
        childUnion9: this.parentUnion,
        childUnion10: this.parentUnion,
        childUnion11: this.parentUnion,
        childUnion12: this.parentUnion,
        childUnion13: this.parentUnion,
        childUnion14: this.parentUnion,
        childUnion15: this.parentUnion,
        childUnion16: this.parentUnion,
        childUnion17: this.parentUnion,
        childUnion18: this.parentUnion,
        childUnion19: this.parentUnion,
        childUnion20: this.parentUnion,
        childUnion21: this.parentUnion,
        childUnion22: this.parentUnion,
        childUnion23: this.parentUnion,
        childUnion24: this.parentUnion,
        childUnion25: this.parentUnion,
        childUnion26: this.parentUnion,
        childUnion27: this.parentUnion,
        childUnion28: this.parentUnion,
        childUnion29: this.parentUnion,
        childUnion30: this.parentUnion,
        childUnion31: this.parentUnion,
        childUnion32: this.parentUnion,
        childUnion33: this.parentUnion,
        childUnion34: this.parentUnion,
        childUnion35: this.parentUnion,
        childUnion36: this.parentUnion,
        childUnion37: this.parentUnion,
        childUnion38: this.parentUnion,
        childUnion39: this.parentUnion,
        childUnion40: this.parentUnion,
        childUnion41: this.parentUnion,
        childUnion42: this.parentUnion,
        childUnion43: this.parentUnion,
        childUnion44: this.parentUnion,
        childUnion45: this.parentUnion,
        childUnion46: this.parentUnion,
        childUnion47: this.parentUnion,
        childUnion48: this.parentUnion,
        childUnion49: this.parentUnion,
        changeChildUnion: this.changeParentUnion.bind(this)
      })
    }
  }
}