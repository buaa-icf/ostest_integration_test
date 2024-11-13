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
import { Component, Driver ,ON } from '@ohos.UiTest'

export default function ArkUITabsLabelStyleUnselectedColor() {

  describe('ArkUITabsLabelStyleUnselectedColor', () => {

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_026
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_026
     * @tc.desc    1、启动应用
     *             2、设置属性unbselectedColor参数为正常值
                   3、重新设置异常值后重复步骤1和2
     */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_026', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_026 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor026")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor026_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_026 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_028
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_028
     * @tc.desc    1、启动应用
     *             2、设置属性unbselectedColor参数为正常值
                   3、重新设置异常值后重复步骤1和2
     */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_028', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_028 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor028")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor028_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_028 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_027
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_027
     * @tc.desc    1、启动应用
     *             2、设置属性unbselectedColor参数为正常值
               3、重新设置异常值后重复步骤1和2
     */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_027', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_027 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor027")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor027_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_027 finish.`);
      done()
    })

    /*
 * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_021
 * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_021
 * @tc.desc    1、启动应用
 *             2、设置属性unbselectedColor参数为正常值
           3、重新设置异常值后重复步骤1和2
 */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_021', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_021 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor021")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor021_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_021 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_022
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_022
     * @tc.desc    1、启动应用
     *             2、设置属性unbselectedColor参数为正常值
                   3、重新设置异常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_022', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_022 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor022")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor022_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_022 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_025
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_025
     * @tc.desc    1、启动应用
     *             2、设置属性unbselectedColor参数为正常值
                   3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_025', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_025 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor025")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor025_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_025 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_011
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_011
     * @tc.desc    1、启动应用
                   2、设置属性unselectedColor参数为正常值
                   3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_011', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_011 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor011")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor011_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_011 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_012
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_012
     * @tc.desc    1、启动应用
               2、设置属性unselectedColor参数为正常值
               3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_012', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_012 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor012")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor012_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_012 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_017
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_017
     * @tc.desc    1、启动应用
           2、设置属性unselectedColor参数为正常值
           3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_017', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_017 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor017")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor017_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_017 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_001
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_001
     * @tc.desc    1、启动应用
                   2、设置属性unselectedColor参数为正常值
                   3、重新设置正常值后重复步骤1和2
*/
    it('ArkUI_Tabs_LabelStyle_unselectedColor_001', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_001 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor001")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor001_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_001 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_005
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_005
     * @tc.desc    1、启动应用
               2、设置属性unselectedColor参数为正常值
               3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_005', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_005 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor005")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor005_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_005 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_unselectedColor_008
     * @tc.name    ArkUI_Tabs_LabelStyle_unselectedColor_008
     * @tc.desc    1、启动应用
           2、设置属性unselectedColor参数为正常值
           3、重新设置正常值后重复步骤1和2
     */
    it('ArkUI_Tabs_LabelStyle_unselectedColor_008', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_005 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor008")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleUnselectedColor008_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_unselectedColor_008 finish.`);
      done()
    })
    /*
            * @tc.number  ARKUI_TABS_LABELSTYLE_UNSELECTEDCOLOR_024
            * @tc.name    ARKUI_TABS_LABELSTYLE_UNSELECTEDCOLOR_024
            * @tc.desc  unselectedColor:
        */
    it('ARKUI_TABS_LABELSTYLE_UNSELECTEDCOLOR_024', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_UNSELECTEDCOLOR_024 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleUnselectedColor/ArkUITabsLabelStyleUnselectedColor024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleUnselectedcolor024_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_UNSELECTEDCOLOR_024 finish.`);
      done()
    })


  })
}
