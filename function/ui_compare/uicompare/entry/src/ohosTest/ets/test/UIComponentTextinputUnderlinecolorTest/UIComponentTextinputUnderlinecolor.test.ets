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
import { afterEach, describe, it } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver, MouseButton, ON } from '@ohos.UiTest'

export default function UIComponentTextinputUnderlinecolor() {
  describe('UIComponentTextinputUnderlinecolor', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0010
     * @tc.desc    set underlineColor
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor001")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('underline001'))
      for (let i = 0; i < 6; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0010 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0020
     * @tc.desc    set typing
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor002")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('underline002'))
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor002'))
      let button02: Component = await driver.findComponent(ON.id('stopEditing002'))
      let button03: Component = await driver.findComponent(ON.id('enabled002'))
      let button04: Component = await driver.findComponent(ON.id('showError002'))
      await button01.click()
      for (let i = 0; i < 6; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      await button02.click()
      await Utils.sleep(1000)
      await button04.click()
      await Utils.sleep(1000)
      await button03.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0020 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0030
     * @tc.desc    set normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor003")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('underline003'))
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor003'))
      let button02: Component = await driver.findComponent(ON.id('stopEditing003'))
      let button03: Component = await driver.findComponent(ON.id('enabled003'))
      let button04: Component = await driver.findComponent(ON.id('showError003'))
      for (let i = 0; i < 6; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      await button01.click()
      await Utils.sleep(1000)
      await button02.click()
      await Utils.sleep(1000)
      await button04.click()
      await Utils.sleep(1000)
      await button03.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0030 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0040
     * @tc.desc    set error
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor004")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('underline004'))
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor004'))
      let button02: Component = await driver.findComponent(ON.id('stopEditing004'))
      let button03: Component = await driver.findComponent(ON.id('enabled004'))
      let button04: Component = await driver.findComponent(ON.id('showError004'))
      await button01.click()
      await Utils.sleep(1000)
      await button02.click()
      await Utils.sleep(1000)
      await button04.click()
      for (let i = 0; i < 6; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      await Utils.sleep(1000)
      await button03.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0040 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0050
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0050
     * @tc.desc    set disable
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor005")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('underline005'))
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor005'))
      let button02: Component = await driver.findComponent(ON.id('stopEditing005'))
      let button03: Component = await driver.findComponent(ON.id('enabled005'))
      let button04: Component = await driver.findComponent(ON.id('showError005'))
      await button01.click()
      await Utils.sleep(1000)
      await button02.click()
      await Utils.sleep(1000)
      await button04.click()
      await Utils.sleep(1000)
      await button03.click()
      await Utils.sleep(1000)
      for (let i = 0; i < 6; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0050 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0060
     * @tc.desc    set different color
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor006")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor006'))
      let button03: Component = await driver.findComponent(ON.id('enabled006'))
      let button04: Component = await driver.findComponent(ON.id('showError006'))
      await button01.click()
      await Utils.sleep(1000)
      await button04.click()
      await Utils.sleep(1000)
      await button03.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0060 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0070
     * @tc.desc    set showCounter=false
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor007")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor007'))
      await button01.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0070 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0080
     * @tc.desc    copy text
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor008")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor008'))
      let text: Component = await driver.findComponent(ON.id('underline008'))
      await button01.inputText('aaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
      await Utils.sleep(1000)
      await driver.longClick(150,200)
      await Utils.sleep(1000)
      await driver.mouseClick({x:150, y:200},MouseButton.MOUSE_BUTTON_MIDDLE, 2072,2019);
      await Utils.sleep(1000)
      await driver.longClick(150,100)
      await Utils.sleep(1000)
      await driver.mouseClick({x:150, y:100},MouseButton.MOUSE_BUTTON_RIGHT, 2622);
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0080 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0090
     * @tc.desc    change InputType
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor009")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor009'))
      let button02: Component = await driver.findComponent(ON.id('inputtype009'))
      let button03: Component = await driver.findComponent(ON.id('enabled009'))
      let button04: Component = await driver.findComponent(ON.id('showError009'))
      await button01.click()
      await Utils.sleep(1000)
      for (let i = 0; i < 8; i++) {
        await button02.click()
        await Utils.sleep(500)
      }
      await button04.click()
      await Utils.sleep(1000)
      await button03.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0090 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0100
     * @tc.desc    dark
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor010")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor010'))
      let button02: Component = await driver.findComponent(ON.id('stopEditing010'))
      await button01.click()
      await Utils.sleep(1000)
      await button02.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0100 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0110
     * @tc.desc    change enable
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor011")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor011'))
      let button02: Component = await driver.findComponent(ON.id('stopEditing011'))
      let button03: Component = await driver.findComponent(ON.id('showError011'))
      let button04: Component = await driver.findComponent(ON.id('enabled011'))
      await button01.click()
      await Utils.sleep(1000)
      await button02.click()
      await Utils.sleep(1000)
      await button03.click()
      await Utils.sleep(1000)
      await button04.click()
      await Utils.sleep(1000)
      await driver.triggerKey(2016)
      await driver.mouseDoubleClick({  x: 80, y: 80}, MouseButton.MOUSE_BUTTON_LEFT, 2072);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0110 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0120
     * @tc.desc    preview test
     */
    it('SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentTextinputUnderlinecolor/UIComponentTextinputUnderlinecolor012")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button01: Component = await driver.findComponent(ON.id('UIComponentTextinputUnderlinecolor012'))
      let button02: Component = await driver.findComponent(ON.id('stopEditing012'))
      let button03: Component = await driver.findComponent(ON.id('showError012'))
      let button04: Component = await driver.findComponent(ON.id('enabled012'))
      await button01.click()
      await Utils.sleep(1000)
      await button02.click()
      await Utils.sleep(1000)
      await button03.click()
      await Utils.sleep(1000)
      await button04.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXTINPUT_UNDERLINECOLOR_0120 finish.`);
      done()
    })
  })
}
