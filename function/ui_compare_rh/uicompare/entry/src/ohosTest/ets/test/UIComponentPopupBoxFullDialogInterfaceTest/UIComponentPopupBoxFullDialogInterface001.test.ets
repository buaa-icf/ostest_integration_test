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

export default function UIComponentPopupBoxFullDialogInterface001() {

  describe('UIComponentPopupBoxFullDialogInterface001', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0350
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0350
     * @tc.desc      customDialog test isModal为false
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface001")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface001_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0350 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0360
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0360
     * @tc.desc      customDialog test isModal为true
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface008")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface008_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0360 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0370
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0370
     * @tc.desc      customDialog test isModal为true
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface0010")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface0010_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0370 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0310
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0310
     * @tc.desc      customDialog test iterations参数设置为-1
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface001")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface001_button_001'))
      await Utils.sleep(1000)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0310 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0040
     * @tc.desc      customDialog test autoCancel动态更新
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface002")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface002_button_001'))
      await Utils.sleep(1000)
      await button?.click()
      await Utils.sleep(500)
      await driver?.click(50, 100)
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(500)
      await driver?.click(50, 100)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0040 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0080
     * @tc.desc      customDialog test open Two dialog &showInSubWindow
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface009")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface009_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      let buttonTwo: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface009_button_02'))
      await Utils.sleep(500)
      await buttonTwo?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0080 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0090
     * @tc.desc      customDialog test open Two dialog
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface003")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface003_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      let buttonTwo: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface003_button_02'))
      await Utils.sleep(500)
      await buttonTwo?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0090 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0110
     * @tc.desc      customDialog test offset
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface004")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface004_button_001'))
      await Utils.sleep(1000)
      await button?.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0110 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0050
     * @tc.desc      customDialog test change markColor
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface005")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface005_button_001'))
      await Utils.sleep(500)
      for (let index = 0; index < 4; index++) {
        await Utils.sleep(500)
        await button?.click()
        await Utils.sleep(500)
        await driver?.click(50, 100)
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0050 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0020
     * @tc.desc      customDialog test change alignment
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface006")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface006_button_001'))
      await Utils.sleep(500)
      for (let index = 0; index < 5; index++) {
        await Utils.sleep(500)
        await button?.click()
        await Utils.sleep(500)
        await driver?.click(50, 100)
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0020 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0060
     * @tc.desc      customDialog test change offset
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxFullDialogInterface/UIComponentPopupBoxFullDialogInterface007")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxFullDialogInterface007_button_001'))
      await Utils.sleep(500)
      for (let index = 0; index < 6; index++) {
        await Utils.sleep(500)
        await button?.click()
        await Utils.sleep(500)
        await driver?.click(50, 100)
      }
      await Utils.sleep(500)
      windowSnap.snapShot()
      await Utils.sleep(500)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_FULLDIALOG_0060 finish.`);
      done()
    })

  })
}
