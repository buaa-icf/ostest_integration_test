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
import { Component, Driver, MouseButton, ON } from '@ohos.UiTest'

/*
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

export default function UIComponentPopupPromptInterface001() {

  describe('UIComponentPopupPromptInterface001', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0290
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0290
     * @tc.desc      changeDuration = 1000s
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface001")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface001_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1500)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0290 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0300
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0300
     * @tc.desc      changeDuration = 15000s
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface001")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface001_button_001'))
      let changeDuration: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface001_button_002'))
      await Utils.sleep(500)
      await changeDuration?.click()
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0300 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0310
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0310
     * @tc.desc      changeDuration = 5000s
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface001")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface001_button_001'))
      let changeDuration: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface001_button_003'))
      await Utils.sleep(500)
      await changeDuration?.click()
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0310 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0270
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0270
     * @tc.desc      bottom = 150px
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface002")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0270 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0280
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0280
     * @tc.desc      bottom = 150vp
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface002")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_button_001'))
      let changeBottom: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_change_01'))
      await Utils.sleep(500)
      await changeBottom?.click()
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0280 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0250
     * @tc.desc      bottom = '0'
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface002")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_button_001'))
      let changeBottom: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_change_02'))
      await Utils.sleep(500)
      await changeBottom?.click()
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0250 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0320
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0320
     * @tc.desc      bottom = '-100'
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface002")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_button_001'))
      let changeBottom: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_change_03'))
      await Utils.sleep(500)
      await changeBottom?.click()
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0320 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0260
     * @tc.desc      bottom = '150aaa'
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface002")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_button_001'))
      let changeBottom: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface002_change_04'))
      await Utils.sleep(500)
      await changeBottom?.click()
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0260 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0220
     * @tc.desc      bottom = -100
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface003")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface003_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0220 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0230
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0230
     * @tc.desc      bottom = 0
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface003")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface003_button_001'))
      let changeBottom: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface003_change_01'))
      await Utils.sleep(500)
      await changeBottom?.click()
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0230 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0010
     * @tc.desc      show ActionMenu 同步返回result
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface004")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface004_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      let item: Component = await driver.findComponent(ON.text('item1'))
      await Utils.sleep(500)
      await item?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0010 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0020
     * @tc.desc      show ActionMenu 异步返回result
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface006")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface006_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      let item: Component = await driver.findComponent(ON.text('item1'))
      await Utils.sleep(500)
      await item?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0010 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0040
     * @tc.desc      show ActionMenu set4个button
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface006")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface006_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0040 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0110
     * @tc.desc      show ActionMenu no title
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface005")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface005_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0110 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0080
     * @tc.name      SSUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0080
     * @tc.desc      show ActionMenu no title & setColor
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface005")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface005_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0080 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0120
     * @tc.desc      show ActionMenu set title
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface006")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface006_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0120 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0140
     * @tc.desc      show Dialog 异步返回result
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface007")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface007_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      let item: Component = await driver.findComponent(ON.text('button1'))
      await Utils.sleep(500)
      await item?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0140 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0130
     * @tc.desc      show Dialog 同步返回result
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface008")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface008_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      let item: Component = await driver.findComponent(ON.text('button1'))
      await Utils.sleep(500)
      await item?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0130 finish.`);
      done()
    })
    /*
        * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0200
        * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0200
        * @tc.desc       show Dialog not set title
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface009")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface009_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0200 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0210
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0210
     * @tc.desc       show Dialog set title为string类型
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface008")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface008_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0210 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0150
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0150
     * @tc.desc       show Dialog test not set button
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface0010")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface0010_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0150 finish.`);
      done()
    })
    /*
        * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0160
        * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0160
        * @tc.desc       show Dialog test set three button
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface008")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface008_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0160 finish.`);
      done()
    })

    /*
        * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0190
        * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0190
        * @tc.desc       show Dialog test set message为string
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface009")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface009_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0190 finish.`);
      done()
    })

    /*
        * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0170
        * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0170
        * @tc.desc       show Dialog test set 4个button
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface0011")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface0011_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0170 finish.`);
      done()
    })

    /*
        * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0180
        * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0180
        * @tc.desc       show Dialog test not set message
       */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupPromptInterface/UIComponentPopupPromptInterface0012")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupPromptInterface0012_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_PROMPT_INTERFACE_0180 finish.`);
      done()
    })

  })
}
