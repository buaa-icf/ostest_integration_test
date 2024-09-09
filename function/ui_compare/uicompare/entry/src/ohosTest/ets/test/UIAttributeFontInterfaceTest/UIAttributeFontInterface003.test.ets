/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
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
import {UiComponent, UiDriver, Component, Driver, UiWindow, ON, BY, MatchPattern, DisplayRotation,
  ResizeDirection, WindowMode, PointerMatrix} from '@ohos.UiTest';

export default function UIAttributeFontInterface003() {

  describe('UIAttributeFontInterface003', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0130
     * @tc.desc   : TextInput component
     * 1. Tap the input box and input characters.
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     * 4. Tap the `letterSpacing` button to adjust the character spacing (-2, 0, 3, '5px', '10%').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0130 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle01")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle01_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle01_2'));
      for(let i_01 = 0; i_01<9; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01 == 8){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0130 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0140
     * @tc.desc   : TextInput component
     * 1. Tap the input box and input text, special characters, and spaces.
     * 2. Do not set the letterSpacing property.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0140 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle02")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle02'));
      for(let i = 0; i<9; i++){
        await button1.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i==8){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0140 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0150
     * @tc.desc   : TextInput component
     * 1. Tap the input box to input text, special characters, and spaces.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * 3. Clear the text and then input again.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0150 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle03")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle03_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle03_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle03_3'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributeAndStyle03_4'));
      for(let i_01 = 0; i_01<3; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          await button3.click()
          await button4.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01 == 2){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0150 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0160
     * @tc.desc   : TextInput component
     * Set the character spacing of input box A to 3, and set the character spacing of input box B to -2.
     * Drag and drop, or copy, the text from input box A to input box B.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0160 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle04")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle04_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle04_2'));
      await button1.longClick()
      let selectAll: Component = await driver.findComponent(ON.text('全选'));
      if(selectAll){
        await selectAll.click()
        await Utils.sleep(1000)
        let copy: Component = await driver.findComponent(ON.text('复制'));
        let paste: Component = await driver.findComponent(ON.text('粘贴'));
        await copy.click()
        await Utils.sleep(1000)
        await button2.longClick()
        await Utils.sleep(1000)
        await paste.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
      } else {
        let copy: Component = await driver.findComponent(ON.text('复制'));
        let paste: Component = await driver.findComponent(ON.text('粘贴'));
        await copy.click()
        await Utils.sleep(1000)
        await button2.longClick()
        await Utils.sleep(1000)
        await paste.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
      }
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0170
     * @tc.desc   : TextInput component
     * 1. In the empty text state, display the hint text.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0170 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle05")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle05'));
      for(let i = 0; i<5; i++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i==4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0170 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0180
     * @tc.desc   : TextInput component
     * 1. Tap the `type` button to change the input field type to (Normal, Password, Email, Number, PhoneNumber,
     * USER_NAME, NEW_PASSWORD, NUMBER_PASSWORD, NUMBER_DECIMAL).
     * 2. Tap the input box to input characters.
     * 3. Tap the `letterSpacing` button to dynamically change the line height to (-2,0,3,"5px","10%").
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0180 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle06")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle06_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle06_02'));
      for(let i_01 = 0; i_01 < 10; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02 < 5; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01==9){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0180 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0190
     * @tc.desc   : TextInput component
     * 1. Tap the `style` button to change the input box style to (Default, Inline).
     * 2. Tap the `letterSpacing` button to dynamically change the line height to (-2,0,3,"5px","10%").
     * 3. Tap the input box to input characters.
     * 4. In inline mode, input multiple lines of text.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0190 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle07")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle07_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle07_2'));
      for(let i_01 = 0; i_01 < 10; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02 < 5; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01==9){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0190 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0200
     * @tc.desc   : TextInput component
     * 1. Tap the input box to input characters.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * 3. Tap the `textAlign` button to toggle the text alignment between (start, center, end).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0200 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle08")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle08_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle08_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle08_3'));
      await button3.click()
      for(let i_01 = 0; i_01<5; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<3; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==2 && i_01 == 4){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0200 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0210
     * @tc.desc   : TextInput component
     * Click on the input box and enter characters.
     * Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * Click the "fontSize" button to dynamically change the font size (0, 10, 20, 30).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0210 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle09")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle09_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle09_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle09_3'));
      await button1.click()
      for(let i_01 = 0; i_01<5; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02<4; i_02++){
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 3 && i_01 == 4){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0210 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0220
     * @tc.desc   : TextInput component
     * Click on the input box and enter characters.
     * Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * Long press to select a phrase
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0220 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle10")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle10_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle10_2'));
      let input: Component = await driver.findComponent(ON.id('fontAttributeAndStyle10'));
      await button1.click()
      for(let i_01 = 0; i_01<5; i_01++){
        await button2.click()
        await Utils.sleep(1000)
        await input.longClick()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01 == 4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0220 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0230
     * @tc.desc   : TextInput component
     * 1. Tap the input box to input characters.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0230 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle11")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle11'));
      for(let i = 0; i<6; i++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i==5){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0230 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0240
     * @tc.desc   : TextInput component
     * Click on the input box and enter characters.
     * Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * Click the "fontSize" button to dynamically change the font size (0, 10, 20, 30).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0240 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle12")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle12_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle12_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle12_3'));
      await button1.click()
      for(let i_01 = 0; i_01<6; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02<4; i_02++){
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 3 && i_01 == 5){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0240 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0250
     * @tc.desc   : TextInput component
     * 1. In the empty text state, display the hint text.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0250 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle13")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle13'));
      for(let i = 0; i<6; i++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i==5){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0250 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0260
     * @tc.desc   : TextInput component
     * 1.Tap the input box to input text, special characters, and spaces.
     * 2.Tap the lineHeight button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3.After clearing the text, input characters again.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0260 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle14")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle14_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle14_02'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle14_03'));
      for(let i_01 = 0; i_01 < 6; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02 < 3; i_02++){
          await button1.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          await button3.click()
          if(i_02==2 && i_01 == 5){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0260 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0270
     * @tc.desc   : TextInput component
     * 1. Tap the `type` button to change the input field type to (Normal, Password, Email, Number, PhoneNumber,
     * USER_NAME, NEW_PASSWORD, NUMBER_PASSWORD, NUMBER_DECIMAL).
     * 2. Tap the input box to input characters.
     * 3. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0270 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle15")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle15_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle15_02'));
      for(let i_01 = 0; i_01 < 10; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02 < 6; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==5 && i_01==9){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0270 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0280
     * @tc.desc   : TextInput component
     * 1. Tap the `style` button to change the input box style to (Default, Inline).
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3. Tap the input box to input characters.
     * 4. In inline mode, input multiple lines of text.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0280 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle16")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle16_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle16_2'));
      for(let i_01 = 0; i_01 < 10; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02 < 6; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==5 && i_01==9){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0280 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0290
     * @tc.desc   : TextInput component
     * 1. Tap the input box and input characters.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3. Long press to select text.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0290 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle17")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle17_1'));
      let input: Component = await driver.findComponent(ON.type('TextInput'));
      for(let i_01 = 0; i_01 < 10; i_01++){
        await button.click()
        await Utils.sleep(1000)
        await input.longClick()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01==9){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0290 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0300
     * @tc.desc   : TextInput component
     * 1. Tap the input box to input characters.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3. Tap the `decoration` button to display the decoration line.
     * 4. Tap the `style` button to change the decoration line style to (Default, Inline).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0300 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle18")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle18_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle18_02'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle18_03'));
      await button3.click()
      for(let i_01 = 0; i_01 < 2; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02 < 6; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==5 && i_01==1){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0300 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0310
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input multiple lines of characters.
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0310 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle19")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle19_01'));
      let input: Component = await driver.findComponent(ON.id('fontAttributeAndStyle19_2'));
      await input.click()
      for(let i_01 = 0; i_01 < 9; i_01++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01==8){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0310 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0320
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Do not set the `decoration` property.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0320 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle20")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let input: Component = await driver.findComponent(ON.id('fontAttributeAndStyle20'));
      await input.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0330
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Do not set the `decoration.color`.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0330 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle21")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle21_01'));
      let input: Component = await driver.findComponent(ON.id('fontAttributeAndStyle21_2'));
      await input.click()
      for(let i_01 = 0; i_01 < 4; i_01++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01==3){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0330 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0360
     * @tc.desc   : TextArea component
     * 1. Do not input any characters, leave the text field empty.
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0360 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle23")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle23'));
      for(let i_01 = 0; i_01 < 9; i_01++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01==8){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0360 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0370
     * @tc.desc   : TextArea component
     * 1. Tap the `type` button to change the input field type to (Normal, Email, Number, PhoneNumber).
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     * 4. Tap the input box to input characters.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0370 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle24")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle24_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle24_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle24_3'));
      await button3.click()
      await Utils.sleep(1000)
      for(let i_01 = 0; i_01 < 4; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02 < 9; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==8 && i_01==3 ){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0370 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0380
     * @tc.desc   : TextArea component
     * 1. Tap the `style` button to change the input box style to (Default, Inline).
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     * 4. Tap the input box to input multiple lines of text.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0380 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle25")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle25_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle25_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle25_3'));
      await button3.click()
      await Utils.sleep(1000)
      for(let i_01 = 0; i_01 < 2; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02 < 9; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==8 && i_01==1){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0380 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0390
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input multiple lines of characters.
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     * 4. Tap the `textAlign` button to toggle the text alignment (start, center, end).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0390 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle26")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle26_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle26_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle26_3'));
      await button3.click()
      await Utils.sleep(1000)
      for(let i_01 = 0; i_01 < 9; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02 < 3; i_02++){
          await button1.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==2 && i_01==8){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0390 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0400
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0400
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     * 4. Tap the `fontSize` button to dynamically change the font size (0, 10, 20, 30).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0400 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle27")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle27_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle27_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle27_3'));
      await button3.click()
      await Utils.sleep(1000)
      for(let i_01 = 0; i_01 < 9; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02 < 4; i_02++){
          await button1.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==3 && i_01==8){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0400 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0410
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0410
     * @tc.desc   : TextArea component
     * 1. Tap the `maxLength` button to set the maximum number of characters (20, 50).
     * 2. Tap the `showCounter` and set it to true to display the character count (true, false).
     * 3. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 4. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     * 5. Tap the input box to input characters.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0410 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle28")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle28_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle28_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle28_3'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributeAndStyle28_4'));
      let button5: Component = await driver.findComponent(ON.id('fontAttributeAndStyle28_5'));
      await button3.click()
      await Utils.sleep(1000)
      for(let i_01 = 0; i_01 < 2; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02 < 2; i_02++){
          await button2.click()
          for(let i_03 = 0; i_03 < 9; i_03++){
            await button3.click()
            await button4.click()
            await Utils.sleep(1000)
            windowSnap.snapShot()
            await Utils.sleep(1000)
            await button5.click()
            if(i_01==1 && i_02==1 && i_03==8){
              Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0410 finish.`);
              done()
            }
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0420
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Tap the `decoration.type` button to change the text decoration type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the text decoration color (color.Pink, 0x008000, 'rgb(255, 0, 0)'
     * , #0000ff, $r('app.color.Yellow')).
     * 4. Tap the `letterSpacing` button to adjust the spacing between letters (-2, 0, 3, '5px', '10%').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0420 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle29")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle29_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle29_2'));
      for(let i_01 = 0; i_01<9; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01 == 8){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0420 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0430
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0430
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input text, special characters, and spaces.
     * 2. Do not set the `letterSpacing` property.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0430 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle30")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle30'));
      for(let i = 0; i<3; i++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i==2){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0430 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0440
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0440
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input text, special characters, and spaces.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * 3. Clear the text and then input again.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0440 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle31")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle31_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle31_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle31_3'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributeAndStyle31_4'));
      for(let i_01 = 0; i_01<3; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          await button3.click()
          await button4.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01 == 2){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0440 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0460
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0460
     * @tc.desc   : TextArea component
     * 1. In the empty text state, display the hint text.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0460 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle32")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle32'));
      for(let i = 0; i<5; i++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i==4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0460 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0470
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0470
     * @tc.desc   : TextArea component
     * 1. Tap the `type` button to change the input field type to (Normal, Email, Number, PhoneNumber).
     * 2. Tap the input box to input characters.
     * 3. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0470 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle33")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle33_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle33_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle33_3'));
      for(let i_01 = 0; i_01<4; i_01++){
        await button1.click()
        await button2.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button3.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01 == 3){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0470 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0480
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0480
     * @tc.desc   : TextArea component
     * 1. Tap the `style` button to change the input box style to (Default, Inline).
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * 3. Tap the input box to input multiple lines of text.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0480 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle34")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle34_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle34_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle34_3'));
      for(let i_01 = 0; i_01<2; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button2.click()
          await button3.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01 == 1){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0480 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0490
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0490
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * 3. Tap the `textAlign` button to toggle the text alignment between (start, center, end).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0490 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle35")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle35_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle35_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle35_3'));
      await button3.click()
      for(let i_01 = 0; i_01<5; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<3; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==2 && i_01 == 4){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0490 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0500
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0500
     * @tc.desc   : TextArea component
     * Click on the input box and enter characters.
     * Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * Click the "fontSize" button to dynamically change the font size (0, 10, 20, 30).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0500 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle36")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle36_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle36_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle36_3'));
      await button3.click()
      for(let i_01 = 0; i_01<5; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<4; i_02++){
          await button2.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 3 && i_01 == 4){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0500 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0510
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0510
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * 3. Long press to select a phrase.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0510 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle37")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle37_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle37_2'));
      let textArea: Component = await driver.findComponent(ON.type('TextArea'));
      await button2.click()
      for(let i_01 = 0; i_01<5; i_01++){
        await button1.click()
        await textArea.longClick()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01 == 4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0510 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0520
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0520
     * @tc.desc   : TextArea component
     * 1. Tap the `maxLength` button to set the maximum number of characters to (20, 50).
     * 2. Tap the `showCounter` and set it to true to display the character count; set it to false to hide the count.
     * 3. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * 4. Tap the input box to input characters.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0520 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle38")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle38_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle38_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle38_3'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributeAndStyle38_4'));
      for(let i_01 = 0; i_01<2; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<2; i_02++){
          await button2.click()
          for(let i_03 = 0; i_03<5; i_03++){
            await button3.click()
            await button4.click()
            windowSnap.snapShot()
            await Utils.sleep(1000)
            if(i_01 == 1 && i_02==1 && i_03==4){
              Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0520 finish.`);
              done()
            }
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0530
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0530
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0530 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle39")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle39_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle39_2'));
      await button1.click()
      for(let i = 0; i<5; i++){
        await button2.click()
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i == 4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0530 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0540
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0540
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input multiple lines of characters.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3. Tap the `fontSize` button to dynamically change the font size to (0, 10, 20, 30).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0540 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle40")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle40_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle40_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle40_3'));
      await button1.click()
      for(let i_01 = 0; i_01<6; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02<4; i_02++){
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 3 && i_01 == 5){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0540 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0550
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0550
     * @tc.desc   : TextArea component
     * 1. In the empty text state, display the hint text.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0550 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle41")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle41'));
      for(let i = 0; i<5; i++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i==4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0550 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0560
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0560
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input text, special characters, and spaces.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3. Clear the text and then input characters again.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0560 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle42")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle42_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle42_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle42_3'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributeAndStyle42_4'));
      for(let i_01 = 0; i_01<3; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          await button3.click()
          await button4.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01 == 2){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0560 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0570
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0570
     * @tc.desc   : TextArea component
     * 1. Tap the `type` button to change the input field type to (Normal, Email, Number, PhoneNumber).
     * 2. Tap the input box to input characters.
     * 3. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0570 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle43")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle43_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle43_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle43_3'));
      for(let i_01 = 0; i_01<4; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<6; i_02++){
          await button2.click()
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==5 && i_01 == 3){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0570 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0580
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0580
     * @tc.desc   : TextArea component
     * 1. Tap the `style` button to change the input box style to (Default, Inline).
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3. Tap the input box to input characters.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0580 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle44")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle44_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle44_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle44_3'));
      for(let i_01 = 0; i_01<2; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<6; i_02++){
          await button3.click()
          await button2.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==5 && i_01 == 1){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0580 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0590
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0590
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3. Long press to select the text.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0590 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle45")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle45_1'));
      let textArea: Component = await driver.findComponent(ON.type('TextArea'));
      for(let i_01 = 0; i_01 < 5; i_01++){
        await button.click()
        await Utils.sleep(1000)
        await textArea.longClick()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01==4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0590 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0600
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0600
     * @tc.desc   : TextArea component
     * 1. Tap the input box to input characters.
     * 2. Tap the `lineHeight` button to dynamically change the line height to (-5, 0, 10, 20, '30%', '40vp').
     * 3. Tap the `decoration` button to display the decoration line.
     * 4. Tap the `style` button to change the decoration line style to (Default, Inline).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0600 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle46")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle46_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle46_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle46_3'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributeAndStyle46_4'));
      await button4.click()
      for(let i_01 = 0; i_01<6; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<2; i_02++){
          await button2.click()
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==1 && i_01 == 5){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0600 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0610
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0610
     * @tc.desc   : Search component
     * 1. Tap the input box to input characters.
     * 2. Tap the `decoration.type` button to change the text decoration type to (Underline, LineThrough, Overline,
     * None).
     * 3. Tap the `decoration.color` button to change the text decoration color to (color.Pink, 0x008000,
     * 'rgb(255, 0, 0)', #0000ff, $r('app.color.Yellow')).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0610 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle47")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle47_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle47_2'));
      await button1.click()
      for(let i_01 = 0; i_01<9; i_01++){
        await button2.click()
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01 == 5){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0610 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0620
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0620
     * @tc.desc   : Search component
     * 1. Tap the input box to input characters.
     * 2. Do not set the `decoration` property.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0620 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle48")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle48'));
      await button.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0620 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0630
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0630
     * @tc.desc   : Search component
     * 1. Tap the input box to input characters.
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Do not set the `decoration.color`.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0630 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle49")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle49_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle49_2'));
      await button1.click()
      for(let i_01 = 0; i_01<4; i_01++){
        await button2.click()
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01 == 5){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0630 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0700
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0700
     * @tc.desc   : Search component
     * 1. Tap the input box to input characters.
     * 2. Tap the `decoration.type` button to change the decoration line type (Underline, LineThrough, Overline, None).
     * 3. Tap the `decoration.color` button to change the decoration line color (color.Pink, 0x008000, 'rgb(255, 0, 0)',
     * #0000ff, $r('app.color.Yellow')).
     * 4. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0700 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle50")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle50_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle50_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle50_3'));
      await button1.click()
      for(let i_01 = 0; i_01<9; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 4 && i_01 == 8){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0700 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0720
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0720
     * @tc.desc   : Search component
     * 1. Tap the input box to input text, special characters, and spaces.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     * 3. Clear the text and then input again.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0720 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle51")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle51_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle51_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle51_3'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributeAndStyle51_3'));
      await button1.click()
      for(let i_01 = 0; i_01<3; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button3.click()
          await button4.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 4 && i_01 == 2){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0720 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0740
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0740
     * @tc.desc   : Search component
     * 1. In the empty text state, display the hint text.
     * 2. Tap the `letterSpacing` button to adjust the letter spacing to (-2, 0, 3, '5px', '10%').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0740 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle52")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle52'));
      for(let i_02 = 0; i_02<5; i_02++){
        await button1.click()
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_02 == 4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0740 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0750
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0750
     * @tc.desc   : Search component
     * Click the "type" button to change the type of the input box (Normal, Email, Number, PhoneNumber)
     * Click on the input box and enter characters
     * Click the "letterSpacing" button to adjust the letter spacing (-2, 0, 3, '5px', '10%')
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0750 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle53")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle53_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle53_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle53_3'));
      for(let i_01 = 0; i_01<4; i_01++){
        await button1.click()
        await button2.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 4 && i_01 == 3){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0750 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0760
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0760
     * @tc.desc   : Search component
     * Click on the input box and enter characters.
     * Click the "letterSpacing" button to adjust the letter spacing between characters (-2, 0, 3, '5px', '10%').
     * Click the "textAlign" button to switch the text alignment (start, center, end).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0760 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle54")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle54_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle54_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle54_3'));
      await button1.click()
      for(let i_01 = 0; i_01<5; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02<3; i_02++){
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 2 && i_01 == 4){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0760 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0780
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0780
     * @tc.desc   : Search component
     * Click on the input box and enter characters.
     * Click the "letterSpacing" button to adjust the spacing between the characters (-2, 0, 3, '5px', '10%').
     * Long-press on the input box to select a word or phrase.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0780 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle55")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle55_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle55_2'));
      let search: Component = await driver.findComponent(ON.type('Search'));
      await button1.click()
      for(let i_01 = 0; i_01<5; i_01++){
        await button2.click()
        await search.longClick()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01 == 4){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0780 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0790
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0790
     * @tc.desc   : Search component
     * Click on the input box and enter characters.
     * Click the "lineHeight" button to change the line height (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0790 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle56")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle56_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle56_2'));
      await button1.click()
      for(let i_01 = 0; i_01<6; i_01++){
        await button2.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01 == 5){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0790 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0800
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0800
     * @tc.desc   : Search component
     * Click on the input box and enter characters.
     * Click the "lineHeight" button to dynamically change the line height (-5, 0, 10, 20, '30%', '40vp').
     * Click the "fontSize" button to dynamically change the font size (0, 10, 20, 30).
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0800 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle57")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle57_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle57_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle57_3'));
      await button1.click()
      for(let i_01 = 0; i_01<6; i_01++){
        await button2.click()
        for(let i_02 = 0; i_02<4; i_02++){
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 3 && i_01 == 5){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0800 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0810
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0810
     * @tc.desc   : Search component
     * Display hint text when the input box is empty.
     * Click the "lineHeight" button to dynamically change the line height (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0810 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle56")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributeAndStyle58'));
      for(let i_01 = 0; i_01<6; i_01++){
        await button.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
        if(i_01 == 5){
          Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0810 finish.`);
          done()
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0820
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0820
     * @tc.desc   : Search component
     * Click on the input box and enter text, special characters, and spaces.
     * Click the "lineHeight" button to dynamically change the line height (-5, 0, 10, 20, '30%', '40vp').
     * Clear the text and enter characters again.
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0820 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle59")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle59_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle59_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle59_3'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributeAndStyle59_4'));
      for(let i_01 = 0; i_01<3; i_01++){
        await button1.click()
        for(let i_02 = 0; i_02<5; i_02++){
          await button2.click()
          await Utils.sleep(1000)
          windowSnap.snapShot()
          await Utils.sleep(1000)
          await button3.click()
          await button4.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02==4 && i_01 == 2){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0820 finish.`);
            done()
          }
        }
      }
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0830
     * @tc.name   : SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0830
     * @tc.desc   : Search component
     * Click the "type" button to change input type (Normal, Email, Number, PhoneNumber).
     * Click on the input box and enter characters.
     * Click the "lineHeight" button to change line height (-5, 0, 10, 20, '30%', '40vp').
     */
    it('SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0830 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface03/fontAttributeAndStyle53")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributeAndStyle60_1'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributeAndStyle60_2'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributeAndStyle60_3'));
      for(let i_01 = 0; i_01<4; i_01++){
        await button1.click()
        await button2.click()
        for(let i_02 = 0; i_02<6; i_02++){
          await button3.click()
          windowSnap.snapShot()
          await Utils.sleep(1000)
          if(i_02 == 5 && i_01 == 3){
            Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LINEHEIGHT_DECORATION_LETTERSPACING_0830 finish.`);
            done()
          }
        }
      }
    })
  })
}
