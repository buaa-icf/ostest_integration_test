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

export default function UIComponentTabTabBarSymbol() {

  describe('UIComponentTabTabBarSymbol', () => {


    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0040
         * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0040
         * @tc.desc    1、创建tabs,使用BottomTabBarStyle样式
         *             2、icon使用TabBarSymbol引入其他资源；selected态传系统Symbol资源
        */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0040', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0040")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('Blue'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let button2:Component = await driver.findComponent(ON.id('Pink'));
      await Utils.sleep(1000)
      await button2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0040 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0090
         * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0090
         * @tc.desc    1、创建tabs,BottomTabBarStyle,icon使用TabBarSymbol
         *             2、normal态SymbolGlphlIodifier设置fontSize设置大于vidth和height的值
        */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0090', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0090 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0120
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSyabol
     *             2、normal态SymbolGlphlIodifier设置null
    */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0120', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0120")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0120 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0110
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSyabol
     *             2、normal态SymbolGlphlIodifier设置undefined
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0110', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0110")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0110 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0070
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSyabol
     *             2、normal态SymbolGlphlIodifier渲染策略为MULTIPLE_COLOR,设置4个fontcolor属性
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0070', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0070")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0070 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0080
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSyabol
     *             2、normal态SymbolGlphlIodifier渲染策略为OPACITY,设置4个fontcolor属性
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0080', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0080")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0060
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSyabol
     *             2、normal态SymbolGlphlIodifier渲染策略为单色,设置4个fontcolor属性
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0060', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0060 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0140
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0140
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSymbol
     *             2、normal态SymbolGlphlIodifier设置可以动态切换入参
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0140', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0140")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentTabTabBarSymbol0140_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0140 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0130
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSymbol
     *              2、nornal态SymbolGlyphModifier设置可以动态切换入
参
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0130', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0130")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentTabTabBarSymbol0130_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0130 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0260
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0260
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSymbol
     *              2、nornal态SymbolGlyphModifier设置可以动态切换入参
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0260', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0260")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentTabTabBarSymbol0260_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0260 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0190
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0190
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSymbol
     *              2、nornal态SymbolGlyphModifier设置可以动态切换入参
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0190', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0190")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let button1:Component = await driver.findComponent(ON.id('UIComponentTabTabBarSymbol0190_001'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0190 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0180
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSymbol
     *             2、selected态SymbolGlphlIodifier不设置
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0180', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0180")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0180 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0160
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSymbol
     *             2、selected态SymbolGlphlIodifier设置null
    */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0160', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0160")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0160 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0170
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSymbol
     *             2、selected态SymbolGlphlIodifier设置undefined
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0170', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0170")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0170 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0030
     * @tc.desc    1、创建tabs,使用BottomTabBarStyle样式
                  2、icon使用TabBarSymbol引入其他资源
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0030', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0030 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0020
     * @tc.desc    1、创建tabs,使用BottomTabBarStyle样式
     *             2、icon使用TabBarSymbol引入系统media资源
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0020', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0020 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0010
     * @tc.desc    1、创建tabs,使用BottomTabBarStyle样式
     *             2、icon使用TabBarSymbol引入系统symbol资源
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0010', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0010 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0230
     * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0230
     * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSymbol
     */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0230', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0230")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0230 finish.`);
      done()
    })

    /*
 * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0150
 * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0150
 * @tc.desc    1、创建tabs,BottonTabBarStyle,icon使用TabBarSynbol
 *             2、normal态SymbolGlphIodifier引入系统symbol资源
 */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0150', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabBarSymbol0150")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0150 finish.`);
      done()
    })
    /*
            * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0050
            * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0050
            * @tc.desc    TabBarSynbol.normal & selected
        */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabbarTabbarsymbol0050")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentTabTabbarTabbarsymbol0050_001'))
      await button.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0050 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0240
        * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0240
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabbarTabbarsymbol0050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0240 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0250
        * @tc.name    SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0250
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentTabTabBarSymbol/UIComponentTabTabbarTabbarsymbol0250")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TAB_TABBAR_TABBARSYMBOL_0250 finish.`);
      done()
    })
  })
}
