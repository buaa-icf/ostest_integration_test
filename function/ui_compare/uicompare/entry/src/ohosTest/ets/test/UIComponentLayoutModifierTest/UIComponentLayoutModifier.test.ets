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

export default function UIComponentLayoutModifierTest() {

  describe('UIComponentLayoutModifierTest', () => {
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
   * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0230
   * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0230
   * @tc.desc        set alignContent 【TopStart、Top、TopEnd、Start、Center、End、BottomStart、Bottom、BottomEnd】
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier023")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentLayoutModifier023'))
      for (let i = 0; i < 9; i++) {
        await button.click()
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0230 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0240
     * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0240
     * @tc.desc        set alignContent 【TopStart、null、End、undefined、BottomEnd】
  */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier024")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentLayoutModifier024'))
      for (let i = 0; i < 5; i++) {
        await button.click()
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0240 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0250
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0250
      * @tc.desc        new MyModifier().alignContent(Alignment.Bottom)
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0250 finish.`);
      done()
    })

    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0260
   * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0260
   * @tc.desc        set two stack
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier026")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentLayoutModifier026'))
      for (let i = 0; i < 9; i++) {
        await button.click()
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0260 finish.`);
      done()
    })

    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0270
  * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0270
  * @tc.desc        new MyModifier().alignContent
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier027")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UIComponentLayoutModifier027'))
      for (let i = 0; i < 9; i++) {
        await button.click()
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0270 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0280
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0280
      * @tc.desc        attributeModifier
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0280 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0290
     * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0290
     * @tc.desc        Modifier
  */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0290 finish.`);
      done()
    })

    /*
      * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0300
      * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0300
      * @tc.desc        attributeModifier(myModiferl)setGroup1=alignContent BottomStart，setGroup2 set alignContent End
   */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0300 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0390
     * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0390
     * @tc.desc        set 【ItemAlign.Start、ItemAlign.Center、ItemAlign.End、ItemAlign.Stretch】
  */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier039")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('modifier039'))
      for (let i = 0; i <4; i++) {
        await button.click()
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0390 finish.`);
      done()
    })

    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0410
   * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0410
   * @tc.desc        set GridCol
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0410 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0410 finish.`);
      done()
    })

    /*
     * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0420
     * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0420
     * @tc.desc        set two 【ItemAlign.Start、ItemAlign.Center、ItemAlign.End、ItemAlign.Stretch】
  */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0420 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier042")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('layout042'))
      for (let i = 0; i <4; i++) {
        await button.click()
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0420 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0430
    * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0430
    * @tc.desc        not support change
 */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0430 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier043")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('mymodifier043'))
      for (let i = 0; i <4; i++) {
        await button.click()
      }
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0430 finish.`);
      done()
    })

    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0440
  * @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0440
  * @tc.desc        twice set attributeModifier
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0440 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0440 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0450
* @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0450
* @tc.desc        mix set GridRowModifier
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0450 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier045")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('modifier045'))
      await button.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0450 finish.`);
      done()
    })

    /*
* @tc.number      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0460
* @tc.name        SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0460
* @tc.desc        set same attribute
*/
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0460 start.`);
      Settings.createWindow("testability/pages/UIComponentLayoutModifier/UIComponentLayoutModifier046")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('modifier046-1'))
      let button2: Component = await driver.findComponent(ON.id('modifier046-2'))
      await button.click()
      await Utils.sleep(1000)
      await button2.click()
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0460 finish.`);
      done()
    })
  })
}

