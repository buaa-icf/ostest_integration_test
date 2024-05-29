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

const timeHelper: TimeHelper = new TimeHelper('TraceStringSample');

@ObservedV2
class Father {
  a = timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @Trace name: string = "Tom";
  @Trace name1: string = "Tom";
  @Trace name2: string = "Tom";
  @Trace name3: string = "Tom";
  @Trace name4: string = "Tom";
  @Trace name5: string = "Tom";
  @Trace name6: string = "Tom";
  @Trace name7: string = "Tom";
  @Trace name8: string = "Tom";
  @Trace name9: string = "Tom";
  @Trace name10: string = "Tom";
  @Trace name11: string = "Tom";
  @Trace name12: string = "Tom";
  @Trace name13: string = "Tom";
  @Trace name14: string = "Tom";
  @Trace name15: string = "Tom";
  @Trace name16: string = "Tom";
  @Trace name17: string = "Tom";
  @Trace name18: string = "Tom";
  @Trace name19: string = "Tom";
  @Trace name20: string = "Tom";
  @Trace name21: string = "Tom";
  @Trace name22: string = "Tom";
  @Trace name23: string = "Tom";
  @Trace name24: string = "Tom";
  @Trace name25: string = "Tom";
  @Trace name26: string = "Tom";
  @Trace name27: string = "Tom";
  @Trace name28: string = "Tom";
  @Trace name29: string = "Tom";
  @Trace name30: string = "Tom";
  @Trace name31: string = "Tom";
  @Trace name32: string = "Tom";
  @Trace name33: string = "Tom";
  @Trace name34: string = "Tom";
  @Trace name35: string = "Tom";
  @Trace name36: string = "Tom";
  @Trace name37: string = "Tom";
  @Trace name38: string = "Tom";
  @Trace name39: string = "Tom";
  @Trace name40: string = "Tom";
  @Trace name41: string = "Tom";
  @Trace name42: string = "Tom";
  @Trace name43: string = "Tom";
  @Trace name44: string = "Tom";
  @Trace name45: string = "Tom";
  @Trace name46: string = "Tom";
  @Trace name47: string = "Tom";
  @Trace name48: string = "Tom";
  @Trace name49: string = "Tom";
  b = timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))
}

let testData: Father = new Father()

@ComponentV2
struct ChildTraceStringSample {
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
struct TraceStringSample {

  build() {
    Column({ space: 15 }) {
      Text('TraceStringSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value:  ${testData.name}`)
      ChildTraceStringSample()
    }
  }
}
