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

const timeHelper: TimeHelper = new TimeHelper('OnceDateSample')
let isType: boolean = true
@ComponentV2
struct ChildOnceDateSample {
  @Event changeChildDate:(x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childDate: Date = new Date('2021-08-08')
  @Once @Param childDate1: Date = new Date('2021-08-08')
  @Once @Param childDate2: Date = new Date('2021-08-08')
  @Once @Param childDate3: Date = new Date('2021-08-08')
  @Once @Param childDate4: Date = new Date('2021-08-08')
  @Once @Param childDate5: Date = new Date('2021-08-08')
  @Once @Param childDate6: Date = new Date('2021-08-08')
  @Once @Param childDate7: Date = new Date('2021-08-08')
  @Once @Param childDate8: Date = new Date('2021-08-08')
  @Once @Param childDate9: Date = new Date('2021-08-08')
  @Once @Param childDate10: Date = new Date('2021-08-08')
  @Once @Param childDate11: Date = new Date('2021-08-08')
  @Once @Param childDate12: Date = new Date('2021-08-08')
  @Once @Param childDate13: Date = new Date('2021-08-08')
  @Once @Param childDate14: Date = new Date('2021-08-08')
  @Once @Param childDate15: Date = new Date('2021-08-08')
  @Once @Param childDate16: Date = new Date('2021-08-08')
  @Once @Param childDate17: Date = new Date('2021-08-08')
  @Once @Param childDate18: Date = new Date('2021-08-08')
  @Once @Param childDate19: Date = new Date('2021-08-08')
  @Once @Param childDate20: Date = new Date('2021-08-08')
  @Once @Param childDate21: Date = new Date('2021-08-08')
  @Once @Param childDate22: Date = new Date('2021-08-08')
  @Once @Param childDate23: Date = new Date('2021-08-08')
  @Once @Param childDate24: Date = new Date('2021-08-08')
  @Once @Param childDate25: Date = new Date('2021-08-08')
  @Once @Param childDate26: Date = new Date('2021-08-08')
  @Once @Param childDate27: Date = new Date('2021-08-08')
  @Once @Param childDate28: Date = new Date('2021-08-08')
  @Once @Param childDate29: Date = new Date('2021-08-08')
  @Once @Param childDate30: Date = new Date('2021-08-08')
  @Once @Param childDate31: Date = new Date('2021-08-08')
  @Once @Param childDate32: Date = new Date('2021-08-08')
  @Once @Param childDate33: Date = new Date('2021-08-08')
  @Once @Param childDate34: Date = new Date('2021-08-08')
  @Once @Param childDate35: Date = new Date('2021-08-08')
  @Once @Param childDate36: Date = new Date('2021-08-08')
  @Once @Param childDate37: Date = new Date('2021-08-08')
  @Once @Param childDate38: Date = new Date('2021-08-08')
  @Once @Param childDate39: Date = new Date('2021-08-08')
  @Once @Param childDate40: Date = new Date('2021-08-08')
  @Once @Param childDate41: Date = new Date('2021-08-08')
  @Once @Param childDate42: Date = new Date('2021-08-08')
  @Once @Param childDate43: Date = new Date('2021-08-08')
  @Once @Param childDate44: Date = new Date('2021-08-08')
  @Once @Param childDate45: Date = new Date('2021-08-08')
  @Once @Param childDate46: Date = new Date('2021-08-08')
  @Once @Param childDate47: Date = new Date('2021-08-08')
  @Once @Param childDate48: Date = new Date('2021-08-08')
  @Once @Param childDate49: Date = new Date('2021-08-08')
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
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childDate.toTimeString()}` :
        `child value: ${this.childDate.toTimeString()}`)
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
  @Local parentDate: Date=new Date('2021-08-08');
  changeParentDate : (type: number) => void = (type: number) => {
    if(type==0){
      this.parentDate.setTime(this.parentDate.getTime() + 100 * 60 * 60 * 1000)
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('OnceDateSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentDate.toTimeString()}`)
      ChildOnceDateSample({childDate:this.parentDate,changeChildDate:this.changeParentDate.bind(this)})
    }
  }
}