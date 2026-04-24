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
const timeHelper: TimeHelper = new TimeHelper('MonitorInheritSample');

@ObservedV2
class Base {
  @Trace name: string;
  @Trace name1: string;
  @Trace name2: string;
  @Trace name3: string;
  @Trace name4: string;
  @Trace name5: string;
  @Trace name6: string;
  @Trace name7: string;
  @Trace name8: string;
  @Trace name9: string;
  @Trace name10: string;
  @Trace name11: string;
  @Trace name12: string;
  @Trace name13: string;
  @Trace name14: string;
  @Trace name15: string;
  @Trace name16: string;
  @Trace name17: string;
  @Trace name18: string;
  @Trace name19: string;
  @Trace name20: string;
  @Trace name21: string;
  @Trace name22: string;
  @Trace name23: string;
  @Trace name24: string;
  @Trace name25: string;
  @Trace name26: string;
  @Trace name27: string;
  @Trace name28: string;
  @Trace name29: string;
  @Trace name30: string;
  @Trace name31: string;
  @Trace name32: string;
  @Trace name33: string;
  @Trace name34: string;
  @Trace name35: string;
  @Trace name36: string;
  @Trace name37: string;
  @Trace name38: string;
  @Trace name39: string;
  @Trace name40: string;
  @Trace name41: string;
  @Trace name42: string;
  @Trace name43: string;
  @Trace name44: string;
  @Trace name45: string;
  @Trace name46: string;
  @Trace name47: string;
  @Trace name48: string;
  @Trace name49: string;
  @Trace name50: string;




  @Monitor("name")
  onBaseNameChange(monitor: IMonitor) {
    console.log(`Base Class name change`);
  }
  @Monitor("name1")
  onBaseNameChange1(monitor: IMonitor) {
    console.log(`Base Class name1 change`);
  }
  constructor(name: string, name1: string, name2: string, name3: string, name4: string,
              name5: string, name6: string, name7: string, name8: string, name9: string,
              name10: string, name11: string, name12: string, name13: string, name14: string,
              name15: string, name16: string, name17: string, name18: string, name19: string,
              name20: string, name21: string, name22: string, name23: string, name24: string,
              name25: string, name26: string, name27: string, name28: string, name29: string,
              name30: string, name31: string, name32: string, name33: string, name34: string,
              name35: string, name36: string, name37: string, name38: string, name39: string,
              name40: string, name41: string, name42: string, name43: string, name44: string,
              name45: string, name46: string, name47: string, name48: string, name49: string,name50: string,) {
    this.name = name;
    this.name1 = name1;
    this.name2 = name2;
    this.name3 = name3;
    this.name4 = name4;
    this.name5 = name5;
    this.name6 = name6;
    this.name7 = name7;
    this.name8 = name8;
    this.name9 = name9;
    this.name10 = name10;
    this.name11 = name11;
    this.name12 = name12;
    this.name13 = name13;
    this.name14 = name14;
    this.name15 = name15;
    this.name16 = name16;
    this.name17 = name17;
    this.name18 = name18;
    this.name19 = name19;
    this.name20 = name20;
    this.name21 = name21;
    this.name22 = name22;
    this.name23 = name23;
    this.name24 = name24;
    this.name25 = name25;
    this.name26 = name26;
    this.name27 = name27;
    this.name28 = name28;
    this.name29 = name29;
    this.name30 = name30;
    this.name31 = name31;
    this.name32 = name32;
    this.name33 = name33;
    this.name34 = name34;
    this.name35 = name35;
    this.name36 = name36;
    this.name37 = name37;
    this.name38 = name38;
    this.name39 = name39;
    this.name40 = name40;
    this.name41 = name41;
    this.name42 = name42;
    this.name43 = name43;
    this.name44 = name44;
    this.name45 = name45;
    this.name46 = name46;
    this.name47 = name47;
    this.name48 = name48;
    this.name49 = name49;
    this.name50 = name50;
  }
}
@ObservedV2
class Derived extends Base {
  @Monitor("name")
  onDerivedNameChange(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name1")
  OnDerivedNameChange1(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name2")
  onDerivedNameChange2(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name3")
  OnDerivedNameChange3(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name4")
  OnDerivedNameChange4(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name5")
  OnDerivedNameChange5(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name6")
  OnDerivedNameChange6(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name7")
  OnDerivedNameChange7(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name8")
  OnDerivedNameChange8(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name9")
  OnDerivedNameChange9(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name10")
  onDerivedNameChange10(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name11")
  OnDerivedNameChange11(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name12")
  onDerivedNameChange12(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name13")
  OnDerivedNameChange13(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name14")
  OnDerivedNameChange14(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name15")
  OnDerivedNameChange15(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name16")
  OnDerivedNameChange16(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name17")
  OnDerivedNameChange17(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name18")
  OnDerivedNameChange18(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name19")
  OnDerivedNameChange19(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name20")
  onDerivedNameChange20(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name21")
  OnDerivedNameChange21(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name22")
  onDerivedNameChange22(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name23")
  OnDerivedNameChange23(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name24")
  OnDerivedNameChange24(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name25")
  OnDerivedNameChange25(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name26")
  OnDerivedNameChange26(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name27")
  OnDerivedNameChange27(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name28")
  OnDerivedNameChange28(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name29")
  OnDerivedNameChange29(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name30")
  onDerivedNameChange30(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name31")
  OnDerivedNameChange31(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name32")
  onDerivedNameChange32(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name33")
  OnDerivedNameChange33(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name34")
  OnDerivedNameChange34(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name35")
  OnDerivedNameChange35(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name36")
  OnDerivedNameChange36(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name37")
  OnDerivedNameChange37(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name38")
  OnDerivedNameChange38(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name39")
  OnDerivedNameChange39(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name40")
  onDerivedNameChange40(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name41")
  OnDerivedNameChange41(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name42")
  onDerivedNameChange42(monitor: IMonitor) {
    console.log(`Derived Class name change`);
  }
  @Monitor("name43")
  OnDerivedNameChange43(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name44")
  OnDerivedNameChange44(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name45")
  OnDerivedNameChange45(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name46")
  OnDerivedNameChange46(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name47")
  OnDerivedNameChange47(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name48")
  OnDerivedNameChange48(monitor: IMonitor) {
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name49")
  OnDerivedNameChange49(monitor: IMonitor) {
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, false))
    console.log(`Derived Class name1 change`);
  }
  @Monitor("name50")
  OnDerivedNameChange50(monitor: IMonitor) {
    timeHelper.printStateTime(false, 1, new StateModel(StateConstants.READ_STATE, true))
    console.log(`Derived Class name1 change`);
  }

  constructor(name: string, name1: string, name2: string, name3: string, name4: string,
              name5: string, name6: string, name7: string, name8: string, name9: string,
              name10: string, name11: string, name12: string, name13: string, name14: string,
              name15: string, name16: string, name17: string, name18: string, name19: string,
              name20: string, name21: string, name22: string, name23: string, name24: string,
              name25: string, name26: string, name27: string, name28: string, name29: string,
              name30: string, name31: string, name32: string, name33: string, name34: string,
              name35: string, name36: string, name37: string, name38: string, name39: string,
              name40: string, name41: string, name42: string, name43: string, name44: string,
              name45: string, name46: string, name47: string, name48: string, name49: string,name50: string){
    super(name,name1,name2,name3,name4,name5,name6,name7,name8,name9,name10,name11,
      name12,name13,name14,name15,name16,name17,name18,name19,
      name20,name21,name22,name23,name24,name25,name26,name27,name28,name29,name30,
      name31,name32,name33,name34,name35,name36,name37,name38,name39,name40,
      name41,name42,name43,name44,name45,name46,name47,name48,name49,name50);
  }
}

@ComponentV2
struct ChildMonitorInheritSample {
  @Param testData: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData1: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData2: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData3: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData4: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData5: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData6: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData7: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData8: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData9: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData10: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData11: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData12: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData13: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData14: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData15: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData16: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData17: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData18: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData19: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData20: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData21: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData22: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData23: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData24: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData25: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData26: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData27: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData28: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData29: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData30: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData31: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData32: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData33: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData34: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData35: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData36: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData37: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData38: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData39: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData40: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData41: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData42: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData43: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData44: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData45: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData46: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData47: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData48: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData49: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  @Param testData50: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")

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
struct MonitorInheritSample {
  testData: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData1: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData2: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData3: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData4: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData5: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData6: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData7: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData8: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData9: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData10: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData11: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData12: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData13: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData14: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData15: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData16: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData17: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData18: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData19: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData20: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData21: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData22: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData23: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData24: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData25: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData26: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData27: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData28: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData29: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData30: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData31: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData32: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData33: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData34: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData35: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData36: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData37: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData38: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData39: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData40: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData41: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData42: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData43: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData44: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData45: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData46: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData47: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData48: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData49: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  testData50: Derived = new Derived("hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "hello","world","昊晖","予升","璠智","晟松","欣辰",
    "晓卿","万","扬茜","轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜",
    "轩","少辰","昊晖","予升","璠智","晟松","欣辰","晓卿","万奕","扬茜","扬茜")
  build() {
    Column({ space: 15 }) {
      Text('MonitorInheritSample')
        .fontSize('25')
        .textAlign(TextAlign.Center)
        .margin({ bottom: 50, top: 50 })
      Text(`parent value: ${this.testData.name}`)
      ChildMonitorInheritSample({testData : this.testData,
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