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

import { TimeHelper } from '../../../util/TimeHelper'
import { StateConstants, StateModel } from '../StateModel';

const timeHelper: TimeHelper = new TimeHelper('MonitorArraySample');

@ObservedV2
class ArrMonitor {
  @Trace dimension: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
    24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51];
  dimension1: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension2: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension3: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension4: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension5: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension6: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension7: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension8: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension9: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension10: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension11: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension12: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension13: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension14: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension15: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension16: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension17: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension18: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];
  dimension19: number[][] = [[1, 1, 1], [2, 2, 2], [3, 3, 3]];

  @Monitor("dimension.0")
  onDimension0Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.1")
  onDimension1Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.2")
  onDimension2Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.3")
  onDimension3Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.4")
  onDimension4Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.5")
  onDimension5Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.6")
  onDimension6Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.7")
  onDimension7Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.8")
  onDimension8Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.9")
  onDimension9Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.10")
  onDimension10Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.11")
  onDimension11Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.12")
  onDimension12Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.13")
  onDimension13Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.14")
  onDimension14Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.15")
  onDimension15Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.16")
  onDimension16Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.17")
  onDimension17Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.18")
  onDimension18Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.19")
  onDimension19Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.20")
  onDimension20Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.21")
  onDimension21Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.22")
  onDimension22Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.23")
  onDimension23Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.24")
  onDimension24Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.25")
  onDimension25Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.26")
  onDimension26Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.27")
  onDimension27Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.28")
  onDimension28Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.29")
  onDimension29Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.30")
  onDimension30Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.31")
  onDimension31Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.32")
  onDimension32Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.33")
  onDimension33Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.34")
  onDimension34Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.35")
  onDimension35Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.36")
  onDimension36Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.37")
  onDimension37Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.38")
  onDimension38Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.39")
  onDimension39Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.40")
  onDimension40Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.41")
  onDimension41Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
  @Monitor("dimension.42")
  onDimension42Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.43")
  onDimension43Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.44")
  onDimension44Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.45")
  onDimension45Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.46")
  onDimension46Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.47")
  onDimension47Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.48")
  onDimension48Change(monitor: IMonitor) {
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.49")
  onDimension49Change(monitor: IMonitor) {
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }

  @Monitor("dimension.50")
  onDimension50Change(monitor: IMonitor) {
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
    monitor.dirty.forEach((path: string) => {
      console.log(`dimension path: ${path} change from ${monitor.value(path)?.before} to ${monitor.value(path)?.now}`);
    })
  }
}

@ComponentV2
struct ChildMonitorArraySample {
  @Param testData: number[] = []
  @Param testData1: number[] = []
  @Param testData2: number[] = []
  @Param testData3: number[] = []
  @Param testData4: number[] = []
  @Param testData5: number[] = []
  @Param testData6: number[] = []
  @Param testData7: number[] = []
  @Param testData8: number[] = []
  @Param testData9: number[] = []
  @Param testData10: number[] = []
  @Param testData11: number[] = []
  @Param testData12: number[] = []
  @Param testData13: number[] = []
  @Param testData14: number[] = []
  @Param testData15: number[] = []
  @Param testData16: number[] = []
  @Param testData17: number[] = []
  @Param testData18: number[] = []
  @Param testData19: number[] = []
  @Param testData20: number[] = []
  @Param testData21: number[] = []
  @Param testData22: number[] = []
  @Param testData23: number[] = []
  @Param testData24: number[] = []
  @Param testData25: number[] = []
  @Param testData26: number[] = []
  @Param testData27: number[] = []
  @Param testData28: number[] = []
  @Param testData29: number[] = []
  @Param testData30: number[] = []
  @Param testData31: number[] = []
  @Param testData32: number[] = []
  @Param testData33: number[] = []
  @Param testData34: number[] = []
  @Param testData35: number[] = []
  @Param testData36: number[] = []
  @Param testData37: number[] = []
  @Param testData38: number[] = []
  @Param testData39: number[] = []
  @Param testData40: number[] = []
  @Param testData41: number[] = []
  @Param testData42: number[] = []
  @Param testData43: number[] = []
  @Param testData44: number[] = []
  @Param testData45: number[] = []
  @Param testData46: number[] = []
  @Param testData47: number[] = []
  @Param testData48: number[] = []
  @Param testData49: number[] = []
  @Param testData50: number[] = []

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    this.testData[0] = 100
    this.testData1[1] = 100
    this.testData2[2] = 100
    this.testData3[3] = 100
    this.testData4[4] = 100
    this.testData5[5] = 100
    this.testData6[6] = 100
    this.testData7[7] = 100
    this.testData8[8] = 100
    this.testData9[9] = 100
    this.testData10[10] = 100
    this.testData11[11] = 100
    this.testData12[12] = 100
    this.testData13[13] = 100
    this.testData14[14] = 100
    this.testData15[15] = 100
    this.testData16[16] = 100
    this.testData17[17] = 100
    this.testData18[18] = 100
    this.testData19[19] = 100
    this.testData20[20] = 100
    this.testData21[21] = 100
    this.testData22[22] = 100
    this.testData23[23] = 100
    this.testData24[24] = 100
    this.testData25[25] = 100
    this.testData26[26] = 100
    this.testData27[27] = 100
    this.testData28[28] = 100
    this.testData29[29] = 100
    this.testData30[30] = 100
    this.testData31[31] = 100
    this.testData32[32] = 100
    this.testData33[33] = 100
    this.testData34[34] = 100
    this.testData35[35] = 100
    this.testData36[36] = 100
    this.testData37[37] = 100
    this.testData38[38] = 100
    this.testData39[39] = 100
    this.testData40[40] = 100
    this.testData41[41] = 100
    this.testData42[42] = 100
    this.testData43[43] = 100
    this.testData44[44] = 100
    this.testData45[45] = 100
    this.testData46[46] = 100
    this.testData47[47] = 100
    this.testData48[48] = 100
    this.testData49[49] = 100
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData[0]}`)
      Button('child click: 读@Monitor的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.testData[0] = 200
          this.testData1[1] = 200
          this.testData2[2] = 200
          this.testData3[3] = 200
          this.testData4[4] = 200
          this.testData5[5] = 200
          this.testData6[6] = 200
          this.testData7[7] = 200
          this.testData8[8] = 200
          this.testData9[9] = 200
          this.testData10[10] = 200
          this.testData11[11] = 200
          this.testData12[12] = 200
          this.testData13[13] = 200
          this.testData14[14] = 200
          this.testData15[15] = 200
          this.testData16[16] = 200
          this.testData17[17] = 200
          this.testData18[18] = 200
          this.testData19[19] = 200
          this.testData20[20] = 200
          this.testData21[21] = 200
          this.testData22[22] = 200
          this.testData23[23] = 200
          this.testData24[24] = 200
          this.testData25[25] = 200
          this.testData26[26] = 200
          this.testData27[27] = 200
          this.testData28[28] = 200
          this.testData29[29] = 200
          this.testData30[30] = 200
          this.testData31[31] = 200
          this.testData32[32] = 200
          this.testData33[33] = 200
          this.testData34[34] = 200
          this.testData35[35] = 200
          this.testData36[36] = 200
          this.testData37[37] = 200
          this.testData38[38] = 200
          this.testData39[39] = 200
          this.testData40[40] = 200
          this.testData41[41] = 200
          this.testData42[42] = 200
          this.testData43[43] = 200
          this.testData44[44] = 200
          this.testData45[45] = 200
          this.testData46[46] = 200
          this.testData47[47] = 200
          this.testData48[48] = 200
          this.testData50[50] = 200
        })
    }
  }
}

@Entry
@ComponentV2
struct MonitorArraySample {
  testData: ArrMonitor = new ArrMonitor();
  testData1: ArrMonitor = new ArrMonitor();
  testData2: ArrMonitor = new ArrMonitor();
  testData3: ArrMonitor = new ArrMonitor();
  testData4: ArrMonitor = new ArrMonitor();
  testData5: ArrMonitor = new ArrMonitor();
  testData6: ArrMonitor = new ArrMonitor();
  testData7: ArrMonitor = new ArrMonitor();
  testData8: ArrMonitor = new ArrMonitor();
  testData9: ArrMonitor = new ArrMonitor();
  testData10: ArrMonitor = new ArrMonitor();
  testData11: ArrMonitor = new ArrMonitor();
  testData12: ArrMonitor = new ArrMonitor();
  testData13: ArrMonitor = new ArrMonitor();
  testData14: ArrMonitor = new ArrMonitor();
  testData15: ArrMonitor = new ArrMonitor();
  testData16: ArrMonitor = new ArrMonitor();
  testData17: ArrMonitor = new ArrMonitor();
  testData18: ArrMonitor = new ArrMonitor();
  testData19: ArrMonitor = new ArrMonitor();
  testData20: ArrMonitor = new ArrMonitor();
  testData21: ArrMonitor = new ArrMonitor();
  testData22: ArrMonitor = new ArrMonitor();
  testData23: ArrMonitor = new ArrMonitor();
  testData24: ArrMonitor = new ArrMonitor();
  testData25: ArrMonitor = new ArrMonitor();
  testData26: ArrMonitor = new ArrMonitor();
  testData27: ArrMonitor = new ArrMonitor();
  testData28: ArrMonitor = new ArrMonitor();
  testData29: ArrMonitor = new ArrMonitor();
  testData30: ArrMonitor = new ArrMonitor();
  testData31: ArrMonitor = new ArrMonitor();
  testData32: ArrMonitor = new ArrMonitor();
  testData33: ArrMonitor = new ArrMonitor();
  testData34: ArrMonitor = new ArrMonitor();
  testData35: ArrMonitor = new ArrMonitor();
  testData36: ArrMonitor = new ArrMonitor();
  testData37: ArrMonitor = new ArrMonitor();
  testData38: ArrMonitor = new ArrMonitor();
  testData39: ArrMonitor = new ArrMonitor();
  testData40: ArrMonitor = new ArrMonitor();
  testData41: ArrMonitor = new ArrMonitor();
  testData42: ArrMonitor = new ArrMonitor();
  testData43: ArrMonitor = new ArrMonitor();
  testData44: ArrMonitor = new ArrMonitor();
  testData45: ArrMonitor = new ArrMonitor();
  testData46: ArrMonitor = new ArrMonitor();
  testData47: ArrMonitor = new ArrMonitor();
  testData48: ArrMonitor = new ArrMonitor();
  testData49: ArrMonitor = new ArrMonitor();
  testData50: ArrMonitor = new ArrMonitor();

  build() {
    Column({ space: 15 }) {
      Text('MonitorArraySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.dimension[0]}`)
      ChildMonitorArraySample({
        testData: this.testData.dimension,
        testData1: this.testData1.dimension,
        testData2: this.testData2.dimension,
        testData3: this.testData3.dimension,
        testData4: this.testData4.dimension,
        testData5: this.testData5.dimension,
        testData6: this.testData6.dimension,
        testData7: this.testData7.dimension,
        testData8: this.testData8.dimension,
        testData9: this.testData9.dimension,
        testData10: this.testData10.dimension,
        testData11: this.testData11.dimension,
        testData12: this.testData12.dimension,
        testData13: this.testData13.dimension,
        testData14: this.testData14.dimension,
        testData15: this.testData15.dimension,
        testData16: this.testData16.dimension,
        testData17: this.testData17.dimension,
        testData18: this.testData18.dimension,
        testData19: this.testData19.dimension,
        testData20: this.testData20.dimension,
        testData21: this.testData21.dimension,
        testData22: this.testData22.dimension,
        testData23: this.testData23.dimension,
        testData24: this.testData24.dimension,
        testData25: this.testData25.dimension,
        testData26: this.testData26.dimension,
        testData27: this.testData27.dimension,
        testData28: this.testData28.dimension,
        testData29: this.testData29.dimension,
        testData30: this.testData30.dimension,
        testData31: this.testData31.dimension,
        testData32: this.testData32.dimension,
        testData33: this.testData33.dimension,
        testData34: this.testData34.dimension,
        testData35: this.testData35.dimension,
        testData36: this.testData36.dimension,
        testData37: this.testData37.dimension,
        testData38: this.testData38.dimension,
        testData39: this.testData39.dimension,
        testData40: this.testData40.dimension,
        testData41: this.testData41.dimension,
        testData42: this.testData42.dimension,
        testData43: this.testData43.dimension,
        testData44: this.testData44.dimension,
        testData45: this.testData45.dimension,
        testData46: this.testData46.dimension,
        testData47: this.testData47.dimension,
        testData48: this.testData48.dimension,
        testData49: this.testData49.dimension,
        testData50: this.testData49.dimension,
      })
    }
  }
}