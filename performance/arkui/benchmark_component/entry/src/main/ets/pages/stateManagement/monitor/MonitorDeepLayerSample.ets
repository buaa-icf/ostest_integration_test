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

const timeHelper: TimeHelper = new TimeHelper('MonitorDeepLayerSample');

@ObservedV2
class Inner {
  @Trace num: string = "0";
  @Trace num1: string = "0";
  @Trace num2: string = "0";
  @Trace num3: string = "0";
  @Trace num4: string = "0";
  @Trace num5: string = "0";
  @Trace num6: string = "0";
  @Trace num7: string = "0";
  @Trace num8: string = "0";
  @Trace num9: string = "0";
  @Trace num10: string = "0";
  @Trace num11: string = "0";
  @Trace num12: string = "0";
  @Trace num13: string = "0";
  @Trace num14: string = "0";
  @Trace num15: string = "0";
  @Trace num16: string = "0";
  @Trace num17: string = "0";
  @Trace num18: string = "0";
  @Trace num19: string = "0";
  @Trace num20: string = "0";
  @Trace num21: string = "0";
  @Trace num22: string = "0";
  @Trace num23: string = "0";
  @Trace num24: string = "0";
  @Trace num25: string = "0";
  @Trace num26: string = "0";
  @Trace num27: string = "0";
  @Trace num28: string = "0";
  @Trace num29: string = "0";
  @Trace num30: string = "0";
  @Trace num31: string = "0";
  @Trace num32: string = "0";
  @Trace num33: string = "0";
  @Trace num34: string = "0";
  @Trace num35: string = "0";
  @Trace num36: string = "0";
  @Trace num37: string = "0";
  @Trace num38: string = "0";
  @Trace num39: string = "0";
  @Trace num40: string = "0";
  @Trace num41: string = "0";
  @Trace num42: string = "0";
  @Trace num43: string = "0";
  @Trace num44: string = "0";
  @Trace num45: string = "0";
  @Trace num46: string = "0";
  @Trace num47: string = "0";
  @Trace num48: string = "0";
  @Trace num49: string = "0";
  @Trace num50: string = "0";
}

@ObservedV2
class Outer {
  inner: Inner = new Inner();

  @Monitor("inner.num")
  onChange(monitor: IMonitor) {
    console.log(`inner.num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num1")
  onChange1(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num2")
  onChange2(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num3")
  onChange3(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num4")
  onChange4(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num5")
  onChange5(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num6")
  onChange6(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num7")
  onChange7(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num8")
  onChange8(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num9")
  onChange9(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num10")
  onChange10(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num11")
  onChange11(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num12")
  onChange12(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num13")
  onChange13(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num14")
  onChange14(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num15")
  onChange15(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num16")
  onChange16(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num17")
  onChange17(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num18")
  onChange18(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num19")
  onChange19(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num20")
  onChange20(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num21")
  onChange21(monitor: IMonitor) {
    console.log(`inner.num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num22")
  onChange22(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num23")
  onChange23(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num24")
  onChange24(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num25")
  onChange25(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num26")
  onChange26(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num27")
  onChange27(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num28")
  onChange28(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num29")
  onChange29(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num30")
  onChange30(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num31")
  onChange31(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num32")
  onChange32(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num33")
  onChange33(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num34")
  onChange34(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num35")
  onChange35(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num36")
  onChange36(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num37")
  onChange37(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num38")
  onChange38(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num39")
  onChange39(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num40")
  onChange40(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num41")
  onChange41(monitor: IMonitor) {
    console.log(`inner.num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num42")
  onChange42(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num43")
  onChange43(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num44")
  onChange44(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num45")
  onChange45(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num46")
  onChange46(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num47")
  onChange47(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num48")
  onChange48(monitor: IMonitor) {
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num49")
  onChange49(monitor: IMonitor) {
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("inner.num50")
  onChange50(monitor: IMonitor) {
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
    console.log(`num change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
}

@ComponentV2
struct ChildMonitorDeepLayerSample {
  testData: Inner = new Inner()
  testData1: Inner = new Inner()
  testData2: Inner = new Inner()
  testData3: Inner = new Inner()
  testData4: Inner = new Inner()
  testData5: Inner = new Inner()
  testData6: Inner = new Inner()
  testData7: Inner = new Inner()
  testData8: Inner = new Inner()
  testData9: Inner = new Inner()
  testData10: Inner = new Inner()
  testData11: Inner = new Inner()
  testData12: Inner = new Inner()
  testData13: Inner = new Inner()
  testData14: Inner = new Inner()
  testData15: Inner = new Inner()
  testData16: Inner = new Inner()
  testData17: Inner = new Inner()
  testData18: Inner = new Inner()
  testData19: Inner = new Inner()
  testData20: Inner = new Inner()
  testData21: Inner = new Inner()
  testData22: Inner = new Inner()
  testData23: Inner = new Inner()
  testData24: Inner = new Inner()
  testData25: Inner = new Inner()
  testData26: Inner = new Inner()
  testData27: Inner = new Inner()
  testData28: Inner = new Inner()
  testData29: Inner = new Inner()
  testData30: Inner = new Inner()
  testData31: Inner = new Inner()
  testData32: Inner = new Inner()
  testData33: Inner = new Inner()
  testData34: Inner = new Inner()
  testData35: Inner = new Inner()
  testData36: Inner = new Inner()
  testData37: Inner = new Inner()
  testData38: Inner = new Inner()
  testData39: Inner = new Inner()
  testData40: Inner = new Inner()
  testData41: Inner = new Inner()
  testData42: Inner = new Inner()
  testData43: Inner = new Inner()
  testData44: Inner = new Inner()
  testData45: Inner = new Inner()
  testData46: Inner = new Inner()
  testData47: Inner = new Inner()
  testData48: Inner = new Inner()
  testData49: Inner = new Inner()
  testData50: Inner = new Inner()

  aboutToAppear(): void {
    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    this.testData.num = "hello"
    this.testData1.num1 = "hello"
    this.testData2.num2 = "hello"
    this.testData3.num3 = "hello"
    this.testData4.num4 = "hello"
    this.testData5.num5 = "hello"
    this.testData6.num6 = "hello"
    this.testData7.num7 = "hello"
    this.testData8.num8 = "hello"
    this.testData9.num9 = "hello"
    this.testData10.num10 = "hello"
    this.testData11.num11 = "hello"
    this.testData12.num12 = "hello"
    this.testData13.num13 = "hello"
    this.testData14.num14 = "hello"
    this.testData15.num15 = "hello"
    this.testData16.num16 = "hello"
    this.testData17.num17 = "hello"
    this.testData18.num18 = "hello"
    this.testData19.num19 = "hello"
    this.testData20.num20 = "hello"
    this.testData21.num21 = "hello"
    this.testData22.num22 = "hello"
    this.testData23.num23 = "hello"
    this.testData24.num24 = "hello"
    this.testData25.num25 = "hello"
    this.testData26.num26 = "hello"
    this.testData27.num27 = "hello"
    this.testData28.num28 = "hello"
    this.testData29.num29 = "hello"
    this.testData30.num30 = "hello"
    this.testData31.num31 = "hello"
    this.testData32.num32 = "hello"
    this.testData33.num33 = "hello"
    this.testData34.num34 = "hello"
    this.testData35.num35 = "hello"
    this.testData36.num36 = "hello"
    this.testData37.num37 = "hello"
    this.testData38.num38 = "hello"
    this.testData39.num39 = "hello"
    this.testData40.num40 = "hello"
    this.testData41.num41 = "hello"
    this.testData42.num42 = "hello"
    this.testData43.num43 = "hello"
    this.testData44.num44 = "hello"
    this.testData45.num45 = "hello"
    this.testData46.num46 = "hello"
    this.testData47.num47 = "hello"
    this.testData48.num48 = "hello"
    this.testData49.num49 = "hello"
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData.num}`)
      Button('child click: 读@Monitor的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.testData.num = "world"
          this.testData1.num1 = "world"
          this.testData2.num2 = "world"
          this.testData3.num3 = "world"
          this.testData4.num4 = "world"
          this.testData5.num5 = "world"
          this.testData6.num6 = "world"
          this.testData7.num7 = "world"
          this.testData8.num8 = "world"
          this.testData9.num9 = "world"
          this.testData10.num10 = "world"
          this.testData11.num11 = "world"
          this.testData12.num12 = "world"
          this.testData13.num13 = "world"
          this.testData14.num14 = "world"
          this.testData15.num15 = "world"
          this.testData16.num16 = "world"
          this.testData17.num17 = "world"
          this.testData18.num18 = "world"
          this.testData19.num19 = "world"
          this.testData20.num20 = "world"
          this.testData21.num21 = "world"
          this.testData22.num22 = "world"
          this.testData23.num23 = "world"
          this.testData24.num24 = "world"
          this.testData25.num25 = "world"
          this.testData26.num26 = "world"
          this.testData27.num27 = "world"
          this.testData28.num28 = "world"
          this.testData29.num29 = "world"
          this.testData30.num30 = "world"
          this.testData31.num31 = "world"
          this.testData32.num32 = "world"
          this.testData33.num33 = "world"
          this.testData34.num34 = "world"
          this.testData35.num35 = "world"
          this.testData36.num36 = "world"
          this.testData37.num37 = "world"
          this.testData38.num38 = "world"
          this.testData39.num39 = "world"
          this.testData40.num40 = "world"
          this.testData41.num41 = "world"
          this.testData42.num42 = "world"
          this.testData43.num43 = "world"
          this.testData44.num44 = "world"
          this.testData45.num45 = "world"
          this.testData46.num46 = "world"
          this.testData47.num47 = "world"
          this.testData48.num48 = "world"
          this.testData50.num50 = "world"
        })
    }
  }
}

@Entry
@ComponentV2
struct MonitorDeepLayerSample {
  testData: Outer = new Outer();
  testData1: Outer = new Outer();
  testData2: Outer = new Outer();
  testData3: Outer = new Outer();
  testData4: Outer = new Outer();
  testData5: Outer = new Outer();
  testData6: Outer = new Outer();
  testData7: Outer = new Outer();
  testData8: Outer = new Outer();
  testData9: Outer = new Outer();
  testData10: Outer = new Outer();
  testData11: Outer = new Outer();
  testData12: Outer = new Outer();
  testData13: Outer = new Outer();
  testData14: Outer = new Outer();
  testData15: Outer = new Outer();
  testData16: Outer = new Outer();
  testData17: Outer = new Outer();
  testData18: Outer = new Outer();
  testData19: Outer = new Outer();
  testData20: Outer = new Outer();
  testData21: Outer = new Outer();
  testData22: Outer = new Outer();
  testData23: Outer = new Outer();
  testData24: Outer = new Outer();
  testData25: Outer = new Outer();
  testData26: Outer = new Outer();
  testData27: Outer = new Outer();
  testData28: Outer = new Outer();
  testData29: Outer = new Outer();
  testData30: Outer = new Outer();
  testData31: Outer = new Outer();
  testData32: Outer = new Outer();
  testData33: Outer = new Outer();
  testData34: Outer = new Outer();
  testData35: Outer = new Outer();
  testData36: Outer = new Outer();
  testData37: Outer = new Outer();
  testData38: Outer = new Outer();
  testData39: Outer = new Outer();
  testData40: Outer = new Outer();
  testData41: Outer = new Outer();
  testData42: Outer = new Outer();
  testData43: Outer = new Outer();
  testData44: Outer = new Outer();
  testData45: Outer = new Outer();
  testData46: Outer = new Outer();
  testData47: Outer = new Outer();
  testData48: Outer = new Outer();
  testData49: Outer = new Outer();
  testData50: Outer = new Outer();

  build() {
    Column({ space: 15 }) {
      Text('MonitorDeepLayerSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.inner.num}`)
      ChildMonitorDeepLayerSample({
        testData: this.testData.inner,
        testData1: this.testData1.inner,
        testData2: this.testData2.inner,
        testData3: this.testData3.inner,
        testData4: this.testData4.inner,
        testData5: this.testData5.inner,
        testData6: this.testData6.inner,
        testData7: this.testData7.inner,
        testData8: this.testData8.inner,
        testData9: this.testData9.inner,
        testData10: this.testData10.inner,
        testData11: this.testData11.inner,
        testData12: this.testData12.inner,
        testData13: this.testData13.inner,
        testData14: this.testData14.inner,
        testData15: this.testData15.inner,
        testData16: this.testData16.inner,
        testData17: this.testData17.inner,
        testData18: this.testData18.inner,
        testData19: this.testData19.inner,
        testData20: this.testData20.inner,
        testData21: this.testData21.inner,
        testData22: this.testData22.inner,
        testData23: this.testData23.inner,
        testData24: this.testData24.inner,
        testData25: this.testData25.inner,
        testData26: this.testData26.inner,
        testData27: this.testData27.inner,
        testData28: this.testData28.inner,
        testData29: this.testData29.inner,
        testData30: this.testData30.inner,
        testData31: this.testData31.inner,
        testData32: this.testData32.inner,
        testData33: this.testData33.inner,
        testData34: this.testData34.inner,
        testData35: this.testData35.inner,
        testData36: this.testData36.inner,
        testData37: this.testData37.inner,
        testData38: this.testData38.inner,
        testData39: this.testData39.inner,
        testData40: this.testData40.inner,
        testData41: this.testData41.inner,
        testData42: this.testData42.inner,
        testData43: this.testData43.inner,
        testData44: this.testData44.inner,
        testData45: this.testData45.inner,
        testData46: this.testData46.inner,
        testData47: this.testData47.inner,
        testData48: this.testData48.inner,
        testData49: this.testData49.inner,
        testData50: this.testData50.inner,
      })
    }
  }
}