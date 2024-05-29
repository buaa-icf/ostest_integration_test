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

const timeHelper: TimeHelper = new TimeHelper('OnceDateSample')

@ComponentV2
struct ChildOnceDateSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childDate: Date = new Date()
  @Once @Param childDate1: Date = new Date()
  @Once @Param childDate2: Date = new Date()
  @Once @Param childDate3: Date = new Date()
  @Once @Param childDate4: Date = new Date()
  @Once @Param childDate5: Date = new Date()
  @Once @Param childDate6: Date = new Date()
  @Once @Param childDate7: Date = new Date()
  @Once @Param childDate8: Date = new Date()
  @Once @Param childDate9: Date = new Date()
  @Once @Param childDate10: Date = new Date()
  @Once @Param childDate11: Date = new Date()
  @Once @Param childDate12: Date = new Date()
  @Once @Param childDate13: Date = new Date()
  @Once @Param childDate14: Date = new Date()
  @Once @Param childDate15: Date = new Date()
  @Once @Param childDate16: Date = new Date()
  @Once @Param childDate17: Date = new Date()
  @Once @Param childDate18: Date = new Date()
  @Once @Param childDate19: Date = new Date()
  @Once @Param childDate20: Date = new Date()
  @Once @Param childDate21: Date = new Date()
  @Once @Param childDate22: Date = new Date()
  @Once @Param childDate23: Date = new Date()
  @Once @Param childDate24: Date = new Date()
  @Once @Param childDate25: Date = new Date()
  @Once @Param childDate26: Date = new Date()
  @Once @Param childDate27: Date = new Date()
  @Once @Param childDate28: Date = new Date()
  @Once @Param childDate29: Date = new Date()
  @Once @Param childDate30: Date = new Date()
  @Once @Param childDate31: Date = new Date()
  @Once @Param childDate32: Date = new Date()
  @Once @Param childDate33: Date = new Date()
  @Once @Param childDate34: Date = new Date()
  @Once @Param childDate35: Date = new Date()
  @Once @Param childDate36: Date = new Date()
  @Once @Param childDate37: Date = new Date()
  @Once @Param childDate38: Date = new Date()
  @Once @Param childDate39: Date = new Date()
  @Once @Param childDate40: Date = new Date()
  @Once @Param childDate41: Date = new Date()
  @Once @Param childDate42: Date = new Date()
  @Once @Param childDate43: Date = new Date()
  @Once @Param childDate44: Date = new Date()
  @Once @Param childDate45: Date = new Date()
  @Once @Param childDate46: Date = new Date()
  @Once @Param childDate47: Date = new Date()
  @Once @Param childDate48: Date = new Date()
  @Once @Param childDate49: Date = new Date()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childDate.getTime()
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childDate.toTimeString()}`)
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childDate.getTime()
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceDateSample {
  @Local parentDate: Date = new Date('2021-08-08');

  build() {
    Column({ space: 15 }) {
      Text('OnceDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentDate.toTimeString()}`)
      ChildOnceDateSample({
        childDate: this.parentDate,
        childDate1: this.parentDate,
        childDate2: this.parentDate,
        childDate3: this.parentDate,
        childDate4: this.parentDate,
        childDate5: this.parentDate,
        childDate6: this.parentDate,
        childDate7: this.parentDate,
        childDate8: this.parentDate,
        childDate9: this.parentDate,
        childDate10: this.parentDate,
        childDate11: this.parentDate,
        childDate12: this.parentDate,
        childDate13: this.parentDate,
        childDate14: this.parentDate,
        childDate15: this.parentDate,
        childDate16: this.parentDate,
        childDate17: this.parentDate,
        childDate18: this.parentDate,
        childDate19: this.parentDate,
        childDate20: this.parentDate,
        childDate21: this.parentDate,
        childDate22: this.parentDate,
        childDate23: this.parentDate,
        childDate24: this.parentDate,
        childDate25: this.parentDate,
        childDate26: this.parentDate,
        childDate27: this.parentDate,
        childDate28: this.parentDate,
        childDate29: this.parentDate,
        childDate30: this.parentDate,
        childDate31: this.parentDate,
        childDate32: this.parentDate,
        childDate33: this.parentDate,
        childDate34: this.parentDate,
        childDate35: this.parentDate,
        childDate36: this.parentDate,
        childDate37: this.parentDate,
        childDate38: this.parentDate,
        childDate39: this.parentDate,
        childDate40: this.parentDate,
        childDate41: this.parentDate,
        childDate42: this.parentDate,
        childDate43: this.parentDate,
        childDate44: this.parentDate,
        childDate45: this.parentDate,
        childDate46: this.parentDate,
        childDate47: this.parentDate,
        childDate48: this.parentDate,
        childDate49: this.parentDate,
      })
    }
  }
}