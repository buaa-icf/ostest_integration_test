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
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160
     * @tc.desc      Set a custom Modifier to a component, and the corresponding properties of the component will take effect
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier016")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier016'))
      await button.click()
      let button_modifier: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier016_modifier'))
      for(let i=0;i<4;i++){
        await button_modifier.click()
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170
     * @tc.desc      Set a custom Modifier to a component, and the corresponding properties of the component will take effect
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier017")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier017'))
      await button.click()
      let button_modifier: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier017_modifier'))
      for(let i=0;i<4;i++){
        await button_modifier.click()
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180
     * @tc.desc      A custom modifier for two components
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier018")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier018'))
      await button.click()
      let button_modifier: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier018_modifier'))
      for(let i=0;i<4;i++){
        await button_modifier.click()
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190
     * @tc.desc      New MyModifier(). hideTitleBar (xx) dynamically switches without perception
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier019")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier019'))
      await button.click()
      let button_modifier: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier019_modifier'))
      for(let i=0;i<4;i++){
        await button_modifier.click()
      }
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200
     * @tc.desc      Setting attributiModifier twice is the union of attributes
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier020")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier020'))
      await button.click()
      let button_modifier1: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier020_modifier1'))
      let button_modifier2: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier020_modifier2'))
      await button_modifier1.click()
      await button_modifier2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210
     * @tc.desc      Mixed settings
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier021")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier021'))
      await button.click()
      let button_modifier: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier021_modifier'))
      await button_modifier.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220
     * @tc.desc      Set the same attribute based on the second one
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier022")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier022'))
      await button.click()
      let button_modifier1: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier022_modifier1'))
      let button_modifier2: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier022_modifier2'))
      await button_modifier1.click()
      await button_modifier2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220 finish.`);
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
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0310
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0310
     * @tc.desc      StepperItemModifier， Set a custom Modifier to a component, and the corresponding properties of the component will take effect
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0310 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier031")
      let driver: Driver = Driver.create()
      let nextButton: Component = await driver.findComponent(ON.text('Next'));
      await nextButton.click();
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0310 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0320
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0320
     * @tc.desc      Set custom Modifier to a component (outlier)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0320 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier032")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier032'))
      await button.doubleClick()
      await Utils.sleep(1000)
      let nextButton: Component = await driver.findComponent(ON.text('Next'));
      await nextButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0320 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0330
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0330
     * @tc.desc      Custom modifier attribute value changes, component corresponding attribute takes effect
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0330 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier033")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier033'))
      await button.doubleClick()
      await Utils.sleep(1000)
      let nextButton: Component = await driver.findComponent(ON.text('Next'));
      await nextButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0330 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0340
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0340
     * @tc.desc      StepperItemModifier， A custom modifier for two components
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0340 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier034")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier034'))
      await button.doubleClick()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0340 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0350
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0350
     * @tc.desc      StepperItemModifier, new MyModifier(). extLabel (xx) dynamically switches without perception
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0350 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier035")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier035'))
      await button.doubleClick()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0350 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0360
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0360
     * @tc.desc      Setting attributiModifier twice is the union of attributes
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0360 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier036")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier036'))
      await button.click()
      await Utils.sleep(1000)
      let nextButton: Component = await driver.findComponent(ON.text('Next'));
      await nextButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0360 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0370
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0370
     * @tc.desc      Mixed settings
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0370 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier037")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier037'))
      await button.click()
      await Utils.sleep(1000)
      let nextButton: Component = await driver.findComponent(ON.text('Next'));
      await nextButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0370 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0380
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0380
     * @tc.desc      Set the same attribute based on the second one
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0380 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier038")
      let driver: Driver = Driver.create()
      let button: Component = await driver.findComponent(ON.id('UiComponentLayoutModifier038'))
      await button.click()
      await Utils.sleep(13000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0380 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0470
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0470
     * @tc.desc      set a custom Modifier to a component, and the corresponding attribute of the component takes effect (params, target).
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0470 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier047")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0470 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0480
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0480
     * @tc.desc      Set a custom Modifier to a component that corresponds to an active attribute
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0480 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0480 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0490
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0490
     * @tc.desc      Set a custom Modifier to a component, and the corresponding property of the component will take effect (type NavigatorType. Push)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0490 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0490 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0500
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0500
     * @tc.desc      Set a custom Modifier to a component, and the corresponding property of the component will take effect (type NavigatorType. Replace)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0500 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0500 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0510
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0510
     * @tc.desc      Set a custom Modifier to a component, and the corresponding property of the component will take effect (type NavigatorType. Back)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0510 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier051")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0510 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0520
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0520
     * @tc.desc      Set a custom Modifier to a component that corresponds to a property that takes effect (type NavigatorType. Back), with an exception value
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0520 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier052")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0520 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0530
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0530
     * @tc.desc      Custom modifier attribute value changes, component corresponding attribute takes effect
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0530 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier053")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0530 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0540
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0540
     * @tc.desc      A custom modifier for two components
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0540 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier054")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0540 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0550
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0550
     * @tc.desc      new MyModifier(). target (xx) dynamically switches without perception
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0550 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier055")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0550 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0560
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0560
     * @tc.desc      Setting attributiModifier twice is the union of attributes
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0560 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier056")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0560 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0570
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0570
     * @tc.desc      Mixed settings
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0570 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier057")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0570 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0580
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0580
     * @tc.desc      Set the same attribute based on the second one
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0580 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier058")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0580 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0590
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0590
     * @tc.desc      Set a custom Modifier to a component, and the corresponding properties of the component will take effect (NavRouteMode. PUSH-WISH-RECREATE)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0590 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier059")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0590 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0600
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0600
     * @tc.desc      Set a custom Modifier to a component, and the corresponding properties of the component will take effect (NavRouteMode. PUSH)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0600 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0600 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0610
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0610
     * @tc.desc      Set a custom Modifier to a component, and the corresponding properties of the component will take effect (NavRouteMode. REPLACE)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0610 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier061")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0610 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0620
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0620
     * @tc.desc      Set a custom Modifier to a component, and the corresponding property of the component takes effect (outlier)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0620 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier062")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0620 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0630
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0630
     * @tc.desc      Custom modifier attribute value changes, component corresponding attribute takes effect
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0630 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier063")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0630 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0640
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0640
     * @tc.desc      Assign a custom modifier to two components
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0640 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier064")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0640 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0650
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0650
     * @tc.desc      New MyModifier(). mode (xx) dynamically switches without perception
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0650 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier065")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0650 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0660
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0660
     * @tc.desc      Setting attributiModifier twice is the union of attributes
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0660 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier066")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0660 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0670
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0670
     * @tc.desc      Mixed settings
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0670 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier067")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0670 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0680
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0680
     * @tc.desc      Set the same attribute based on the second one
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0680 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier068")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0680 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0690
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0690
     * @tc.desc      Set a custom Modifier to a component, and the corresponding properties of the component will take effect (hideTolBar, subtitle). The titleMode、hideBackButton、hideTitleBar、backButtonIcon）
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0690 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier069")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0690 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0700
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0700
     * @tc.desc      Assign a custom modifier to a component, and the corresponding attribute of the component will take effect (mode)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0700 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier070")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0700 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0710
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0710
     * @tc.desc      Set a custom Modifier to a component, and the corresponding property of the component will take effect (navBarPosition)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0710 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier071")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0710 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0720
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0720
     * @tc.desc      Set a custom Modifier to a component whose corresponding property takes effect (minContentWidth navBarWidthRange、navBarWidth）
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0720 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier072")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0720 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0730
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0730
     * @tc.desc      Set a custom Modifier to a component, and the corresponding property of the component will take effect (hideNavBar)
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0730 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier073")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0730 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0740
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0740
     * @tc.desc      Custom modifier attribute value changes, component corresponding attribute takes effect
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0740 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier074")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0740 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0750
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0750
     * @tc.desc      A custom modifier for two components
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0750 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier075")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0750 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0760
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0760
     * @tc.desc      New MyModifier(). hideTitleBar (xx) dynamically switches without perception
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0760 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier076")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0760 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0770
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0770
     * @tc.desc      Setting attributiModifier twice is the union of attributes
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0770 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier077")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0770 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0780
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0780
     * @tc.desc      Mixed settings
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0780 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier078")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0780 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0790
     * @tc.name      SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0790
     * @tc.desc      Set the same attribute based on the second one
    */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0790 start.`);
      Settings.createWindow("testability/pages/UiComponentLayoutModifier/UiComponentLayoutModifier079")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0790 finish.`);
      done()
    })
  })
}

