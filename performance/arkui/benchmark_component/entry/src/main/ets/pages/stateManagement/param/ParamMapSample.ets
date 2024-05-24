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

const timeHelper: TimeHelper = new TimeHelper('ParamMapSample')
let isType: boolean = true
@ComponentV2
struct ChildParamMapSample {

  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Param childMap: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap1: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap2: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap3: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap4: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap5: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap6: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap7: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap8: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap9: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap10: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap11: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap12: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap13: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap14: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap15: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap16: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap17: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap18: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap19: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap20: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap21: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap22: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap23: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap24: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap25: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap26: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap27: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap28: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap29: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap30: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap31: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap32: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap33: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap34: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap35: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap36: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap37: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap38: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap39: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap40: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap41: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap42: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap43: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap44: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap45: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap46: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap47: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap48: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Param childMap49: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.childMap.set(index,index.toString())
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childMap.get(index)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childMap.get(0)}` :
        `child value: ${this.childMap.get(0)}`)
      Button('child click: 读@Param的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childMap.get(index)
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
            this.childMap.set(index,index.toString())
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct ParamMapSample {
  @Local parentMap: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  build() {
    Column({ space: 15 }) {
      Text('ParamMapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentMap.get(0)}`)
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentMap=new Map([[0, 'apple'], [1, 'banana'], [3, 'cat']])
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      ChildParamMapSample({childMap:this.parentMap})
    }
  }
}