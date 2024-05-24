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

const timeHelper: TimeHelper = new TimeHelper('OnceArraySample')
let isType: boolean = true
@ComponentV2
struct ChildOnceArraySample {
  @Event changeChildArray : (x: number) => void = (x: number) => {};
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childArray: Array<number> = [1,2,3,4,5]
  @Once @Param childArray1: Array<number> = [1,2,3,4,5]
  @Once @Param childArray2: Array<number> = [1,2,3,4,5]
  @Once @Param childArray3: Array<number> = [1,2,3,4,5]
  @Once @Param childArray4: Array<number> = [1,2,3,4,5]
  @Once @Param childArray5: Array<number> = [1,2,3,4,5]
  @Once @Param childArray6: Array<number> = [1,2,3,4,5]
  @Once @Param childArray7: Array<number> = [1,2,3,4,5]
  @Once @Param childArray8: Array<number> = [1,2,3,4,5]
  @Once @Param childArray9: Array<number> = [1,2,3,4,5]
  @Once @Param childArray10: Array<number> = [1,2,3,4,5]
  @Once @Param childArray11: Array<number> = [1,2,3,4,5]
  @Once @Param childArray12: Array<number> = [1,2,3,4,5]
  @Once @Param childArray13: Array<number> = [1,2,3,4,5]
  @Once @Param childArray14: Array<number> = [1,2,3,4,5]
  @Once @Param childArray15: Array<number> = [1,2,3,4,5]
  @Once @Param childArray16: Array<number> = [1,2,3,4,5]
  @Once @Param childArray17: Array<number> = [1,2,3,4,5]
  @Once @Param childArray18: Array<number> = [1,2,3,4,5]
  @Once @Param childArray19: Array<number> = [1,2,3,4,5]
  @Once @Param childArray20: Array<number> = [1,2,3,4,5]
  @Once @Param childArray21: Array<number> = [1,2,3,4,5]
  @Once @Param childArray22: Array<number> = [1,2,3,4,5]
  @Once @Param childArray23: Array<number> = [1,2,3,4,5]
  @Once @Param childArray24: Array<number> = [1,2,3,4,5]
  @Once @Param childArray25: Array<number> = [1,2,3,4,5]
  @Once @Param childArray26: Array<number> = [1,2,3,4,5]
  @Once @Param childArray27: Array<number> = [1,2,3,4,5]
  @Once @Param childArray28: Array<number> = [1,2,3,4,5]
  @Once @Param childArray29: Array<number> = [1,2,3,4,5]
  @Once @Param childArray30: Array<number> = [1,2,3,4,5]
  @Once @Param childArray31: Array<number> = [1,2,3,4,5]
  @Once @Param childArray32: Array<number> = [1,2,3,4,5]
  @Once @Param childArray33: Array<number> = [1,2,3,4,5]
  @Once @Param childArray34: Array<number> = [1,2,3,4,5]
  @Once @Param childArray35: Array<number> = [1,2,3,4,5]
  @Once @Param childArray36: Array<number> = [1,2,3,4,5]
  @Once @Param childArray37: Array<number> = [1,2,3,4,5]
  @Once @Param childArray38: Array<number> = [1,2,3,4,5]
  @Once @Param childArray39: Array<number> = [1,2,3,4,5]
  @Once @Param childArray40: Array<number> = [1,2,3,4,5]
  @Once @Param childArray41: Array<number> = [1,2,3,4,5]
  @Once @Param childArray42: Array<number> = [1,2,3,4,5]
  @Once @Param childArray43: Array<number> = [1,2,3,4,5]
  @Once @Param childArray44: Array<number> = [1,2,3,4,5]
  @Once @Param childArray45: Array<number> = [1,2,3,4,5]
  @Once @Param childArray46: Array<number> = [1,2,3,4,5]
  @Once @Param childArray47: Array<number> = [1,2,3,4,5]
  @Once @Param childArray48: Array<number> = [1,2,3,4,5]
  @Once @Param childArray49: Array<number> = [1,2,3,4,5]
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.changeChildArray(index%2)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childArray[0]}` :
        `child value: ${this.childArray[0]}`)

      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.changeChildArray(index%2)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceArraySample {
  @Local parentArray: Array<number> = [5,4,3];
  changeParentArray : (type: number) => void = (type: number) => {
    if(type==0){
      this.parentArray = [999,888,777]
    }else if(type==1){
      this.parentArray = [123,456,789]
    }
  };
  build() {
    Column({ space: 15 }) {
      Text('OnceArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentArray[0]}`)
      ChildOnceArraySample({childArray:this.parentArray,changeChildArray:this.changeParentArray.bind(this)})
    }
  }
}