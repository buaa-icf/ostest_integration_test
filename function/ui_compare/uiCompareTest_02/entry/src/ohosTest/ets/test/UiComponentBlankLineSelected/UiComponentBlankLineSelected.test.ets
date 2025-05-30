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
 
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON,Component ,MouseButton } from '@ohos.UiTest'
/*
 * SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0010:设置文本颜色
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

export default function UiComponentBlankLineSelected() {

  describe('UiComponentBlankLineSelected', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0220
       * @tc.name    Text component, set the selection to select a blank row
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0220', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentBlankLineSelected/UiComponentBlankLineSelected01");
      await Utils.sleep(1000);
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0220");
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0220 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0200
       * @tc.name    Text component, set the text, and set the indent value for the blank line
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0200', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentBlankLineSelected/UiComponentBlankLineSelected02");
      await Utils.sleep(1000);
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0200");
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0200 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0210
       * @tc.name    Text component, set the text, change the text baseline offset
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0210', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentBlankLineSelected/UiComponentBlankLineSelected03");
      await Utils.sleep(1000);
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0210");
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0210 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0270
       * @tc.name    Text component to change the font size
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0270', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentBlankLineSelected/UiComponentBlankLineSelected04");
      await Utils.sleep(1000);
      let driver: Driver=Driver.create();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0270_01");
      await Utils.sleep(1000);
      let button: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected04'));
      await button.click();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0270_02");
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0270 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0300
       * @tc.name    Text/TextArea/TextInput inline mode, only blank lines are set
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0300', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0300 start.`);
      Settings.createWindow("testability/pages/UiComponentBlankLineSelected/UiComponentBlankLineSelected05");
      await Utils.sleep(1000);
      let driver: Driver=Driver.create();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0300_01");
      await Utils.sleep(1000);
      let button: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected05'));
      let button01: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected05_area'));
      let button02: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected05_input'));
      await button01.click();
      await button.click();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0300_02");
      await Utils.sleep(1000);
      await button02.click();
      await button.click();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0300_03");
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0300 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0240
       * @tc.name    Text component, span to baselineOffset
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0240', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentBlankLineSelected/UiComponentBlankLineSelected06");
      await Utils.sleep(1000);
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0240");
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0240 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0260
       * @tc.name    Text component, set the line spacing
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0260', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentBlankLineSelected/UiComponentBlankLineSelected07");
      await Utils.sleep(1000);
      let driver: Driver=Driver.create();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0260_01");
      await Utils.sleep(1000);
      let button: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected07'));
      await button.click();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0260_02");
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0260 finish.`);
      done();
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0290
       * @tc.name    Text/TextArea/TextInput is in inline mode and set Align
       * @tc.desc    Function test
       * @tc.size    MediumTest
       * @tc.type    Function
       * @tc.level   0
       */
    it('SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0290', Level.LEVEL0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0290 start.`);
      Settings.createWindow("testability/pages/UiComponentBlankLineSelected/UiComponentBlankLineSelected08");
      await Utils.sleep(1000);
      let driver: Driver=Driver.create();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0290_01");
      await Utils.sleep(1000);
      let button: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected08'));
      let button01: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected08_area'));
      let button02: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected08_input'));
      let button03: Component = await driver.findComponent(ON.id('UiComponentBlankLineSelected08_2'));
      await button01.click();
      await button.click();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0290_02");
      await Utils.sleep(1000);
      await button02.click();
      await button.click();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0290_03");
      await Utils.sleep(1000);
      await button03.click();
      windowSnap.snapShot("SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0290_04");
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BLANKLINE_SELECTED_0290_03 finish.`);
      done();
    })










  })
}
