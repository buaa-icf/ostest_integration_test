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

export default function UIAttributeFontInterfaceWeight() {

  describe('UIAttributeFontInterfaceWeight', () => {
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
    * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0170
    * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0170
    * @tc.desc    set fontWeight to 500, 800
    */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0170 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0180
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0180
     * @tc.desc    set fontWeight to 1000
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0180 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0180 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0190
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0190
     * @tc.desc    set fontWeight to "400", "600"
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0190 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0200
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0200
     * @tc.desc    set fontWeight to 'bolder'
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0200 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0210
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0210
     * @tc.desc    set fontWeight to 'bold'
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0210 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0210 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0220
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0220
     * @tc.desc    set fontWeight to "lighter"
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0220 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0220 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0230
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0230
     * @tc.desc    set fontWeight to "medium"
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0230 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0230 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0240
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0240
     * @tc.desc    set fontWeight to "regular"
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0240 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0240 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0250
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0250
     * @tc.desc    set fontWeight to FontWeight.Bold
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0250 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0250 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0260
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0260
     * @tc.desc    set fontWeight to FontWeight.Bolder
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0260 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0260 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0270
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0270
     * @tc.desc    set fontWeight to FontWeight.Lighter
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0270 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0270 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0280
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0280
     * @tc.desc    set fontWeight to FontWeight.Normal
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0280 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0280 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0290
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0290
     * @tc.desc    set fontWeight to FontWeight.Regular
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0290 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0290 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0300
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0300
     * @tc.desc    set fontWeight to any value
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0300 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0300 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0310
     * @tc.name    SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0310
     * @tc.desc    didn't set fontWeight
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0310 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface/UIAttributeFontInterface031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0310 finish.`);
      done()
    })
  })
}
