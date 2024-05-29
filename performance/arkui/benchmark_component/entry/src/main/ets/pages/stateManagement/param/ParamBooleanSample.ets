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

const timeHelper: TimeHelper = new TimeHelper('ParamBooleanSample')

@ComponentV2
struct ChildParamBooleanSample {
  @Event changeChildBoolean: (x: number) => void = (x: number) => {
  };
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childBoolean: boolean = true;
  @Param childBoolean1: boolean = true;
  @Param childBoolean2: boolean = true;
  @Param childBoolean3: boolean = true;
  @Param childBoolean4: boolean = true;
  @Param childBoolean5: boolean = true;
  @Param childBoolean6: boolean = true;
  @Param childBoolean7: boolean = true;
  @Param childBoolean8: boolean = true;
  @Param childBoolean9: boolean = true;
  @Param childBoolean10: boolean = true;
  @Param childBoolean11: boolean = true;
  @Param childBoolean12: boolean = true;
  @Param childBoolean13: boolean = true;
  @Param childBoolean14: boolean = true;
  @Param childBoolean15: boolean = true;
  @Param childBoolean16: boolean = true;
  @Param childBoolean17: boolean = true;
  @Param childBoolean18: boolean = true;
  @Param childBoolean19: boolean = true;
  @Param childBoolean20: boolean = true;
  @Param childBoolean21: boolean = true;
  @Param childBoolean22: boolean = true;
  @Param childBoolean23: boolean = true;
  @Param childBoolean24: boolean = true;
  @Param childBoolean25: boolean = true;
  @Param childBoolean26: boolean = true;
  @Param childBoolean27: boolean = true;
  @Param childBoolean28: boolean = true;
  @Param childBoolean29: boolean = true;
  @Param childBoolean30: boolean = true;
  @Param childBoolean31: boolean = true;
  @Param childBoolean32: boolean = true;
  @Param childBoolean33: boolean = true;
  @Param childBoolean34: boolean = true;
  @Param childBoolean35: boolean = true;
  @Param childBoolean36: boolean = true;
  @Param childBoolean37: boolean = true;
  @Param childBoolean38: boolean = true;
  @Param childBoolean39: boolean = true;
  @Param childBoolean40: boolean = true;
  @Param childBoolean41: boolean = true;
  @Param childBoolean42: boolean = true;
  @Param childBoolean43: boolean = true;
  @Param childBoolean44: boolean = true;
  @Param childBoolean45: boolean = true;
  @Param childBoolean46: boolean = true;
  @Param childBoolean47: boolean = true;
  @Param childBoolean48: boolean = true;
  @Param childBoolean49: boolean = true;
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    this.changeChildBoolean(0)
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.changeChildBoolean(0)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childBoolean
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childBoolean}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childBoolean
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Param的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            this.changeChildBoolean(0)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamBooleanSample {
  @Local parentBoolean: boolean = true;
  changeParentBoolean: (type: number) => void = (type: number) => {
    if (type == 0) {
      this.parentBoolean = !this.parentBoolean
    }
  };

  build() {
    Column({ space: 15 }) {
      Text('ParamBooleanSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentBoolean}`)
      ChildParamBooleanSample({
        childBoolean: this.parentBoolean,
        childBoolean1: this.parentBoolean,
        childBoolean2: this.parentBoolean,
        childBoolean3: this.parentBoolean,
        childBoolean4: this.parentBoolean,
        childBoolean5: this.parentBoolean,
        childBoolean6: this.parentBoolean,
        childBoolean7: this.parentBoolean,
        childBoolean8: this.parentBoolean,
        childBoolean9: this.parentBoolean,
        childBoolean10: this.parentBoolean,
        childBoolean11: this.parentBoolean,
        childBoolean12: this.parentBoolean,
        childBoolean13: this.parentBoolean,
        childBoolean14: this.parentBoolean,
        childBoolean15: this.parentBoolean,
        childBoolean16: this.parentBoolean,
        childBoolean17: this.parentBoolean,
        childBoolean18: this.parentBoolean,
        childBoolean19: this.parentBoolean,
        childBoolean20: this.parentBoolean,
        childBoolean21: this.parentBoolean,
        childBoolean22: this.parentBoolean,
        childBoolean23: this.parentBoolean,
        childBoolean24: this.parentBoolean,
        childBoolean25: this.parentBoolean,
        childBoolean26: this.parentBoolean,
        childBoolean27: this.parentBoolean,
        childBoolean28: this.parentBoolean,
        childBoolean29: this.parentBoolean,
        childBoolean30: this.parentBoolean,
        childBoolean31: this.parentBoolean,
        childBoolean32: this.parentBoolean,
        childBoolean33: this.parentBoolean,
        childBoolean34: this.parentBoolean,
        childBoolean35: this.parentBoolean,
        childBoolean36: this.parentBoolean,
        childBoolean37: this.parentBoolean,
        childBoolean38: this.parentBoolean,
        childBoolean39: this.parentBoolean,
        childBoolean40: this.parentBoolean,
        childBoolean41: this.parentBoolean,
        childBoolean42: this.parentBoolean,
        childBoolean43: this.parentBoolean,
        childBoolean44: this.parentBoolean,
        childBoolean45: this.parentBoolean,
        childBoolean46: this.parentBoolean,
        childBoolean47: this.parentBoolean,
        childBoolean48: this.parentBoolean,
        childBoolean49: this.parentBoolean,
        changeChildBoolean: this.changeParentBoolean.bind(this)
      })
    }
  }
}