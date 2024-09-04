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
import { Driver, ON,Component ,MouseButton } from '@ohos.UiTest'

export default function UIComponentTextTextinputAction() {
  describe('UIComponentTextTextinputAction', () => {
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
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0010
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0010
     * @tc.desc        Set TextContentStyle=Inline
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction001")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction001'))
      let button02: Component = await driver.findComponent(ON.id('textinputstyle001'))
      await text.inputText('aaaaa')
      await Utils.sleep(1000)
      await button02.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0010 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0140
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0140
     * @tc.desc        input long phrase
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction014")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction014'))
      await text.inputText('aaaaaaaaaa,hello world ! this is openharmony !  this is openharmony')
      await Utils.sleep(1000)
      await driver.longClick(500,150);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0140 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0240
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0240
     * @tc.desc        change enabled
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction024")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction024'))
      let button02: Component = await driver.findComponent(ON.id('textinputenable024'))
      await text.inputText('aaaaa')
      await Utils.sleep(1000)
      for(let i=0;i<2;i++)
      {
        await button02.click()
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0240 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0280
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0280
     * @tc.desc        Set style=password
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction028")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction028'))
      await text.inputText('123456789')
      await Utils.sleep(1000)
      await driver.longClick(335,150);
      await Utils.sleep(1000)
      await driver.mouseClick({x:600,y:150},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0280 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0290
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0290
     * @tc.desc        input password
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction029")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction029'))
      let button: Component = await driver.findComponent(ON.id('changewidth029'))
      await text.inputText('123456789')
      await Utils.sleep(1000)
      await driver.longClick(200,150);
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      await text.inputText('123456789')
      await driver.mouseClick({x:600,y:150},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0290 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0300
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0300
     * @tc.desc        select password
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction030")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction030'))
      let button: Component = await driver.findComponent(ON.id('TEXTALIGN030'))
      await text.inputText('123456789')
      await Utils.sleep(1000)
      await driver.longClick(350,150);
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      await text.inputText('123456789')
      await driver.mouseClick({x:600,y:150},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0300 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0310
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0310
     * @tc.desc        click end
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction031")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction031'))
      await text.inputText('aaaaa')
      await Utils.sleep(1000)
      await driver.click(500,150)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0310 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0330
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0330
     * @tc.desc        Set showcounter
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction033")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction033'))
      await text.inputText('aaaaa,hello world ! this is openharmony !  this is openharmony')
      await Utils.sleep(1000)
      await driver.click(500,150)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0330 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0380
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0380
     * @tc.desc        Set style=Normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction038")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction038'))
      let button: Component = await driver.findComponent(ON.id('typechange038'))
      await text.inputText('aaaaa')
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0380 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0390
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0390
     * @tc.desc        change password、numberpassword、new_password
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction039")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction039'))
      let button: Component = await driver.findComponent(ON.id('typechange039'))
      let button02: Component = await driver.findComponent(ON.id('showcounter039'))
      await text.inputText('aaaaa')
      for(let i=0;i<2;i++)
      {
        await button.click()
        await Utils.sleep(500)
      }
      await Utils.sleep(1000)
      for(let i=0;i<2;i++)
      {
        await button02.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0390 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0570
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0570
     * @tc.desc        Set attributeModifier
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0570 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputAction057")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction057'))
      await text.inputText('hello world')
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_ACTION_0570 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERACTION_0200
     * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERACTION_0200
     * @tc.desc        input
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERACTION_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERACTION_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentTextTextinputAction/UIComponentTextTextinputInterAction0020")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textinputaction0020'))
      await text.inputText('asd')
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTINPUT_INTERACTION_0200 finish.`);
      done()
    })
  })
}
