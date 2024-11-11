/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver, ON } from '@ohos.UiTest'

export default function UIComponentNavTabsBlurStyle() {

  describe('UIComponentNavTabsBlurStyle', () => {


    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0016
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0016
* @tc.desc    1、设置13个按钮，点击后给Tabs页签组件模糊效果改为Thin、Regular、Thick、
                 BACKGROUND_THIN、BACKGROUND_REGULAR、BACKGROUND_THICK、
                 BACKGROUND_ULTRA_THICK、NONE、
                 COMPONENT_ULTRA_THIN、
                 COMPONENT_THIN、COMPONENT_REGULAR、
                 COMPONENT_THICK、COMPONENT_ULTRA_THICK
               2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow,Blue、Green
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0016', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0016 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0016")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      let button4: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_004'));
      await Utils.sleep(100)
      await button4.click()
      await Utils.sleep(100)
      let button5: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_005'));
      await Utils.sleep(100)
      await button5.click()
      await Utils.sleep(100)
      let button6: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_006'));
      await Utils.sleep(100)
      await button6.click()
      await Utils.sleep(100)
      let button7: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_007'));
      await Utils.sleep(100)
      await button7.click()
      await Utils.sleep(100)
      let button8: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_008'));
      await Utils.sleep(100)
      await button8.click()
      await Utils.sleep(100)
      let button9: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_009'));
      await Utils.sleep(100)
      await button9.click()
      await Utils.sleep(100)
      let button10: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_010'));
      await Utils.sleep(100)
      await button10.click()
      await Utils.sleep(100)
      let button11: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_011'));
      await Utils.sleep(100)
      await button11.click()
      await Utils.sleep(100)
      let button12: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_012'));
      await Utils.sleep(100)
      await button12.click()
      await Utils.sleep(100)
      let button13: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0016_013'));
      await Utils.sleep(100)
      await button13.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0016 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0015
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0015
* @tc.desc    1、设置13个按钮，点击后给Tabs页签组件模糊效果改为Thin、Regular、Thick、
                 BACKGROUND_THIN、BACKGROUND_REGULAR、BACKGROUND_THICK、
                 BACKGROUND_ULTRA_THICK、NONE、
                 COMPONENT_ULTRA_THIN、
                 COMPONENT_THIN、COMPONENT_REGULAR、
                 COMPONENT_THICK、COMPONENT_ULTRA_THICK
               2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow,Blue、Green
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0015', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0015 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0015")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      let button4: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_004'));
      await Utils.sleep(100)
      await button4.click()
      await Utils.sleep(100)
      let button5: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_005'));
      await Utils.sleep(100)
      await button5.click()
      await Utils.sleep(100)
      let button6: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_006'));
      await Utils.sleep(100)
      await button6.click()
      await Utils.sleep(100)
      let button7: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_007'));
      await Utils.sleep(100)
      await button7.click()
      await Utils.sleep(100)
      let button8: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_008'));
      await Utils.sleep(100)
      await button8.click()
      await Utils.sleep(100)
      let button9: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_009'));
      await Utils.sleep(100)
      await button9.click()
      await Utils.sleep(100)
      let button10: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_010'));
      await Utils.sleep(100)
      await button10.click()
      await Utils.sleep(100)
      let button11: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_011'));
      await Utils.sleep(100)
      await button11.click()
      await Utils.sleep(100)
      let button12: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_012'));
      await Utils.sleep(100)
      await button12.click()
      await Utils.sleep(100)
      let button13: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0015_013'));
      await Utils.sleep(100)
      await button13.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0015 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0014
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0014
* @tc.desc    1、设置13个按钮，点击后给Tabs页签组件模糊效果改为Thin、Regular、Thick、
                 BACKGROUND_THIN、BACKGROUND_REGULAR、BACKGROUND_THICK、
                 BACKGROUND_ULTRA_THICK、NONE、
                 COMPONENT_ULTRA_THIN、
                 COMPONENT_THIN、COMPONENT_REGULAR、
                 COMPONENT_THICK、COMPONENT_ULTRA_THICK
               2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow,Blue、Green
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0014', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0014 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0014")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      let button4: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_004'));
      await Utils.sleep(100)
      await button4.click()
      await Utils.sleep(100)
      let button5: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_005'));
      await Utils.sleep(100)
      await button5.click()
      await Utils.sleep(100)
      let button6: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_006'));
      await Utils.sleep(100)
      await button6.click()
      await Utils.sleep(100)
      let button7: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_007'));
      await Utils.sleep(100)
      await button7.click()
      await Utils.sleep(100)
      let button8: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_008'));
      await Utils.sleep(100)
      await button8.click()
      await Utils.sleep(100)
      let button9: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_009'));
      await Utils.sleep(100)
      await button9.click()
      await Utils.sleep(100)
      let button10: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_010'));
      await Utils.sleep(100)
      await button10.click()
      await Utils.sleep(100)
      let button11: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_011'));
      await Utils.sleep(100)
      await button11.click()
      await Utils.sleep(100)
      let button12: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_012'));
      await Utils.sleep(100)
      await button12.click()
      await Utils.sleep(100)
      let button13: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0014_013'));
      await Utils.sleep(100)
      await button13.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0014 finish.`);
      done()
    })

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0013
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0013
* @tc.desc    1、设置13个按钮，点击后给Tabs页签组件模糊效果改为Thin、Regular、Thick、
                 BACKGROUND_THIN、BACKGROUND_REGULAR、BACKGROUND_THICK、
                 BACKGROUND_ULTRA_THICK、NONE、
                 COMPONENT_ULTRA_THIN、
                 COMPONENT_THIN、COMPONENT_REGULAR、
                 COMPONENT_THICK、COMPONENT_ULTRA_THICK
               2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow,Blue、Green
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0013', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0013 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0013")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      let button4: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_004'));
      await Utils.sleep(100)
      await button4.click()
      await Utils.sleep(100)
      let button5: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_005'));
      await Utils.sleep(100)
      await button5.click()
      await Utils.sleep(100)
      let button6: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_006'));
      await Utils.sleep(100)
      await button6.click()
      await Utils.sleep(100)
      let button7: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_007'));
      await Utils.sleep(100)
      await button7.click()
      await Utils.sleep(100)
      let button8: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_008'));
      await Utils.sleep(100)
      await button8.click()
      await Utils.sleep(100)
      let button9: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_009'));
      await Utils.sleep(100)
      await button9.click()
      await Utils.sleep(100)
      let button10: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_010'));
      await Utils.sleep(100)
      await button10.click()
      await Utils.sleep(100)
      let button11: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_011'));
      await Utils.sleep(100)
      await button11.click()
      await Utils.sleep(100)
      let button12: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_012'));
      await Utils.sleep(100)
      await button12.click()
      await Utils.sleep(100)
      let button13: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0013_013'));
      await Utils.sleep(100)
      await button13.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0013 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0012
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0012
    * @tc.desc    1、设置13个按钮，点击后给Tabs页签组件模糊效果改为Thin、Regular、Thick、
                     BACKGROUND_THIN、BACKGROUND_REGULAR、BACKGROUND_THICK、
                     BACKGROUND_ULTRA_THICK、NONE、
                     COMPONENT_ULTRA_THIN、
                     COMPONENT_THIN、COMPONENT_REGULAR、
                     COMPONENT_THICK、COMPONENT_ULTRA_THICK
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow,Blue、Green
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0012', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0012 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0012")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      let button4: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_004'));
      await Utils.sleep(100)
      await button4.click()
      await Utils.sleep(100)
      let button5: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_005'));
      await Utils.sleep(100)
      await button5.click()
      await Utils.sleep(100)
      let button6: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_006'));
      await Utils.sleep(100)
      await button6.click()
      await Utils.sleep(100)
      let button7: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_007'));
      await Utils.sleep(100)
      await button7.click()
      await Utils.sleep(100)
      let button8: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_008'));
      await Utils.sleep(100)
      await button8.click()
      await Utils.sleep(100)
      let button9: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_009'));
      await Utils.sleep(100)
      await button9.click()
      await Utils.sleep(100)
      let button10: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_010'));
      await Utils.sleep(100)
      await button10.click()
      await Utils.sleep(100)
      let button11: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_011'));
      await Utils.sleep(100)
      await button11.click()
      await Utils.sleep(100)
      let button12: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_012'));
      await Utils.sleep(100)
      await button12.click()
      await Utils.sleep(100)
      let button13: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0012_013'));
      await Utils.sleep(100)
      await button13.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0012 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0017
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0017
    * @tc.desc    1、设置13个按钮，点击后给Tabs页签组件模糊效果改为Thin、Regular、Thick、
                     BACKGROUND_THIN、BACKGROUND_REGULAR、BACKGROUND_THICK、
                     BACKGROUND_ULTRA_THICK、NONE、
                     COMPONENT_ULTRA_THIN、
                     COMPONENT_THIN、COMPONENT_REGULAR、
                     COMPONENT_THICK、COMPONENT_ULTRA_THICK
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow,Blue、Green
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0017', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0017 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0017")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      let button4: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_004'));
      await Utils.sleep(100)
      await button4.click()
      await Utils.sleep(100)
      let button5: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_005'));
      await Utils.sleep(100)
      await button5.click()
      await Utils.sleep(100)
      let button6: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_006'));
      await Utils.sleep(100)
      await button6.click()
      await Utils.sleep(100)
      let button7: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_007'));
      await Utils.sleep(100)
      await button7.click()
      await Utils.sleep(100)
      let button8: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_008'));
      await Utils.sleep(100)
      await button8.click()
      await Utils.sleep(100)
      let button9: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_009'));
      await Utils.sleep(100)
      await button9.click()
      await Utils.sleep(100)
      let button10: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_010'));
      await Utils.sleep(100)
      await button10.click()
      await Utils.sleep(100)
      let button11: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_011'));
      await Utils.sleep(100)
      await button11.click()
      await Utils.sleep(100)
      let button12: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_012'));
      await Utils.sleep(100)
      await button12.click()
      await Utils.sleep(100)
      let button13: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0017_013'));
      await Utils.sleep(100)
      await button13.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0017 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0011
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0011
    * @tc.desc    1、设置13个按钮，点击后给Tabs页签组件模糊效果改为Thin、Regular、Thick、
                     BACKGROUND_THIN、BACKGROUND_REGULAR、BACKGROUND_THICK、
                     BACKGROUND_ULTRA_THICK、NONE、
                     COMPONENT_ULTRA_THIN、
                     COMPONENT_THIN、COMPONENT_REGULAR、
                     COMPONENT_THICK、COMPONENT_ULTRA_THICK
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow,Blue、Green
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0011', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0011 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0011")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      let button4: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_004'));
      await Utils.sleep(100)
      await button4.click()
      await Utils.sleep(100)
      let button5: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_005'));
      await Utils.sleep(100)
      await button5.click()
      await Utils.sleep(100)
      let button6: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_006'));
      await Utils.sleep(100)
      await button6.click()
      await Utils.sleep(100)
      let button7: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_007'));
      await Utils.sleep(100)
      await button7.click()
      await Utils.sleep(100)
      let button8: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_008'));
      await Utils.sleep(100)
      await button8.click()
      await Utils.sleep(100)
      let button9: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_009'));
      await Utils.sleep(100)
      await button9.click()
      await Utils.sleep(100)
      let button10: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_010'));
      await Utils.sleep(100)
      await button10.click()
      await Utils.sleep(100)
      let button11: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_011'));
      await Utils.sleep(100)
      await button11.click()
      await Utils.sleep(100)
      let button12: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_012'));
      await Utils.sleep(100)
      await button12.click()
      await Utils.sleep(100)
      let button13: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0011_013'));
      await Utils.sleep(100)
      await button13.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0011 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0010
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0010
    * @tc.desc    1、设置13个按钮，点击后给Tabs页签组件模糊效果改为Thin、Regular、Thick、
                     BACKGROUND_THIN、BACKGROUND_REGULAR、BACKGROUND_THICK、
                     BACKGROUND_ULTRA_THICK、NONE、
                     COMPONENT_ULTRA_THIN、
                     COMPONENT_THIN、COMPONENT_REGULAR、
                     COMPONENT_THICK、COMPONENT_ULTRA_THICK
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow,Blue、Green
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0010', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0010")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      let button3: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      let button4: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_004'));
      await Utils.sleep(100)
      await button4.click()
      await Utils.sleep(100)
      let button5: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_005'));
      await Utils.sleep(100)
      await button5.click()
      await Utils.sleep(100)
      let button6: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_006'));
      await Utils.sleep(100)
      await button6.click()
      await Utils.sleep(100)
      let button7: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_007'));
      await Utils.sleep(100)
      await button7.click()
      await Utils.sleep(100)
      let button8: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_008'));
      await Utils.sleep(100)
      await button8.click()
      await Utils.sleep(100)
      let button9: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_009'));
      await Utils.sleep(100)
      await button9.click()
      await Utils.sleep(100)
      let button10: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_010'));
      await Utils.sleep(100)
      await button10.click()
      await Utils.sleep(100)
      let button11: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_011'));
      await Utils.sleep(100)
      await button11.click()
      await Utils.sleep(100)
      let button12: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_012'));
      await Utils.sleep(100)
      await button12.click()
      await Utils.sleep(100)
      let button13: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0010_013'));
      await Utils.sleep(100)
      await button13.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0010 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0050
    * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0050
    * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度，
    *                设置TabBar背景颜色为backgroundColor(0xF5F5F5),
    *                设置barOverlap(true)
                  2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                  3、TabBar设置barWidth(50)
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0050', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0050")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0050 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0049
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0049
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度，
     *                设置TabBar背景颜色为backgroundColor(0xF5F5F5),
     *                设置barOverlap(true)
              2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
              3、TabBar设置barWidth(100)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0049', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0049 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0049")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0049 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0048
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0048
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度，设置
                      TabBar背景颜色为backgroundColor(0xF5F5F5),设置barOverlap(true)
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、设置分割线线宽为strokeWidth(1),颜色为红色
                   4、添加padding设置为10vp
                   5、添加按钮Button(“关闭模糊效果),添加点击效果，backgroundBlurStyle参数设置为NONE
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0048', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0048 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0048")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0048_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0048_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0048 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0042
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0042
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Fixed),所有TabBar平均分配barWidth宽度；设置
                      SelecteMode =Selectedlode.BOARD
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、TabBar设置barWidth(50)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0042', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0042 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0042")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0042 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0046
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0046
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Fixed),所有TabBar平均分配barWidth宽度；
     *                设置Selectedlode =Selectedlode.BOARD;
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green
                   3、添加padding设置为10vp
 */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0046', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0046 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0046 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0043
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0043
     * @tc.desc    1、设置Tabs组件barMode(Barode.Scrollable),使得每一个TabBar均使用实际布局宽度；
                     设置Selectedllode =Selectedlode.BOARD,BarMode参数设为Scrollable
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、TabBar设置barVidth(80)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0043', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0043 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0043 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0045
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0045
     * @tc.desc    1、设置Tabs组件barMode(Barode.Scrollable),使得每一个TabBar均使用实际布局宽度；设置Selectedilode =Selectedlode.BOARD;
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green
                   3、添加padding设置为10vp
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0045', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0045 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0045 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0044
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0044
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度；
     *                设置Selectedllode =Selectedllode.BOARD
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、TabBar设置barHeight(300)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0044', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0044 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0044 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0038
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0038
     * @tc.desc    1、设置Tabs组件barMode(Bar)ode.Scrollable),使得每一个TabBar均使用实际布局宽度
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green
                   3、添加padding设置为10vp
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0038', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0038 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0038 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0041
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0041
     * @tc.desc    1、设置Tabs组件barMode(BarIode.Scrollable),使得每一个TabBar均使用实际布局宽度，
     *                设置TabBar背景颜色为backgroundColor(0xF5F5F5),
     *                设置barOverlap(true)
     *             2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
               3、TabBar设置barWidth(50)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0041', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0041 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0041 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0040
     * @tc.desc    1、设置Tabs组件barMode(BarIode.Scrollable),使得每一个TabBar均使用实际布局宽度，
     *                设置TabBar背景颜色为backgroundColor(0xF5F5F5),
     *                设置barOverlap(true)
     *             2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、TabBar设置barWidth(100)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0040', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0040 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0039
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0039
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度，
     *                设置TabBar背景颜色为backgroundColor(0xF5F5F5),
     *                 设置barOverlap(true)
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、设置分割线线宽为strokeWidth(1),颜色为红色
                   4、添加padding设置为10vp
                   5、添加按钮Button(“关闭模糊效果),添加点击效果，backgroundBlurStyle参数设置为NONE
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0039', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0039 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0039")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0039_001'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0039_002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0039 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0033
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0033
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Fixed),所有TabBar平均分配barWidth宽度；
     *                设置Selectedllode =Selectedlode.BOARD
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、YellowBlue、Green、red、blue
                   3、TabBar设置barWidth(50)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0033', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0033 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0033 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0034
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0034
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度；
     *                设置Selectedilode =Selectedlode.BOARD,BarMode参数设为Scrollable
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、TabBar设置barWidth(80)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0034', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0034 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0034 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0036
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0036
     * @tc.desc    1、设置Tabs组件barMode(Barode.Scrollable),使得每一个TabBar均使用实际布局宽度；
     *                 设置Selectedllode =Selectedlode.BOARD;
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green
                   3、添加padding设置为10vp
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0036', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0036 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0036")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0036 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0035
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0035
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度；
     *                设置Selectedllode =Selectedlode.BOARD
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、TabBar设置barHeight(300)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0035', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0035 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0035 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0032
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0032
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度
                   2、Tabs组件中添加四个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green
                      对Tabs组件添加Magin设置为12vp
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0032', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0032 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0032 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0031
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0031
     * @tc.desc    1、设置Tabs组件barMode(Barode.Scrollable),使得每一个TabBar均使用实际布局宽度，
     *                设置TabBar背景颜色为backgroundColor(0xF5F5F5),
     *                设置bar0verlap(true)
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、TabBar设置barWidth(50)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0031', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0031 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0031 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0030
     * @tc.desc    1、设置Tabs组件barMode(Barode.Scrollable),使得每一个TabBar均使用实际布局宽度，
     *                设置TabBar背景颜色为backgroundColor(0xF5F5F5),
     *                设置bar0verlap(true)
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、TabBar设置barWidth(100)
     */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0030', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0030 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0029
     * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0029
     * @tc.desc    1、设置Tabs组件barMode(BarMode.Scrollable),使得每一个TabBar均使用实际布局宽度，
     *               设置TabBar背景颜色为backgroundColor(0xF5F5F5),
     *                设置barOverlap(true)
                   2、Tabs组件中添加六个TabContent,分别设置SubTabBarStyle为Pink、Yellow、Blue、Green、red、blue
                   3、设置分割线线宽为strokeWidth(1),颜色为红色
                   4、添加padding设置为10vp
                   5、添加按钮Button(“关闭模糊效果),添加点击效果，backgroundBlurStyle参数设置为NONE
      */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0029', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0029 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0029")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.delayMs(1000)
      let button1: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0029_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0029_002'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0029 finish.`);
      done()
    })
    /*
            * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0018
            * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0018
            * @tc.desc    nav width
        */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0018', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0018 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0018")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0018_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0018 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0019
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0019
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0019', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0019 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0019")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentNavTabsBlurStyle0019_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0019 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0020
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0020
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0020")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0020 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0021
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0021
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0021', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0021 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0021")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0021 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0022
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0022
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0022', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0022 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0022")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0022 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0023
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0023
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0023', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0023 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0023")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0023 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0024
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0024
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0024', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0024 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0024")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0024 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0025
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0025
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0025', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0025 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0025")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0025 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0026
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0026
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0026', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0026 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0026")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0026 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0027
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0027
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0027', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0026 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0027")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0027 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0028
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0028
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0028', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0028 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0028")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0028 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0047
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0047
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0047', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0047 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0047")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0047 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0051
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0051
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0051', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0051 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0051")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0051 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0052
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0052
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0052', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0052 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0052")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0052 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0053
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0053
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0053', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0053 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0053")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0053 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0060
        * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0060
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0060")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0060 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0080
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0080
    * @tc.desc    nav width
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0080")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0080 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0100
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0100
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0100")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0100 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0110
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0110
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0110")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0110 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0160
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0160
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0160")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0160 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0170
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0170
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0170")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0170 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0180
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0180
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0180")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0180 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0190
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0190
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0190")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0190 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0200
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0200
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `ccSUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0200")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ccSUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0200 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0210
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0210
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `ccSUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0210")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ccSUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0210 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0220
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0220
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `ccSUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0220")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ccSUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0220 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0230
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0230
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0230")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0230 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0240
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0240
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0240")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0240 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0250
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0250
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0250")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0250 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0260
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0260
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0260")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0260 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0270
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0270
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0270")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0270 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0280
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0280
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0280")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0280 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0290
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0290
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0290")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0290 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0300
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0300
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0300")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0300 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0310
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0310
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0310")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0310 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0320
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0320
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0320")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0320 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0340
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0340
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0340")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0340 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0350
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0350
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0350")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0350 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0360
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0360
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0360")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0360 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0370
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0370
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0370")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0370 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0380
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0380
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0380")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0380 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0390
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0390
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0390")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0390 finish.`);
      done()
    })
    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0400
    * @tc.name   SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0400
    * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsBlurStyle/UIComponentNavTabsBlurStyle0400")
      await Utils.sleep(1000)
      await windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_BLURSTYLE_0400 finish.`);
      done()
    })


  })
}
