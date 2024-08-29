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
import { Component, Driver ,ON,MouseButton } from '@ohos.UiTest'
export default function UiComponentTextCommonAffineTransformation() {

  describe('UiComponentTextCommonAffineTransformation', () => {
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
        * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0020
        * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0020
        * @tc.desc    scaleoptionlongclick
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonAffineTransformation/UiComponentTextCommonAffineTransformation002")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      let ch1:Component = await driver.findComponent(ON.id('input002'));
      await ch1.inputText('this is input002')
      await ch1.longClick()
      let button1:Component = await driver.findComponent(ON.id('inputscale002'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      await ch1.doubleClick()
      let ch2:Component = await driver.findComponent(ON.id('area002'));
      await ch2.inputText('this is area002')
      await ch2.longClick()
      let button2:Component = await driver.findComponent(ON.id('areascale002'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      await ch2.doubleClick()
      let ch3:Component = await driver.findComponent(ON.id('search002'));
      await ch3.inputText('this is search002')
      await ch3.longClick()
      let button3:Component = await driver.findComponent(ON.id('searchscale002'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      await ch3.doubleClick()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0020 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0030
        * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0030
        * @tc.desc    scaleoption click twice
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonAffineTransformation/UiComponentTextCommonAffineTransformation003")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      let ch1:Component = await driver.findComponent(ON.id('input003'));
      await ch1.inputText('this is input003')
      await ch1.click()
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('inputscale003'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      await ch1.doubleClick()
      let ch2:Component = await driver.findComponent(ON.id('area003'));
      await ch2.inputText('this is area003')
      await ch2.click()
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('areascale003'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      await ch2.doubleClick()
      let ch3:Component = await driver.findComponent(ON.id('search003'));
      await ch3.inputText('this is search003')
      await ch3.click()
      await Utils.sleep(100)
      let button3:Component = await driver.findComponent(ON.id('searchscale003'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      await ch3.doubleClick()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0030 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0060
        * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0060
        * @tc.desc    scaleoption centre x 0 y 0
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonAffineTransformation/UiComponentTextCommonAffineTransformation006")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      let ch1:Component = await driver.findComponent(ON.id('input006'));
      await ch1.inputText('this is input006')
      await ch1.click()
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('inputscale006'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      await ch1.doubleClick()
      let ch2:Component = await driver.findComponent(ON.id('area006'));
      await ch2.inputText('this is area006')
      await ch2.click()
      await Utils.sleep(100)
      let button2:Component = await driver.findComponent(ON.id('areascale006'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      await ch2.doubleClick()
      let ch3:Component = await driver.findComponent(ON.id('search006'));
      await ch3.inputText('this is search006')
      await ch3.click()
      await Utils.sleep(100)
      let button3:Component = await driver.findComponent(ON.id('searchscale006'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      await ch3.doubleClick()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0060 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0070
        * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0070
        * @tc.desc    text rotate
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonAffineTransformation/UiComponentTextCommonAffineTransformation007")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      let ch1:Component = await driver.findComponent(ON.id('text007'));
      await ch1.click()
      await Utils.sleep(100)
      await ch1.longClick()
      await Utils.sleep(100)
      let button1:Component = await driver.findComponent(ON.id('textrotate007'));
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      await ch1.doubleClick()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0070 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0080
        * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0080
        * @tc.desc    rotatelongclick
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentTextCommonAffineTransformation/UiComponentTextCommonAffineTransformation008")
      await Utils.sleep(100)
      let driver : Driver = Driver.create();
      await driver.delayMs(100)
      let ch1:Component = await driver.findComponent(ON.id('input008'));
      await ch1.inputText('this is input008')
      await ch1.longClick()
      let button1:Component = await driver.findComponent(ON.id('inputscale008'));
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1000)
      let ch2:Component = await driver.findComponent(ON.id('textarea008'));
      await ch2.inputText('this is area008')
      await ch2.longClick()
      let button2:Component = await driver.findComponent(ON.id('arearotatescale008'));
      await Utils.sleep(100)
      await button2.click()
      await Utils.sleep(100)
      await ch2.doubleClick()
      let ch3:Component = await driver.findComponent(ON.id('search008'));
      await ch3.inputText('this is search008')
      await ch3.longClick()
      let button3:Component = await driver.findComponent(ON.id('searchscale008'));
      await Utils.sleep(100)
      await button3.click()
      await Utils.sleep(100)
      await ch3.doubleClick()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0080 finish.`);
      done()
    })
  })
}
