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
import { uiAppearance } from '@kit.ArkUI'
import { BusinessError } from '@kit.BasicServicesKit'

/*
 * UIComponentFunctionSelectSymbol
 *
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function UIComponentFunctionSelectSymbol() {

  describe('UIComponentFunctionSelectSymbol', () => {

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0010
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0010
     * @tc.desc   : select组件下拉菜单项单独设置symbolicon(fontsize:999，fontcolor: “#ffffff")
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0010', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0010")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0010_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0010_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0010 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0020
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0020
     * @tc.desc   : select组件下拉菜单项同时设置symbolicon，使用modifier动态改变symbol图片和symbol(fontsize、fontcolor)样式
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0020', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0020")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0020_001'));
      await button.click();
      await Utils.sleep(500);
      let button1: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0020_002'));
      await button1.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0020_003'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0020 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0030
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0030
     * @tc.desc   : select组件下拉菜单项单独设置symbolicon(fontsize:24，fontcolor:#E5182431)
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0030', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0030")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0030_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0030_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0030 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0040
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0040
     * @tc.desc   : select组件下拉莱单项设置icon资源:引用图片，symbolicon为undefined
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0040', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0040")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0040_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0040_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0040 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0050
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0050
     * @tc.desc   : select组件下拉菜单项同时设置icon、symbolicon为undefined
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0050', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0050")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0050_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0050_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0050 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0060
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0060
     * @tc.desc   : select组件下拉菜单项单独设置symbolicon,icon为undefined
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0060', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0060")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0060_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0060_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0060 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0070
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0070
     * @tc.desc   : select组件下拉菜单项设置icon、symbolicon (fontsize:引用"$r(app.string.string50)50",fontcolor:"$r(app.color.color1)"#ff000000"")
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0070', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0070")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0070_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0070_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0070 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0090
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0090
     * @tc.desc   : select组件下拉菜单项同时不设置icon、symbolicon
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0090', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0090")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0090_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0090_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0090 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0110
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0110
     * @tc.desc   : select组件下拉菜单项单独设置icon资源:引用图片
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0110', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0110")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0110_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0110_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0110 finish.`);
      done();
    })

    /*
     * @tc.number : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0120
     * @tc.name   : ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0120
     * @tc.desc   : select组件下拉菜单项单独设置symbolicon (fontsize:-24,fontcolor: 0xffa500)
     */
    it('ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0120', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentFunctionSelectSymbol/UIComponentFunctionSelectSymbol0120")
      await Utils.sleep(500);
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0120_001'));
      await button.click();
      await Utils.sleep(500);
      let select: Component = await driver.findComponent(ON.id('UIComponentFunctionSelectSymbol0120_002'));
      await select.click();
      await Utils.sleep(500);
      windowSnap.snapShot();
      await Utils.sleep(500);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_SELECT_SYMBOL_0120 finish.`);
      done();
    })

  })
}
