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

const timeHelper: TimeHelper = new TimeHelper('TraceBooleanSample');
let isType: boolean = true

let nextId: number = 0;

@ObservedV2
class Father {
  @Trace a: boolean = true;
}

@Component
struct ChildTraceBooleanSample {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  Arr : Father = new Father()
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  tmpArr: boolean[] = [false, true]

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.Arr.a = this.tmpArr[index % 2]
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = this.Arr.a
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(StateUtils.isType(isType, timeHelper) ?`child value: ${this.Arr.a}`:`child value: ${this.Arr.a}`)
      Button('child click: 读@Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          let value = this.Arr.a
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写@Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          let value = !this.Arr.a
          isType = true
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.Arr.a = value
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct TraceBooleanSample {
  parentBoolean: Father = new Father();

  build() {
    Column({ space: 15 }) {
      Text('TraceBooleanSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(this.parentBoolean.a ? `parent value: ${this.parentBoolean.a}` : `parent value: ${this.parentBoolean.a}`)
      // 父组件的数据源的修改会同步给子组件
      Button('parent click')
        .id('changeUITimeTaken')
        .onClick(() => {
          isType = false
          this.parentBoolean.a = !this.parentBoolean.a
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })

      ChildTraceBooleanSample({ Arr : this.parentBoolean })
    }
  }
}
