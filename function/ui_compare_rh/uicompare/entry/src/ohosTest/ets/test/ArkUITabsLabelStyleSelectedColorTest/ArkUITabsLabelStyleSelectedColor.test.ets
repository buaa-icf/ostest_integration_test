/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
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

export default function ArkUITabsLabelStyleSelectedColor() {

  describe('ArkUITabsLabelStyleSelectedColor', () => {


    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_027
     * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_027
     * @tc.desc    1、启动应用
                   2、设置属性font参数为正常值
                   3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_selectedColor_027', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_027 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor027")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor027_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_027 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_029
     * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_029
     * @tc.desc    1、启动应用
                   2、设置属性font参数为正常值
                   3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_selectedColor_029', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_029 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor029")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor029_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_029 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_013
     * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_013
     * @tc.desc    1、启动应用
                   2、设置属性selectedColor参数为正常值
                   3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_selectedColor_013', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_013 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor013")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor013_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_013 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_017
     * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_017
     * @tc.desc    1、启动应用
               2、设置属性selectedColor参数为正常值
               3、重新设置正常值后重复步骤1和2
*/
    it('ArkUI_Tabs_LabelStyle_selectedColor_017', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_017 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor017")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor017_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_017 finish.`);
      done()
    })
    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_019
     * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_019
     * @tc.desc    1、启动应用
               2、设置属性selectedColor参数为正常值
               3、重新设置正常值后重复步骤1和2
*/
    it('ArkUI_Tabs_LabelStyle_selectedColor_019', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_019 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor019")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor019_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_019 finish.`);
      done()
    })

    /*
 * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_001
 * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_001
 * @tc.desc    1、启动应用
           2、设置属性selectedColor参数为正常值
           3、重新设置正常值后重复步骤1和2
*/
    it('ArkUI_Tabs_LabelStyle_selectedColor_001', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_001 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor001")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor001_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_001 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_003
     * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_003
     * @tc.desc    1、启动应用
                   2、设置属性selectedColor参数为正常值
                   3、重新设置正常值后重复步骤1和2
     */
    it('ArkUI_Tabs_LabelStyle_selectedColor_003', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_003 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor003")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor003_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_003 finish.`);
      done()
    })
    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_005
     * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_005
     * @tc.desc    1、启动应用
                   2、设置属性selectedColor参数为正常值
                   3、重新设置正常值后重复步骤1和2
     */
    it('ArkUI_Tabs_LabelStyle_selectedColor_005', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_005 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor005")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor005_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_005 finish.`);
      done()
    })
    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_007
     * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_007
     * @tc.desc    1、启动应用
               2、设置属性selectedColor参数为正常值
               3、重新设置正常值后重复步骤1和2
     */
    it('ArkUI_Tabs_LabelStyle_selectedColor_007', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_007 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor007")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor007_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_007 finish.`);
      done()
    })

    /*
 * @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_011
 * @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_011
 * @tc.desc    1、启动应用
           2、设置属性selectedColor参数为正常值
           3、重新设置正常值后重复步骤1和2
 */
    it('ArkUI_Tabs_LabelStyle_selectedColor_011', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_011 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor011")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor011_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_011 finish.`);
      done()
    })

    /*
* @tc.number  ArkUI_Tabs_LabelStyle_selectedColor_009
* @tc.name    ArkUI_Tabs_LabelStyle_selectedColor_009
* @tc.desc    1、启动应用
       2、设置属性selectedColor参数为正常值
       3、重新设置正常值后重复步骤1和2
*/
    it('ArkUI_Tabs_LabelStyle_selectedColor_009', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_009 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor009")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStyleSelectedColor009_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_selectedColor_009 finish.`);
      done()
    })
    /*
            * @tc.number  ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_028
            * @tc.name    ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_028
            * @tc.desc  selectedColor:
        */
    it('ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_028', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_028 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleSelectedcolor028_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_028 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_021
        * @tc.name    ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_021
        * @tc.desc  selectedColor:
    */
    it('ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_021', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_021 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleSelectedcolor021_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_021 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_023
        * @tc.name    ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_023
        * @tc.desc  selectedColor:
    */
    it('ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_023', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_023 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleSelectedcolor023_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_023 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_024
        * @tc.name    ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_024
        * @tc.desc  selectedColor:
    */
    it('ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_024', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_024 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleSelectedcolor024_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_024 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_026
        * @tc.name    ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_026
        * @tc.desc  selectedColor:
    */
    it('ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_026', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_026 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleSelectedcolor026_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_026 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_025
        * @tc.name    ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_025
        * @tc.desc  selectedColor:
    */
    it('ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_025', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_025 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleSelectedcolor025_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_025 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_012
        * @tc.name    ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_012
        * @tc.desc  selectedColor:
    */
    it('ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_012', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_012 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleSelectedcolor012_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_012 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_015
        * @tc.name    ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_015
        * @tc.desc  selectedColor:
    */
    it('ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_015', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_015 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStyleSelectedColor/ArkUITabsLabelStyleSelectedColor015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleSelectedcolor015_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_SELECTEDCOLOR_015 finish.`);
      done()
    })


  })
}
