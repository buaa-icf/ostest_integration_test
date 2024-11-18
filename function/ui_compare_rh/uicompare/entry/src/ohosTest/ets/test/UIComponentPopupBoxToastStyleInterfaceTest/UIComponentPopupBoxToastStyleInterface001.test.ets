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
import uiAppearance from '@ohos.uiAppearance'

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

export default function UIComponentPopupBoxToastStyleInterface001() {

  describe('UIComponentPopupBoxToastStyleInterface001', () => {


    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0010
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0010
     * @tc.desc      toast test 单行文本&dark
    */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxToastStyleInterface/UIComponentPopupBoxToastStyleInterface001")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxToastStyleInterface001_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(500)
      uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(500)
      uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT)
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0020
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0020
     * @tc.desc      toast test 多行文本&dark
    */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxToastStyleInterface/UIComponentPopupBoxToastStyleInterface002")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxToastStyleInterface002_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(500)
      uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(500)
      uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT)
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0020 finish.`);
      done()
    })
    /*
     * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0030
     * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0030
     * @tc.desc      toast test showMode.TOP_MOST
    */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxToastStyleInterface/UIComponentPopupBoxToastStyleInterface004")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxToastStyleInterface004_button_001'))
      let textInput: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxToastStyleInterface004_textInput_001'))
      await Utils.sleep(1000)
      await textInput?.click()
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(500)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0030 finish.`);
      done()
    })

    /*
      * @tc.number    SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0040
      * @tc.name      SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0040
      * @tc.desc      toast test message 超长
     */
    it('SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxToastStyleInterface/UIComponentPopupBoxToastStyleInterface003")
      await Utils.sleep(500)
      let driver: Driver = Driver.create()
      let button: Component =
        await driver.findComponent(ON.id('UIComponentPopupBoxToastStyleInterface003_button_001'))
      await Utils.sleep(500)
      await button?.click()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_Ul_COMPONENT_POPUPBOX_PROMPT_TOASTSTYLE_0040 finish.`);
      done()
    })

  })
}
