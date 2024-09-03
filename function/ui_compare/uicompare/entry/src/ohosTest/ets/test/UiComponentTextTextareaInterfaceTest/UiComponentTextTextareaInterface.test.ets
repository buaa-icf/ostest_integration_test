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
import router from '@ohos.router';
import {UiComponent, UiDriver, Component, Driver, UiWindow,MouseButton, ON, BY, MatchPattern, DisplayRotation, ResizeDirection, WindowMode, PointerMatrix} from '@ohos.UiTest';
export default function UiComponentTextTextareaInterface() {
  describe('UiComponentTextTextareaInterface', () => {
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
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0010
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0010
              * @tc.desc   TextArea FontStyle.Italic
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0010 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0020
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0020
          * @tc.desc    TextArea FontStyle.Normal
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0020 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0040
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0040
          * @tc.desc    TextArea fontWeight=0
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0040 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0050
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0050
          * @tc.desc   TextArea fontWeight=-1 -11
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0050 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0060
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0060
          * @tc.desc    TextArea fontWeight=1000
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0060 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0070
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0070
          * @tc.desc    TextArea fontWeight=1 11
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0070 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0090
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0090
          * @tc.desc    TextArea fontWeight=750
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0090 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0140
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0140
          * @tc.desc    TextArea  fontWeight(FontWeight.Medium)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface140")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0140 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0150
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0150
          * @tc.desc    TextArea fontWeight(FontWeight.Normal)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface150")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0150 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0170
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0170
          * @tc.desc    TextArea fontWeight(FontWeight.undefined)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface170")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0170 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0210
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0210
          * @tc.desc    TextArea placeholderColor('rgb(0,0,255)')
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface210")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0220 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0220
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0220
          * @tc.desc  TextArea placeholderColor('rgba(0, 255,0,1')
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface220")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0220 finish.`);
      done()
    })

    /*
         * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0230
         * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0230
         * @tc.desc  TextArea placeholderColor('abcd')
  */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface230")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0230 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0340
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0340
          * @tc.desc    TextArea  placeholderFont({size:-1})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0340 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface340")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0340 finish.`);
      done()
    })

    /*
              * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0360
              * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0360
              * @tc.desc    TextArea   .placeholderFont({size:0})
       */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0360 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface360")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0360 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0370
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0370
          * @tc.desc    TextArea  placeholderFont({size:'10%'})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0370 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface370")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0370 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0380
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0380
          * @tc.desc    TextArea  placeholderFont({size:11})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0380 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface380")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0380 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0420
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0420
          * @tc.desc    TextArea  placeholderFont({size:20,weight:0})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0420 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface420")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0420 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0430
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0430
          * @tc.desc    TextArea  placeholderFont({size:20,weight:'10%'})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0430 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface430")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0430 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0440
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0440
          * @tc.desc    TextArea  placeholderFont({size:20,weight:1000})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0440 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface440")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0440 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0450
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0450
          * @tc.desc    TextArea  placeholderFont({size:20,weight:11})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0450 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface450")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0450 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0470
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0470
          * @tc.desc    TextArea  placeholderFont({size:20,weight:750})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0470 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface470")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0470 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0480
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0480
          * @tc.desc    TextArea  placeholderFont({size:20,weight:'abc'})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0480 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface480")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0480 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0490
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0490
          * @tc.desc    TextArea  placeholderFont({size:20,weight:undefined})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0490 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface490")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0490 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0510
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0510
          * @tc.desc    TextArea  placeholderFont({size:20,family:'HarmonyOS Sans'})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0510 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface510")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0510 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0530
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0530
          * @tc.desc    TextArea  placeholderFont({size:20,style:FontStyle.Normal})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0530 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface530")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0530 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0540
       * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0540
       * @tc.desc    not set CopyOptions
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0540 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface540")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textArea540'))
      await text.inputText('hello world')
      await driver.longClick(150,150)
      await driver.mouseClick({x:150,y:50},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0540 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0560
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0560
          * @tc.desc    TextArea   not set placeholderFont
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0560 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface560")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0560 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0600
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0600
          * @tc.desc    set placeholder and text
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0600 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface600")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0600 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0610
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0610
          * @tc.desc    TextArea  caretPosition(-1)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0610 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface610")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0610 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0620
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0620
          * @tc.desc    TextArea  caretPosition(0)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0620 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface620")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0620 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0630
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0630
          * @tc.desc    TextArea caretPosition(8)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0630 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface630")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0630 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0640
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0640
          * @tc.desc    TextArea   not set placeholderFont
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0640 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface640")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0640 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0750
       * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0750
       * @tc.desc    set CopyOptions=inapp
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0750 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface750")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textArea750'))
      await text.inputText('hello world')
      await driver.longClick(200,150)
      await Utils.sleep(1000)
      await driver.mouseClick({x:200, y:100},MouseButton.MOUSE_BUTTON_MIDDLE, 2072,2019);
      await Utils.sleep(1000)
      await driver.longClick(400,400)
      await Utils.sleep(1000)
      await driver.mouseClick({x:400, y:400},MouseButton.MOUSE_BUTTON_RIGHT, 2622);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0750 finish.`);
      done()
    })

    /*
      * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0760
      * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0760
      * @tc.desc    set CopyOptions=localdevice
*/
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0760 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface760")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textArea760'))
      let button: Component = await driver.findComponent(ON.id('jump0760'))
      await text.inputText('hello world')
      await driver.longClick(200,150)
      await Utils.sleep(1000)
      await driver.mouseClick({x:200, y:100},MouseButton.MOUSE_BUTTON_MIDDLE, 2072,2019);
      await button.click()
      await Utils.sleep(1000)
      await driver.longClick(400,400)
      await Utils.sleep(1000)
      await driver.mouseClick({x:400, y:400},MouseButton.MOUSE_BUTTON_RIGHT, 2622);
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0760 finish.`);
      done()
    })

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0770
        * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0770
        * @tc.desc    set CopyOptions=none
 */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0770 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface770")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let text: Component = await driver.findComponent(ON.id('textArea770'))
      await text.inputText('hello world')
      await driver.longClick(150,150)
      await driver.mouseClick({x:150,y:50},MouseButton.MOUSE_BUTTON_LEFT)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0770 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0860
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0860
          * @tc.desc    TextArea   fontSize(-1)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0860 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface860")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0860 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0870
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0870
          * @tc.desc    TextArea  fontSize(-21)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0870 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface870")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0870 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0890
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0890
          * @tc.desc    TextArea  fontSize("10%")
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0890 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface890")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0890 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0910
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0910
          * @tc.desc    TextArea  fontSize(11)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0910 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface910")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0910 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0920
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0920
          * @tc.desc    TextArea  fontSize(21)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0920 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface920")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0920 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0930
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0930
          * @tc.desc    TextArea  fontSize('abc')
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0930 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface930")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0930 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0950
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0950
          * @tc.desc    TextArea  not set inputfilter
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0950 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface950")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0950 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0960
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0960
          * @tc.desc    TextArea inputFilter('[A-Z]', (value: string) => {console.info("testtest" + value)})
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0960 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface960")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0960 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0970
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0970
          * @tc.desc    TextArea  inputFilter('[A-Z]')
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0970 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface970")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0970 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0980
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0980
          * @tc.desc    TextArea maxLength(20)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0980 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface980")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(4000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0980 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0990
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0990
          * @tc.desc    TextArea  setTextSelection(-3, 3)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0990 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface990")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_0990 finish.`);
      done()
    })

    /*
          * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1000
          * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1000
          * @tc.desc    TextArea  setTextSelection(1, 3)
   */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1000 start.`);
      Settings.createWindow("testability/pages/UiComponentTextTextareaInterface/UiComponentTextTextareaInterface1000")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(10000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXTAREA_INTERFACE_1000 finish.`);
      done()
    })
  })
}
