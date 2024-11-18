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
import { KeyCode } from '@kit.InputKit'
import Window from '@ohos.window'

/*
 * UiComponentButtonSelectEnhancement
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

export default function UiComponentButtonSelectEnhancement() {

  describe('UiComponentButtonSelectEnhancement', () => {

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0030
     * @tc.desc   : Set select linearGradient.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0030")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0040
     * @tc.desc   : select-padding
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0040")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0050
     * @tc.desc   : Text length is limited and cannot display characters.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0050")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0060
     * @tc.desc   : Text length is limited to 120vp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0060")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0070
     * @tc.desc   : Text length is limited to 1900vp.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0070")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0080
     * @tc.desc   : Text is limited to only display one character.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0080")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0090
     * @tc.desc   : Select component adapts to percentage width and height - 0.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0090")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0100
     * @tc.desc   : Select component adapts to percentage width and height - 100%.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0100")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0110
     * @tc.desc   : Select component adapts to percentage width and height - 60%.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0110")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0120
     * @tc.desc   : Select component adapts to percentage width and height - 80%.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0120")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0130
     * @tc.desc   : Select component adapts to percentage width and height - <0.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0130")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0140_1
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0140_1
     * @tc.desc   : Set a gradient border for the Select without specifying width and height.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0140_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0140_1 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0140")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0140_1 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0150
     * @tc.desc   : Set the value of the Select interface to a float type reference.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0150")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0160
     * @tc.desc   : Set padding for the select component without setting width and height.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0160")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0170
     * @tc.desc   : Set the backgroundimage for the Select component.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0170")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0180
     * @tc.desc   : Select component adapts to percentage width and height - 90%.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0180")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0190
     * @tc.desc   : Set a color gradient for the Select component.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0190")
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0220
     * @tc.desc   : Trigger the select dropdown menu with the keyboard and move focus.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0220")
      await Utils.sleep(1000);
      let driver : Driver = Driver.create();
      await driver.triggerKey(KeyCode.KEYCODE_F1);
      await Utils.sleep(1000);
      // 走焦
      for (let i = 0; i < 4; i++) {
        await driver.triggerKey(KeyCode.KEYCODE_TAB);
        await Utils.sleep(1000);
      }
      // 竖屏
      await driver.triggerKey(KeyCode.KEYCODE_F2);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      let currentWindow = await Window.getLastWindow(getContext());
      await currentWindow.setPreferredOrientation(1);
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_1
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_1
     * @tc.desc   : Trigger the select dropdown menu with the keyboard.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_1 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0230")
      await Utils.sleep(1000);
      let driver : Driver = Driver.create();
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_1 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_2
     * @tc.name   : SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_2
     * @tc.desc   : Trigger the select dropdown menu with the keyboard and toggle properties by clicking on menu items.
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_2 start.`);
      Settings.createWindow("testability/pages/UiComponentButtonSelectEnhancement/UiComponentButtonSelectEnhancement0230")
      await Utils.sleep(1000);
      let driver : Driver = Driver.create();
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_F1);
      await Utils.sleep(1000);
      await driver.triggerKey(KeyCode.KEYCODE_DPAD_UP);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_SELECT_ENHANCEMENT_0230_2 finish.`);
      done()
    })

  })
}
