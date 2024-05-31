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

const timeHelper: TimeHelper = new TimeHelper('TraceObjectSample');

@ObservedV2
class Father {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace name: Object = "Tom";
  @Trace name1: Object = "Tom";
  @Trace name2: Object = "Tom";
  @Trace name3: Object = "Tom";
  @Trace name4: Object = "Tom";
  @Trace name5: Object = "Tom";
  @Trace name6: Object = "Tom";
  @Trace name7: Object = "Tom";
  @Trace name8: Object = "Tom";
  @Trace name9: Object = "Tom";
  @Trace name10: Object = "Tom";
  @Trace name11: Object = "Tom";
  @Trace name12: Object = "Tom";
  @Trace name13: Object = "Tom";
  @Trace name14: Object = "Tom";
  @Trace name15: Object = "Tom";
  @Trace name16: Object = "Tom";
  @Trace name17: Object = "Tom";
  @Trace name18: Object = "Tom";
  @Trace name19: Object = "Tom";
  @Trace name20: Object = "Tom";
  @Trace name21: Object = "Tom";
  @Trace name22: Object = "Tom";
  @Trace name23: Object = "Tom";
  @Trace name24: Object = "Tom";
  @Trace name25: Object = "Tom";
  @Trace name26: Object = "Tom";
  @Trace name27: Object = "Tom";
  @Trace name28: Object = "Tom";
  @Trace name29: Object = "Tom";
  @Trace name30: Object = "Tom";
  @Trace name31: Object = "Tom";
  @Trace name32: Object = "Tom";
  @Trace name33: Object = "Tom";
  @Trace name34: Object = "Tom";
  @Trace name35: Object = "Tom";
  @Trace name36: Object = "Tom";
  @Trace name37: Object = "Tom";
  @Trace name38: Object = "Tom";
  @Trace name39: Object = "Tom";
  @Trace name40: Object = "Tom";
  @Trace name41: Object = "Tom";
  @Trace name42: Object = "Tom";
  @Trace name43: Object = "Tom";
  @Trace name44: Object = "Tom";
  @Trace name45: Object = "Tom";
  @Trace name46: Object = "Tom";
  @Trace name47: Object = "Tom";
  @Trace name48: Object = "Tom";
  @Trace name49: Object = "Tom";
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let testData: Father = new Father()

@ComponentV2
struct ChildTraceObjectSample {
  @Local isTypeState: boolean = true

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      testData.name = `not bind UI:世界，你好` + (index + 1)
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let value = testData.name
    }
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${testData.name}`)
      Button('child click: 读Trace的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
            let value = testData.name
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
        })
      Button('child click: 写Trace的耗时')
        .id('setStateTimeTaken')
        .onClick(() => {
          this.isTypeState = !this.isTypeState
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
          for (let index = ArrEntity.STATE_LOOP; index > 0; index--) {
            testData.name = `child: setStateTimeTaken` + (index + 1)
          }
          timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
        })
    }
  }
}

@Entry
@ComponentV2
struct TraceObjectSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceObjectSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value:  ${testData.name}`)
      ChildTraceObjectSample()
    }
  }
}
