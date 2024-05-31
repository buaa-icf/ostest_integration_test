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

const timeHelper: TimeHelper = new TimeHelper('OnceMapSample')

@ComponentV2
struct ChildOnceMapSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Once @Param childMap: Map<number, string> = new Map();
  @Once @Param childMap1: Map<number, string> = new Map();
  @Once @Param childMap2: Map<number, string> = new Map();
  @Once @Param childMap3: Map<number, string> = new Map();
  @Once @Param childMap4: Map<number, string> = new Map();
  @Once @Param childMap5: Map<number, string> = new Map();
  @Once @Param childMap6: Map<number, string> = new Map();
  @Once @Param childMap7: Map<number, string> = new Map();
  @Once @Param childMap8: Map<number, string> = new Map();
  @Once @Param childMap9: Map<number, string> = new Map();
  @Once @Param childMap10: Map<number, string> = new Map();
  @Once @Param childMap11: Map<number, string> = new Map();
  @Once @Param childMap12: Map<number, string> = new Map();
  @Once @Param childMap13: Map<number, string> = new Map();
  @Once @Param childMap14: Map<number, string> = new Map();
  @Once @Param childMap15: Map<number, string> = new Map();
  @Once @Param childMap16: Map<number, string> = new Map();
  @Once @Param childMap17: Map<number, string> = new Map();
  @Once @Param childMap18: Map<number, string> = new Map();
  @Once @Param childMap19: Map<number, string> = new Map();
  @Once @Param childMap20: Map<number, string> = new Map();
  @Once @Param childMap21: Map<number, string> = new Map();
  @Once @Param childMap22: Map<number, string> = new Map();
  @Once @Param childMap23: Map<number, string> = new Map();
  @Once @Param childMap24: Map<number, string> = new Map();
  @Once @Param childMap25: Map<number, string> = new Map();
  @Once @Param childMap26: Map<number, string> = new Map();
  @Once @Param childMap27: Map<number, string> = new Map();
  @Once @Param childMap28: Map<number, string> = new Map();
  @Once @Param childMap29: Map<number, string> = new Map();
  @Once @Param childMap30: Map<number, string> = new Map();
  @Once @Param childMap31: Map<number, string> = new Map();
  @Once @Param childMap32: Map<number, string> = new Map();
  @Once @Param childMap33: Map<number, string> = new Map();
  @Once @Param childMap34: Map<number, string> = new Map();
  @Once @Param childMap35: Map<number, string> = new Map();
  @Once @Param childMap36: Map<number, string> = new Map();
  @Once @Param childMap37: Map<number, string> = new Map();
  @Once @Param childMap38: Map<number, string> = new Map();
  @Once @Param childMap39: Map<number, string> = new Map();
  @Once @Param childMap40: Map<number, string> = new Map();
  @Once @Param childMap41: Map<number, string> = new Map();
  @Once @Param childMap42: Map<number, string> = new Map();
  @Once @Param childMap43: Map<number, string> = new Map();
  @Once @Param childMap44: Map<number, string> = new Map();
  @Once @Param childMap45: Map<number, string> = new Map();
  @Once @Param childMap46: Map<number, string> = new Map();
  @Once @Param childMap47: Map<number, string> = new Map();
  @Once @Param childMap48: Map<number, string> = new Map();
  @Once @Param childMap49: Map<number, string> = new Map();
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.childMap.get(index % 3)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.childMap.get(0)}`)
      Button('child click: 读@Once的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = this.childMap.get(index % 3)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
    }
  }
}


@Entry
@ComponentV2
struct OnceMapSample {
  @Local parentMap: Map<number, string> = new Map([[0, 'd'], [1, 'e'], [2, 'f']]);

  build() {
    Column({ space: 15 }) {
      Text('OnceMapSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.parentMap.get(0)}`)
      ChildOnceMapSample({
        childMap: this.parentMap,
        childMap1: this.parentMap,
        childMap2: this.parentMap,
        childMap3: this.parentMap,
        childMap4: this.parentMap,
        childMap5: this.parentMap,
        childMap6: this.parentMap,
        childMap7: this.parentMap,
        childMap8: this.parentMap,
        childMap9: this.parentMap,
        childMap10: this.parentMap,
        childMap11: this.parentMap,
        childMap12: this.parentMap,
        childMap13: this.parentMap,
        childMap14: this.parentMap,
        childMap15: this.parentMap,
        childMap16: this.parentMap,
        childMap17: this.parentMap,
        childMap18: this.parentMap,
        childMap19: this.parentMap,
        childMap20: this.parentMap,
        childMap21: this.parentMap,
        childMap22: this.parentMap,
        childMap23: this.parentMap,
        childMap24: this.parentMap,
        childMap25: this.parentMap,
        childMap26: this.parentMap,
        childMap27: this.parentMap,
        childMap28: this.parentMap,
        childMap29: this.parentMap,
        childMap30: this.parentMap,
        childMap31: this.parentMap,
        childMap32: this.parentMap,
        childMap33: this.parentMap,
        childMap34: this.parentMap,
        childMap35: this.parentMap,
        childMap36: this.parentMap,
        childMap37: this.parentMap,
        childMap38: this.parentMap,
        childMap39: this.parentMap,
        childMap40: this.parentMap,
        childMap41: this.parentMap,
        childMap42: this.parentMap,
        childMap43: this.parentMap,
        childMap44: this.parentMap,
        childMap45: this.parentMap,
        childMap46: this.parentMap,
        childMap47: this.parentMap,
        childMap48: this.parentMap,
        childMap49: this.parentMap,
      })
    }
  }
}