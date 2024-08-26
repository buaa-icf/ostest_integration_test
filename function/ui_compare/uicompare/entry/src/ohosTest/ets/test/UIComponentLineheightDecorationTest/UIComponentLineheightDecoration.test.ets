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
import { Component, Driver, ON } from '@ohos.UiTest'

export default function UIComponentLineheightDecoration() {
  describe('UIComponentLineheightDecoration', () => {
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
            * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0020
            * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0020
            * @tc.desc    not set decoration
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration002")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration002'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0020 finish.`);
      done()
    })

    /*
           * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0030
           * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0030
           * @tc.desc    set decoration style=（Underline、LineThrough、Overline、None）
    */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration003")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration003'))
      let button: Component = await driver.findComponent(ON.id('buttonlineheight003'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      for (let i = 0; i < 4; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0030 finish.`);
      done()
    })

    /*
           * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0040
           * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0040
           * @tc.desc    set decoration color=（color.Pink、0x008000、 'rgb(255, 0, 0)'、#0000ff、$r('app.color.Yellow')）
    */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration004")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration004'))
      let button: Component = await driver.findComponent(ON.id('buttonlineheight004'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      for (let i = 0; i < 8; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      await textarea.inputText('aaaaa   &a2^*&(')
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0040 finish.`);
      done()
    })

    /*
           * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0060
           * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0060
           * @tc.desc    input placeholder
    */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration006")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration006'))
      let button: Component = await driver.findComponent(ON.id('buttonlineheight006'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      for (let i = 0; i < 8; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0060 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0070
          * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0070
          * @tc.desc    change input type
   */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration007")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration007'))
      let button: Component = await driver.findComponent(ON.id('type007'))
      let button01: Component = await driver.findComponent(ON.id('buttonlineheight007'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      for (let i = 0; i < 9; i++) {
        await button.click()
        await Utils.sleep(100)
      }
      await Utils.sleep(1000)
      await textarea.inputText('aaaaa')
      for (let i = 0; i < 8; i++) {
        await button01.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0070 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0080
         * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0080
         * @tc.desc    change input style
  */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration008")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration008'))
      let button: Component = await driver.findComponent(ON.id('type008'))
      let button01: Component = await driver.findComponent(ON.id('buttonlineheight008'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      await button.click()
      await Utils.sleep(100)
      for (let i = 0; i < 8; i++) {
        await button01.click()
        await Utils.sleep(500)
      }
      await textarea.inputText('aaaaaaaaaaaaaaaaaaaaaa')
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0080 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0090
         * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0090
         * @tc.desc    change textAlign
  */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration009")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration009'))
      let button: Component = await driver.findComponent(ON.id('type009'))
      let button01: Component = await driver.findComponent(ON.id('buttonlineheight009'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      for (let i = 0; i < 8; i++) {
        await button01.click()
        await Utils.sleep(500)
      }
      for (let i = 0; i < 2; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0090 finish.`);
      done()
    })


    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0100
     * @tc.desc    change fontSize
*/
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration010")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration010'))
      let button: Component = await driver.findComponent(ON.id('type010'))
      let button01: Component = await driver.findComponent(ON.id('buttonlineheight010'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      for (let i = 0; i < 8; i++) {
        await button01.click()
        await Utils.sleep(500)
      }
      for (let i = 0; i < 3; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0100 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0110
     * @tc.desc    change showUnderline
*/
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration011")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration011'))
      let button: Component = await driver.findComponent(ON.id('type011'))
      let button01: Component = await driver.findComponent(ON.id('buttonlineheight011'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      for (let i = 0; i < 8; i++) {
        await button01.click()
        await Utils.sleep(500)
      }
      for (let i = 0; i < 1; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0110 finish.`);
      done()
    })

    /*
  * @tc.number  SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0120
  * @tc.name    SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0120
  * @tc.desc    set showCounter
*/
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentLineheightDecoration/UIComponentLineheightDecoration012")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let textarea: Component = await driver.findComponent(ON.id('UIComponentLineheightDecoration012'))
      let button: Component = await driver.findComponent(ON.id('type012'))
      let button01: Component = await driver.findComponent(ON.id('buttonlineheight012'))
      await textarea.click()
      await textarea.inputText('aaaaa')
      await Utils.sleep(500)
      for (let i = 0; i < 8; i++) {
        await button01.click()
        await Utils.sleep(500)
      }
      for (let i = 0; i < 1; i++) {
        await button.click()
        await Utils.sleep(500)
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0120 finish.`);
      done()
    })
  })
}
