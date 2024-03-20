/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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


@Component
struct ChildConsumeBooleanArrSample {
  timeHelper: TimeHelper = new TimeHelper('ConsumeBooleanArrSample');
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Consume testData: boolean[]
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
  isType: boolean = true

  aboutToAppear(): void {
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData[0] = true
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.testData
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({space: 15}) {
      Text('ConsumeBooleanArrSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({bottom: 50, top: 50})
      Text(StateUtils.isType(this.isType, this.timeHelper) ? `child value: ${this.testData[0].toString()}` : `child value: ${this.testData[0].toString()}`)
        .id('changeUITimeTaken')
        .onClick(()=>{
          this.isType = false
          this.testData[0] = !this.testData[0]
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.UI_CHANGE, true))
        })
      // 父组件的数据源的修改会同步给子组件
      Button('读@Consume的耗时')
        .id('getStateTimeTaken')
        .onClick(()=>{
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.testData
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('写@Consume的耗时')
        .id('setStateTimeTaken')
        .onClick(()=>{
          this.isType = true
          this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          this.testData[0] = !this.testData[0]
          this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@Component
struct ConsumeBooleanArrSample {
  @Provide testData: boolean[] = [false,true,false,true,false,true,false,true,false,true,false,true];
  build() {
    Column({space: 15}) {
      ChildConsumeBooleanArrSample()
      Text(`parent value: ${this.testData[0]}`)
    }
  }


}