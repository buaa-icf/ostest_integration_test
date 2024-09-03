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

export default function UIComponentTextCommonAffingTranTest() {

  describe('UIComponentTextCommonAffingTranTest', () => {
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
   * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0140
   * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0140
   * @tc.desc        set matrix4
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0140 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0140")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0140'))
      let button: Component = await driver.findComponent(ON.id('transform0140'))
      await driver.longClick(150,150)
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0140`);
      done()
    })

    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0150
  * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0150
  * @tc.desc        set matrix4.identity().translate({ x: 50, y: 50 })
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0150 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0150")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0150'))
      let button: Component = await driver.findComponent(ON.id('transform0150'))
      await text.inputText('hello world')
      await driver.longClick(150,150)
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0150`);
      done()
    })

    /*
 * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0160
 * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0160
 * @tc.desc        set scale={ x: -2, y: 0.5, z：-5 }
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0160 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0160")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0160'))
      let button: Component = await driver.findComponent(ON.id('transform0160'))
      await driver.longClick(150,150)
      await Utils.sleep(1000)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0160`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0190
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0190
* @tc.desc        set rotate=   { x: 1, y: 0, z:0, centerX: '0%',centerY: '0%',angle: 300}
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0190 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0190")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0190'))
      let button: Component = await driver.findComponent(ON.id('transform0190'))
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0190`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0220
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0220
* @tc.desc        set rotate={ x: 1, y: 0, z:0,       centerX: '0%',centerY: '0%',angle: 300}
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0220 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0220")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0220'))
      let button: Component = await driver.findComponent(ON.id('transform0220'))
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0220`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0230
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0230
* @tc.desc        both set rotate={ x: 1, y: 0, z:0,       centerX: '0%',centerY: '0%',angle: 300}
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0230 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0230")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0230'))
      let text02: Component = await driver.findComponent(ON.id('TextArea0230'))
      let text03: Component = await driver.findComponent(ON.id('searchAffing0230'))
      let button: Component = await driver.findComponent(ON.id('transform0230'))
      let button02: Component = await driver.findComponent(ON.id('transform0230-1'))
      let button03: Component = await driver.findComponent(ON.id('transform0230-2'))
      await text.inputText('aaaa')
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      await text02.inputText('aaaa')
      await driver.longClick(250,150)
      await button02.click()
      await Utils.sleep(1000)
      await text03.inputText('aaaa')
      await driver.longClick(350,150)
      await button03.click()
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0230`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0240
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0240
* @tc.desc        both set scale={ x: -2, y: 0.5, z：-5 }
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0240 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0240")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0240'))
      let text02: Component = await driver.findComponent(ON.id('TextArea0240'))
      let text03: Component = await driver.findComponent(ON.id('searchAffing0240'))
      let button: Component = await driver.findComponent(ON.id('transform0240'))
      let button02: Component = await driver.findComponent(ON.id('transform0240-1'))
      let button03: Component = await driver.findComponent(ON.id('transform0240-2'))
      await text.inputText('aaaa')
      await driver.click(100,150)
      await button.click()
      await Utils.sleep(1000)
      await text02.inputText('aaaa')
      await driver.click(250,150)
      await button02.click()
      await Utils.sleep(1000)
      await text03.inputText('aaaa')
      await driver.click(350,150)
      await button03.click()
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0240`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0250
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0250
* @tc.desc        set 【width('75%').height(75)】
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0250 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0250")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0250'))
      let button: Component = await driver.findComponent(ON.id('transform0250'))
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0250`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0280
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0280
* @tc.desc        set 【width('95%').height(50)】
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0280 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0280")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0280'))
      let button: Component = await driver.findComponent(ON.id('transform0280'))
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0280`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0290
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0290
* @tc.desc        set translate={ x: 100, y: 10 }
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0290 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0290")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0290'))
      let text02: Component = await driver.findComponent(ON.id('TextArea0290'))
      let text03: Component = await driver.findComponent(ON.id('searchAffing0290'))
      let button: Component = await driver.findComponent(ON.id('transform0290'))
      let button02: Component = await driver.findComponent(ON.id('transform0290-1'))
      let button03: Component = await driver.findComponent(ON.id('transform0290-2'))
      await text.inputText('aaaa')
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      await text02.inputText('aaaa')
      await driver.longClick(250,150)
      await button02.click()
      await Utils.sleep(1000)
      await text03.inputText('aaaa')
      await driver.longClick(350,150)
      await button03.click()
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0290`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0300
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0300
* @tc.desc        set rotate={ x: 1, y: 0, z:0,centerX: '0%',centerY: '0%',angle: 300}
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0300 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0300")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0300'))
      let text02: Component = await driver.findComponent(ON.id('TextArea0300'))
      let text03: Component = await driver.findComponent(ON.id('searchAffing0300'))
      let button: Component = await driver.findComponent(ON.id('transform0300'))
      let button02: Component = await driver.findComponent(ON.id('transform0300-1'))
      let button03: Component = await driver.findComponent(ON.id('transform0300-2'))
      await text.inputText('aaaa')
      await driver.click(100,150)
      await button.click()
      await Utils.sleep(1000)
      await text02.inputText('aaaa')
      await driver.click(250,150)
      await button02.click()
      await Utils.sleep(1000)
      await text03.inputText('aaaa')
      await driver.click(350,150)
      await button03.click()
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0300`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0310
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0310
* @tc.desc        set 【width(50%').height(95)】
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0310 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0310")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0310'))
      let button: Component = await driver.findComponent(ON.id('transform0310'))
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0310`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0320
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0320
* @tc.desc        longclick TextInput/textarea/search
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0320 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0320")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0320'))
      let text02: Component = await driver.findComponent(ON.id('TextArea0320'))
      let text03: Component = await driver.findComponent(ON.id('searchAffing0320'))
      let button: Component = await driver.findComponent(ON.id('transform0320'))
      let button02: Component = await driver.findComponent(ON.id('transform0320-1'))
      let button03: Component = await driver.findComponent(ON.id('transform0320-2'))
      await text.inputText('aaaa')
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      await text02.inputText('aaaa')
      await driver.longClick(250,150)
      await button02.click()
      await Utils.sleep(1000)
      await text03.inputText('aaaa')
      await driver.longClick(350,150)
      await button03.click()
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0320`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0330
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0330
* @tc.desc        click TextInput/textarea/search
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0330 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0330")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0330'))
      let text02: Component = await driver.findComponent(ON.id('TextArea0330'))
      let text03: Component = await driver.findComponent(ON.id('searchAffing0330'))
      let button: Component = await driver.findComponent(ON.id('transform0330'))
      let button02: Component = await driver.findComponent(ON.id('transform0330-1'))
      let button03: Component = await driver.findComponent(ON.id('transform0330-2'))
      await text.inputText('aaaa')
      await driver.click(100,150)
      await button.click()
      await Utils.sleep(1000)
      await text02.inputText('aaaa')
      await driver.click(250,150)
      await button02.click()
      await Utils.sleep(1000)
      await text03.inputText('aaaa')
      await driver.click(350,150)
      await button03.click()
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0330`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0340
* @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0340
* @tc.desc        set 【width('75%').height(75)】
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0340 start.`);
      Settings.createWindow( "testability/pages/UIComponentTextCommonAffingTran/UIComponentTextCommonAffingTran0340")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('TextCommonAffing0340'))
      let button: Component = await driver.findComponent(ON.id('transform0340'))
      await driver.longClick(100,150)
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0340`);
      done()
    })


  })
}