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

export default function ArkUITabsLabelStylefont() {

  describe('ArkUITabsLabelStylefont', () => {


    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_font_005
     * @tc.name    ArkUI_Tabs_LabelStyle_font_005
     * @tc.desc    1、创建tabs,设置SubTabBarStyle样式
               2、设置镜像效果
    */
    it('ArkUI_Tabs_LabelStyle_font_005', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_005 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont005")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStylefont005_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_005 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_font_016
     * @tc.name    ArkUI_Tabs_LabelStyle_font_016
     * @tc.desc    1、启动应用
                   2、设置属性font参数为异常值
                   3、重新设置正常值后重复步疆1和2
    */
    it('ArkUI_Tabs_LabelStyle_font_016', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_016 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont016")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStylefont016_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_016 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_font_015
     * @tc.name    ArkUI_Tabs_LabelStyle_font_015
     * @tc.desc    1、启动应用
               2、设置属性font参数为异常值
               3、重新设置正常值后重复步疆1和2
    */
    it('ArkUI_Tabs_LabelStyle_font_015', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_015 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont015")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStylefont015_001'));
      await Utils.sleep(500)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_015 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_font_011
     * @tc.name    ArkUI_Tabs_LabelStyle_font_011
     * @tc.desc    1、启动应用
                   2、设置属性font参数为正常值
                   3、重新设置正常值后重复步骤1和2
   */
    it('ArkUI_Tabs_LabelStyle_font_011', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_011 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_011 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_font_007
     * @tc.name    ArkUI_Tabs_LabelStyle_font_007
     * @tc.desc    1、启动应用
               2、设置属性font参数为正常值
               3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_font_007', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_007 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_007 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_font_010
     * @tc.name    ArkUI_Tabs_LabelStyle_font_010
     * @tc.desc    1、启动应用
           2、设置属性font参数为正常值
           3、重新设置正常值后重复步骤1和2
    */
    it('ArkUI_Tabs_LabelStyle_font_010', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_010 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_010 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_font_008
     * @tc.name    ArkUI_Tabs_LabelStyle_font_008
     * @tc.desc    1、启动应用
                   2、设置属性font参数为正常值
                   3、重新设置正常值后重复步骤1和2
   */
    it('ArkUI_Tabs_LabelStyle_font_008', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_008 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_008 finish.`);
      done()
    })

    /*
     * @tc.number  ArkUI_Tabs_LabelStyle_font_009
     * @tc.name    ArkUI_Tabs_LabelStyle_font_009
     * @tc.desc    1、启动应用
                   2、设置属性font参数为正常值
                   3、重新设置正常值后重复步骤1和2
   */
    it('ArkUI_Tabs_LabelStyle_font_009', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_009 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_009 finish.`);
      done()
    })

    /*
* @tc.number  ArkUI_Tabs_LabelStyle_font_020
* @tc.name    ArkUI_Tabs_LabelStyle_font_020
* @tc.desc    1、启动应用
              2、设置属性font参数为异常值
              3、重新设置正常值后重复步骤1和2
*/
    it('ArkUI_Tabs_LabelStyle_font_020', 0, async (done: Function) => {
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_020 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont020")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('ArkUITabsLabelStylefont020_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.error('TEST', `ArkUI_Tabs_LabelStyle_font_020 finish.`);
      done()
    })
    /*
            * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_006
            * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_006
            * @tc.desc    font: {size: -1}
        */
    it('ARKUI_TABS_LABELSTYLE_FONT_006', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_006 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont006")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_006 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_019
        * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_019
        * @tc.desc    font: undefined
    */
    it('ARKUI_TABS_LABELSTYLE_FONT_019', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_019 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont019")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_019 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_001
        * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_001
        * @tc.desc    font: {size: 20}
    */
    it('ARKUI_TABS_LABELSTYLE_FONT_001', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_001 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleFont001_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_001 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_003
        * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_003
        * @tc.desc    font: {size: 50%}
    */
    it('ARKUI_TABS_LABELSTYLE_FONT_003', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_003 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleFont003_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_003 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_004
        * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_004
        * @tc.desc    font: {size: 10}
    */
    it('ARKUI_TABS_LABELSTYLE_FONT_004', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_004 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleFont004_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_004 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_018
        * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_018
        * @tc.desc    font: {size: 10}
    */
    it('ARKUI_TABS_LABELSTYLE_FONT_018', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_018 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleFont018_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_018 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_017
        * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_017
        * @tc.desc    style:FontStyle.Normal
    */
    it('ARKUI_TABS_LABELSTYLE_FONT_017', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_017 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleFont017_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_017 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_013
        * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_013
        * @tc.desc    weight:200
    */
    it('ARKUI_TABS_LABELSTYLE_FONT_013', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_013 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleFont013_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_013 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_LABELSTYLE_FONT_012
        * @tc.name    ARKUI_TABS_LABELSTYLE_FONT_012
        * @tc.desc    weight: FontTeight.Bolder
    */
    it('ARKUI_TABS_LABELSTYLE_FONT_012', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_012 start.`);
      Settings.createWindow("testability/pages/ArkUITabsLabelStylefont/ArkUITabsLabelStylefont012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('ArkUITabsLabelstyleFont012_001'))
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_LABELSTYLE_FONT_012 finish.`);
      done()
    })
  })
}
