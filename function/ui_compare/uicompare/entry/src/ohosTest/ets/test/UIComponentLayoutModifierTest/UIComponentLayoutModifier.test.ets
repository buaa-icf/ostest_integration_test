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
     * @tc.desc         set alignContent 【TopStart、null、End、undefined、BottomEnd】
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
  * @tc.desc        new MyModifier().alignContent动态切换不感知
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
      * @tc.desc        两次设置attributeModifier是属性的并集
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
     * @tc.desc        混合设置Modifier
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
      * @tc.desc        attributeModifier(myModiferl类)中setGroup1设置alignContent为BottomStart，setGroup2设置alignContent为End
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
  })
}

