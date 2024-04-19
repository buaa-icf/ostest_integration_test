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

class TrackClassModel {
  public value: string;
  public value1: number;
  public value2: boolean;
  public value3: ESObject;
  public value4: string[];
  @Track public value5: number[];
  public value6: boolean[];
  public value7: ESObject[];
  public value8: string;
  public value9: number;
  public value10: boolean;
  public value11: ESObject;
  public value12: string[];
  public value13: number[];
  public value14: boolean[];
  public value15: ESObject[];
  public value16: string;
  public value17: number;
  public value18: boolean;
  public value19: ESObject;

  constructor(value: string, value1: number, value2: boolean, value3: ESObject, value4: string[], value5: number[],
              value6: boolean[], value7: ESObject[], value8: string, value9: number, value10: boolean,
              value11: ESObject, value12: string[], value13: number[], value14: boolean[], value15: ESObject[],
              value16: string, value17: number, value18: boolean, value19: ESObject) {
    this.value = value;
    this.value1 = value1;
    this.value2 = value2;
    this.value3 = value3;
    this.value4 = value4;
    this.value5 = value5;
    this.value6 = value6;
    this.value7 = value7;
    this.value8 = value8;
    this.value9 = value9;
    this.value10 = value10;
    this.value11 = value11;
    this.value12 = value12;
    this.value13 = value13;
    this.value14 = value14;
    this.value15 = value15;
    this.value16 = value16;
    this.value17 = value17;
    this.value18 = value18;
    this.value19 = value19;
  }
}

@Entry
@Component
struct TrackNumberArrSample {
  timeHelper: TimeHelper = new TimeHelper('TrackNumberArrSample')
  a = this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.CREATE_STATE, true))
  @State track: TrackClassModel = new TrackClassModel('value1', 1, false, 'any1', ['valueArr1', 'valueArr2', 'valueArr3'],
    [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false], 'value1', 1, false, 'any1',
    ['valueArr1', 'valueArr2', 'valueArr3'], [0, 1, 2, 3], [false, true, false, false], ['any1', 0, 2, false],
    'value1', 1, false, 'any1');
  b = this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.CREATE_STATE, true))

  aboutToAppear(): void {
    // 不绑定UI的状态性能测试
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      this.track.value5[index] = index
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, false))
    this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    for (let index = 0; index < ArrEntity.STATE_LOOP; index++) {
      let tmp = this.track.value5[index]
    }
    this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
  }

  // @Track没有深度观测的功能。
  build() {
    Row() {
      Column({ space: 15 }) {
        Text('TrackNumberArrSample')
          .fontSize('25')
          .textAlign(TextAlign.Center)
          .margin({bottom: 50, top: 50})
        Text(`track value: ${this.track.value5[0]}`)
        Button('读@Track的耗时')
          .id('getStateTimeTaken')
          .onClick(() => {
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
            let tmp = this.track.value5[0]
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
          })
        Button('写@Track的耗时')
          .id('setStateTimeTaken')
          .onClick(() => {
            let tmp = this.track.value5[0] + 1
            this.timeHelper.printStateTime(true, 1, new StateModel(StateConstants.WRITE_STATE, true))
            this.track.value5[0] = tmp
            this.timeHelper.printStateTime(false, 1, new StateModel(StateConstants.WRITE_STATE, true))
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}
