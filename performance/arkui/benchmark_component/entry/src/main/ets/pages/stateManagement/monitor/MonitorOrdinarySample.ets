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

const timeHelper: TimeHelper = new TimeHelper('MonitorOrdinarySample');

@ObservedV2
class Info {
  @Trace name: string = "Jack";
  @Trace name1: string = "Jack";
  @Trace name2: string = "Jack";
  @Trace name3: string = "Jack";
  @Trace name4: string = "Jack";
  @Trace name5: string = "Jack";
  @Trace name6: string = "Jack";
  @Trace name7: string = "Jack";
  @Trace name8: string = "Jack";
  @Trace name9: string = "Jack";
  @Trace name10: string = "Jack";
  @Trace name11: string = "Jack";
  @Trace name12: string = "Jack";
  @Trace name13: string = "Jack";
  @Trace name14: string = "Jack";
  @Trace name15: string = "Jack";
  @Trace name16: string = "Jack";
  @Trace name17: string = "Jack";
  @Trace name18: string = "Jack";
  @Trace name19: string = "Jack";
  @Trace name20: string = "Jack";
  @Trace name21: string = "Jack";
  @Trace name22: string = "Jack";
  @Trace name23: string = "Jack";
  @Trace name24: string = "Jack";
  @Trace name25: string = "Jack";
  @Trace name26: string = "Jack";
  @Trace name27: string = "Jack";
  @Trace name28: string = "Jack";
  @Trace name29: string = "Jack";
  @Trace name30: string = "Jack";
  @Trace name31: string = "Jack";
  @Trace name32: string = "Jack";
  @Trace name33: string = "Jack";
  @Trace name34: string = "Jack";
  @Trace name35: string = "Jack";
  @Trace name36: string = "Jack";
  @Trace name37: string = "Jack";
  @Trace name38: string = "Jack";
  @Trace name39: string = "Jack";
  @Trace name40: string = "Jack";
  @Trace name41: string = "Jack";
  @Trace name42: string = "Jack";
  @Trace name43: string = "Jack";
  @Trace name44: string = "Jack";
  @Trace name45: string = "Jack";
  @Trace name46: string = "Jack";
  @Trace name47: string = "Jack";
  @Trace name48: string = "Jack";
  @Trace name49: string = "Jack";
  @Trace name50: string = "Jack";
  @Monitor("name")
  onNameChange(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name1")
  onNameChange1(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name2")
  onNameChange2(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name3")
  onNameChange3(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name4")
  onNameChange4(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name5")
  onNameChange5(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name6")
  onNameChange6(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name7")
  onNameChange7(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name8")
  onNameChange8(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name9")
  onNameChange9(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name10")
  onNameChange10(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name11")
  onNameChange11(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name12")
  onNameChange12(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name13")
  onNameChange13(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name14")
  onNameChange14(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name15")
  onNameChange15(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name16")
  onNameChange16(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name17")
  onNameChange17(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name18")
  onNameChange18(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name19")
  onNameChange19(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name20")
  onNameChange20(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name21")
  onNameChange21(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name22")
  onNameChange22(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name23")
  onNameChange23(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name24")
  onNameChange24(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name25")
  onNameChange25(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name26")
  onNameChange26(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name27")
  onNameChange27(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name28")
  onNameChange28(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name29")
  onNameChange29(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name30")
  onNameChange30(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name31")
  onNameChange31(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name32")
  onNameChange32(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name33")
  onNameChange33(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name34")
  onNameChange34(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name35")
  onNameChange35(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name36")
  onNameChange36(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name37")
  onNameChange37(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name38")
  onNameChange38(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name39")
  onNameChange39(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name40")
  onNameChange40(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name41")
  onNameChange41(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name42")
  onNameChange42(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name43")
  onNameChange43(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name44")
  onNameChange44(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name45")
  onNameChange45(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name46")
  onNameChange46(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name47")
  onNameChange47(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name48")
  onNameChange48(monitor: IMonitor) {
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name49")
  onNameChange49(monitor: IMonitor) {
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
  @Monitor("name50")
  onNameChange50(monitor: IMonitor) {
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
    console.log(`name change from ${monitor.value()?.before} to ${monitor.value()?.now}`);
  }
}

@ComponentV2
struct ChildMonitorOrdinarySample {
  @Param testData: Info = new Info();
  @Param testData1: Info = new Info();
  @Param testData2: Info = new Info();
  @Param testData3: Info = new Info();
  @Param testData4: Info = new Info();
  @Param testData5: Info = new Info();
  @Param testData6: Info = new Info();
  @Param testData7: Info = new Info();
  @Param testData8: Info = new Info();
  @Param testData9: Info = new Info();
  @Param testData10: Info = new Info();
  @Param testData11: Info = new Info();
  @Param testData12: Info = new Info();
  @Param testData13: Info = new Info();
  @Param testData14: Info = new Info();
  @Param testData15: Info = new Info();
  @Param testData16: Info = new Info();
  @Param testData17: Info = new Info();
  @Param testData18: Info = new Info();
  @Param testData19: Info = new Info();
  @Param testData20: Info = new Info();
  @Param testData21: Info = new Info();
  @Param testData22: Info = new Info();
  @Param testData23: Info = new Info();
  @Param testData24: Info = new Info();
  @Param testData25: Info = new Info();
  @Param testData26: Info = new Info();
  @Param testData27: Info = new Info();
  @Param testData28: Info = new Info();
  @Param testData29: Info = new Info();
  @Param testData30: Info = new Info();
  @Param testData31: Info = new Info();
  @Param testData32: Info = new Info();
  @Param testData33: Info = new Info();
  @Param testData34: Info = new Info();
  @Param testData35: Info = new Info();
  @Param testData36: Info = new Info();
  @Param testData37: Info = new Info();
  @Param testData38: Info = new Info();
  @Param testData39: Info = new Info();
  @Param testData40: Info = new Info();
  @Param testData41: Info = new Info();
  @Param testData42: Info = new Info();
  @Param testData43: Info = new Info();
  @Param testData44: Info = new Info();
  @Param testData45: Info = new Info();
  @Param testData46: Info = new Info();
  @Param testData47: Info = new Info();
  @Param testData48: Info = new Info();
  @Param testData49: Info = new Info();
  @Param testData50: Info = new Info();

  aboutToAppear(): void {

    timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, false))
    this.testData.name = `not bind UI:世界，你好`
    this.testData1.name1 = `not bind UI:世界，你好`
    this.testData2.name2 = `not bind UI:世界，你好`
    this.testData3.name3 = `not bind UI:世界，你好`
    this.testData4.name4 = `not bind UI:世界，你好`
    this.testData5.name5 = `not bind UI:世界，你好`
    this.testData6.name6 = `not bind UI:世界，你好`
    this.testData7.name7 = `not bind UI:世界，你好`
    this.testData8.name8 = `not bind UI:世界，你好`
    this.testData9.name9 = `not bind UI:世界，你好`
    this.testData10.name10 = `not bind UI:世界，你好`
    this.testData11.name11 = `not bind UI:世界，你好`
    this.testData12.name12 = `not bind UI:世界，你好`
    this.testData13.name13 = `not bind UI:世界，你好`
    this.testData14.name14 = `not bind UI:世界，你好`
    this.testData15.name15 = `not bind UI:世界，你好`
    this.testData16.name16 = `not bind UI:世界，你好`
    this.testData17.name17 = `not bind UI:世界，你好`
    this.testData18.name18 = `not bind UI:世界，你好`
    this.testData19.name19 = `not bind UI:世界，你好`
    this.testData20.name20 = `not bind UI:世界，你好`
    this.testData21.name21 = `not bind UI:世界，你好`
    this.testData22.name22 = `not bind UI:世界，你好`
    this.testData23.name23 = `not bind UI:世界，你好`
    this.testData24.name24 = `not bind UI:世界，你好`
    this.testData25.name25 = `not bind UI:世界，你好`
    this.testData26.name26 = `not bind UI:世界，你好`
    this.testData27.name27 = `not bind UI:世界，你好`
    this.testData28.name28 = `not bind UI:世界，你好`
    this.testData29.name29 = `not bind UI:世界，你好`
    this.testData30.name30 = `not bind UI:世界，你好`
    this.testData31.name31 = `not bind UI:世界，你好`
    this.testData32.name32 = `not bind UI:世界，你好`
    this.testData33.name33 = `not bind UI:世界，你好`
    this.testData34.name34 = `not bind UI:世界，你好`
    this.testData35.name35 = `not bind UI:世界，你好`
    this.testData36.name36 = `not bind UI:世界，你好`
    this.testData37.name37 = `not bind UI:世界，你好`
    this.testData38.name38 = `not bind UI:世界，你好`
    this.testData39.name39 = `not bind UI:世界，你好`
    this.testData40.name40 = `not bind UI:世界，你好`
    this.testData41.name41 = `not bind UI:世界，你好`
    this.testData42.name42 = `not bind UI:世界，你好`
    this.testData43.name43 = `not bind UI:世界，你好`
    this.testData44.name44 = `not bind UI:世界，你好`
    this.testData45.name45 = `not bind UI:世界，你好`
    this.testData46.name46 = `not bind UI:世界，你好`
    this.testData47.name47 = `not bind UI:世界，你好`
    this.testData48.name48 = `not bind UI:世界，你好`
    this.testData49.name49 = `not bind UI:世界，你好`
  }

  build() {
    Column({ space: 15 }) {
      Text(`child value: ${this.testData.name}`)
      Button('child click: 读@Monitor的耗时')
        .id('getStateTimeTaken')
        .onClick(() => {
          timeHelper.printStateTime(true, 1, new StateModel(StateConstants.READ_STATE, true))
          this.testData.name = `not bind UI:世界`
          this.testData1.name1 = `not bind UI:世界`
          this.testData2.name2 = `not bind UI:世界`
          this.testData3.name3 = `not bind UI:世界`
          this.testData4.name4 = `not bind UI:世界`
          this.testData5.name5 = `not bind UI:世界`
          this.testData6.name6 = `not bind UI:世界`
          this.testData7.name7 = `not bind UI:世界`
          this.testData8.name8 = `not bind UI:世界`
          this.testData9.name9 = `not bind UI:世界`
          this.testData10.name10 = `not bind UI:世界`
          this.testData11.name11 = `not bind UI:世界`
          this.testData12.name12 = `not bind UI:世界`
          this.testData13.name13 = `not bind UI:世界`
          this.testData14.name14 = `not bind UI:世界`
          this.testData15.name15 = `not bind UI:世界`
          this.testData16.name16 = `not bind UI:世界`
          this.testData17.name17 = `not bind UI:世界`
          this.testData18.name18 = `not bind UI:世界`
          this.testData19.name19 = `not bind UI:世界`
          this.testData20.name20 = `not bind UI:世界`
          this.testData21.name21 = `not bind UI:世界`
          this.testData22.name22 = `not bind UI:世界`
          this.testData23.name23 = `not bind UI:世界`
          this.testData24.name24 = `not bind UI:世界`
          this.testData25.name25 = `not bind UI:世界`
          this.testData26.name26 = `not bind UI:世界`
          this.testData27.name27 = `not bind UI:世界`
          this.testData28.name28 = `not bind UI:世界`
          this.testData29.name29 = `not bind UI:世界`
          this.testData30.name30 = `not bind UI:世界`
          this.testData31.name31 = `not bind UI:世界`
          this.testData32.name32 = `not bind UI:世界`
          this.testData33.name33 = `not bind UI:世界`
          this.testData34.name34 = `not bind UI:世界`
          this.testData35.name35 = `not bind UI:世界`
          this.testData36.name36 = `not bind UI:世界`
          this.testData37.name37 = `not bind UI:世界`
          this.testData38.name38 = `not bind UI:世界`
          this.testData39.name39 = `not bind UI:世界`
          this.testData40.name40 = `not bind UI:世界`
          this.testData41.name41 = `not bind UI:世界`
          this.testData42.name42 = `not bind UI:世界`
          this.testData43.name43 = `not bind UI:世界`
          this.testData44.name44 = `not bind UI:世界`
          this.testData45.name45 = `not bind UI:世界`
          this.testData46.name46 = `not bind UI:世界`
          this.testData47.name47 = `not bind UI:世界`
          this.testData48.name48 = `not bind UI:世界`
          this.testData50.name50 = `not bind UI:世界`
        })

    }
  }
}

@Entry
@ComponentV2
struct MonitorOrdinarySample {
  testData: Info = new Info();
  testData1: Info = new Info();
  testData2: Info = new Info();
  testData3: Info = new Info();
  testData4: Info = new Info();
  testData5: Info = new Info();
  testData6: Info = new Info();
  testData7: Info = new Info();
  testData8: Info = new Info();
  testData9: Info = new Info();
  testData10: Info = new Info();
  testData11: Info = new Info();
  testData12: Info = new Info();
  testData13: Info = new Info();
  testData14: Info = new Info();
  testData15: Info = new Info();
  testData16: Info = new Info();
  testData17: Info = new Info();
  testData18: Info = new Info();
  testData19: Info = new Info();
  testData20: Info = new Info();
  testData21: Info = new Info();
  testData22: Info = new Info();
  testData23: Info = new Info();
  testData24: Info = new Info();
  testData25: Info = new Info();
  testData26: Info = new Info();
  testData27: Info = new Info();
  testData28: Info = new Info();
  testData29: Info = new Info();
  testData30: Info = new Info();
  testData31: Info = new Info();
  testData32: Info = new Info();
  testData33: Info = new Info();
  testData34: Info = new Info();
  testData35: Info = new Info();
  testData36: Info = new Info();
  testData37: Info = new Info();
  testData38: Info = new Info();
  testData39: Info = new Info();
  testData40: Info = new Info();
  testData41: Info = new Info();
  testData42: Info = new Info();
  testData43: Info = new Info();
  testData44: Info = new Info();
  testData45: Info = new Info();
  testData46: Info = new Info();
  testData47: Info = new Info();
  testData48: Info = new Info();
  testData49: Info = new Info();
  testData50: Info = new Info();
  build() {
    Column({ space: 15 }) {
      Text('MonitorOrdinarySample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.name}`)
      ChildMonitorOrdinarySample({ testData: this.testData,
        testData1: this.testData1,
        testData2: this.testData2,
        testData3: this.testData3,
        testData4: this.testData4,
        testData5: this.testData5,
        testData6: this.testData6,
        testData7: this.testData7,
        testData8: this.testData8,
        testData9: this.testData9,
        testData10: this.testData10,
        testData11: this.testData11,
        testData12: this.testData12,
        testData13: this.testData13,
        testData14: this.testData14,
        testData15: this.testData15,
        testData16: this.testData16,
        testData17: this.testData17,
        testData18: this.testData18,
        testData19: this.testData19,
        testData20: this.testData20,
        testData21: this.testData21,
        testData22: this.testData22,
        testData23: this.testData23,
        testData24: this.testData24,
        testData25: this.testData25,
        testData26: this.testData26,
        testData27: this.testData27,
        testData28: this.testData28,
        testData29: this.testData29,
        testData30: this.testData30,
        testData31: this.testData31,
        testData32: this.testData32,
        testData33: this.testData33,
        testData34: this.testData34,
        testData35: this.testData35,
        testData36: this.testData36,
        testData37: this.testData37,
        testData38: this.testData38,
        testData39: this.testData39,
        testData40: this.testData40,
        testData41: this.testData41,
        testData42: this.testData42,
        testData43: this.testData43,
        testData44: this.testData44,
        testData45: this.testData45,
        testData46: this.testData46,
        testData47: this.testData47,
        testData48: this.testData48,
        testData49: this.testData49,
        testData50: this.testData50
      })
    }
  }
}