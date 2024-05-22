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

const timeHelper: TimeHelper = new TimeHelper('OnceMapSample')
let isType: boolean = true
@ComponentV2
struct ChildOnceMapSample {

  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childMap: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap1: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap2: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap3: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap4: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap5: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap6: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap7: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap8: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap9: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap10: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap11: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap12: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap13: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap14: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap15: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap16: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap17: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap18: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap19: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap20: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap21: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap22: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap23: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap24: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap25: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap26: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap27: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap28: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap29: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap30: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap31: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap32: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap33: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap34: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap35: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap36: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap37: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap38: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap39: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap40: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap41: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap42: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap43: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap44: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap45: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap46: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap47: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap48: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  @Once @Param childMap49: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childMap.get(index%2)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType,timeHelper) ? `child value: ${this.childMap.get(0)}` :
        `child value: ${this.childMap.get(0)}`)
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childMap.get(index%2)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceMapSample {
  @Local parentMap: Map<number,string> = new Map([[0, 'a'], [1, 'b'], [3, 'c']]);
  build() {
    Column({ space: 15 }) {
      Text('OnceMapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentMap.get(0)}`)
      ChildOnceMapSample({childMap:this.parentMap})
    }
  }
}