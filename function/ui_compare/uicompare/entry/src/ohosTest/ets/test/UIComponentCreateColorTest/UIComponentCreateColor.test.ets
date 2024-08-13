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

export default function UIComponentCreateColor() {

  describe('UIComponentCreateColor', () => {
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
        * @tc.number  SUB_ACE_UI_COMPONENT_CREATE_COLOR_0050
        * @tc.name    SUB_ACE_UI_COMPONENT_CREATE_COLOR_0050
        * @tc.desc    switch the color and set background color to the default color-textinput
    */
    it('SUB_ACE_UI_COMPONENT_CREATE_COLOR_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CREATE_COLOR_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentCreateColor/UIComponentCreateColor005")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('caretColor'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let ch2:Component  = await driver.findComponent(ON.id('colorstr'));
      await driver.delayMs(100)
      await ch2.click()
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let btn:Component  = await driver.findComponent(ON.id('setTextSelection'));
      await driver.delayMs(100)
      await btn.click()
      await Utils.sleep(100)
      let ch1:Component  = await driver.findComponent(ON.id('rgb'));
      await driver.delayMs(100)
      await ch1.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(100)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CREATE_COLOR_0050 finish.`);
      done()
    })
    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_CREATE_COLOR_0100
      * @tc.name    SUB_ACE_UI_COMPONENT_CREATE_COLOR_0100
      * @tc.desc    switch the color and set background color to the default color-textarea
    */
    it('SUB_ACE_UI_COMPONENT_CREATE_COLOR_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CREATE_COLOR_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentCreateColor/UIComponentCreateColor010")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('caretColor'));
      await driver.delayMs(100)
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let ch2:Component  = await driver.findComponent(ON.id('colorstr'));
      await driver.delayMs(100)
      await ch2.click()
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      await button1.click()
      await Utils.sleep(100)
      let btn:Component  = await driver.findComponent(ON.id('setTextSelection'));
      await driver.delayMs(100)
      await btn.click()
      await Utils.sleep(100)
      let ch1:Component  = await driver.findComponent(ON.id('rgb'));
      await driver.delayMs(100)
      await ch1.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CREATE_COLOR_0100 finish.`);
      done()
    })
    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_CREATE_COLOR_0140
      * @tc.name    SUB_ACE_UI_COMPONENT_CREATE_COLOR_0140
      * @tc.desc    switch the color and set background color to the default color-search
    */
    it('SUB_ACE_UI_COMPONENT_CREATE_COLOR_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CREATE_COLOR_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentCreateColor/UIComponentCreateColor014")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      await Utils.sleep(1000)
      let button1:Component = await driver.findComponent(ON.id('caretColor'));
      await driver.delayMs(1000)
      await Utils.sleep(100)
      let ch2:Component  = await driver.findComponent(ON.id('colorstr'));
      await driver.delayMs(1000)
      await ch2.click()
      await Utils.sleep(1000)
      await button1.click()
      await Utils.sleep(1500)
      await button1.click()
      await Utils.sleep(1500)
      await button1.click()
      await Utils.sleep(100)
      let btn:Component  = await driver.findComponent(ON.id('setTextSelection'));
      await driver.delayMs(100)
      await btn.click()
      await Utils.sleep(100)
      let ch1:Component  = await driver.findComponent(ON.id('rgb'));
      await driver.delayMs(100)
      await ch1.click()
      await Utils.sleep(100)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_CREATE_COLOR_0140 finish.`);
      done()
    })
  })
}
