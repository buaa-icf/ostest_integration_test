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

/*
 * UiComponentButtonSelectAlign
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

export default function UiComponentButtonSelectAlign() {

  describe('UiComponentButtonSelectAlign', () => {


    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0010
     * @tc.desc   : optionWidth-OptionWidthMode-FIT_CONTENT.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0010")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0010_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0020
     * @tc.desc   : optionWidth-OptionWidthMode-FIT_TRIGGER.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0020")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0020_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0030
     * @tc.desc   : optionWidth-Dimension-50px.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0030")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0030_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0040
     * @tc.desc   : optionWidth-Dimension-0px.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0040")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0040_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0050
     * @tc.desc   : optionWidth-Dimension-(-50)px.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0050")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0050_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0060
     * @tc.desc   : optionWidth-Dimension-50vp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0060")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0060_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0070
     * @tc.desc   : optionWidth-Dimension-0vp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0070")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0070_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0080
     * @tc.desc   : optionWidth-Dimension-(-50)vp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0080")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0080_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0090
     * @tc.desc   : optionWidth-Dimension-50fp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0090")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0090_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0100
     * @tc.desc   : optionWidth-Dimension-0fp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0100")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0100_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0110
     * @tc.desc   : optionWidth-Dimension-(-50)fp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0110")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0110_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0120
     * @tc.desc   : optionWidth-Dimension-50lpx.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0120")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0120_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0130
     * @tc.desc   : optionWidth-Dimension-0lpx.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0130")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0130_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0140
     * @tc.desc   : optionWidth-Dimension-(-50)lpx.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0140 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0140")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0140_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0150
     * @tc.desc   : optionWidth-Dimension-80%.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0150")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0150_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0160
     * @tc.desc   : optionWidth-Dimension-0.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0160")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0160_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0170
     * @tc.desc   : optionWidth-Dimension-(-50%).
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0170")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0170_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0180
     * @tc.desc   : optionWidth-Dimension-Resource.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0180")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0180_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0190
     * @tc.desc   : Extreme width value of the dropdown menu item is -50000vp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0190")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0190_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0200
     * @tc.desc   : optionHeight-Dimension-50px
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0200")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0200_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0210
     * @tc.desc   : optionHeight-Dimension-0px
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0210")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0210_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0220
     * @tc.desc   : optionHeight-Dimension-(-50)px
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0220")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0220_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0230
     * @tc.desc   : optionHeight-Dimension-50vp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0230")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0230_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0240
     * @tc.desc   : optionHeight-Dimension-0vp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0240")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0240_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0250
     * @tc.desc   : optionHeight-Dimension-(-50)vp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0250 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0250")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0250_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0260
     * @tc.desc   : optionHeight-Dimension-50fp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0260")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0260_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0270
     * @tc.desc   : optionHeight-Dimension-0fp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0270")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0270_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0280
     * @tc.desc   : optionHeight-Dimension-(-50)fp
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0280")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0280_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0290
     * @tc.desc   : optionHeight-Dimension-50lpx
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0290 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0290")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0290_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0300
     * @tc.desc   : optionHeight-Dimension-0lpx
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0300 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0300")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0300_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0310
     * @tc.desc   : optionHeight-Dimension-(-50)lpx
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0310 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0310")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0310_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0320
     * @tc.desc   : optionHeight-Dimension-80%
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0320 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0320")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0320_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0330
     * @tc.desc   : optionHeight-Dimension-0
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0330 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0330")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0330_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0340
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0340
     * @tc.desc   : optionHeight-Dimension-(-50%)
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0340 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0340")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0340_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0350
     * @tc.desc   : optionHeight-Dimension-Resource
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0350 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0350")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0350_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0360
     * @tc.desc   : Extreme height value of the dropdown menu item is -50000VP
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0360 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0360")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0360_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0360 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0370
     * @tc.desc   : Set the dropdown menu text to be smaller (8vp) and the dropdown item height to be larger (50vp).
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0370 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0370")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0370_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0380
     * @tc.desc   : Set dropdown menu text size larger (50vp) and item height smaller (20vp).
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0380 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0380")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0380_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0380 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0390
     * @tc.desc   : Longer dropdown text, smaller dropdown width (10vp).
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0390 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0390")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0390_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0390 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0400
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0400
     * @tc.desc   : Dropdown menu text is long and large (50vp), Dropdown width and height are small (20vp).
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0400 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0400")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0400_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0410
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0410
     * @tc.desc   : Normal ui, set backgroundcolor is red.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0410 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0410")
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('UiComponentButtonSelectAlign0410_001'));
      await select.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0410 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0420
     * @tc.desc   : Minimum width layout for dropdown buttons.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0420 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectAlign/UiComponentButtonSelectAlign0420")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ALIGN_0420 finish.`);
      done()
    })

  })
}
