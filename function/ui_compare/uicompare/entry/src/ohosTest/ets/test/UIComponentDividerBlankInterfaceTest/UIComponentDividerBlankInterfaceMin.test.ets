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

export default function UIComponentDividerBlankInterfaceMin() {

  describe('UIComponentDividerBlankInterfaceMin', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0120
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0120
     * @tc.desc    set min of blank to '50lpx'
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0120 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0130
     * @tc.desc    set min of blank to '50px'
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0130 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0140
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0140
     * @tc.desc    set min of blank to '50vp'
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0140 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0150
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0150
     * @tc.desc    set min of blank to '100vp', color to yellow
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0150 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0160
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0160
     * @tc.desc    set min of blank to '-20', color to yellow. The spacing is 0.
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0160 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0170
     * @tc.desc    set min of blank to '50%', color to yellow. The spacing is 0.
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0170 finish.`);
      done()
    })

    /*
       * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0180
       * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0180
       * @tc.desc    set min of blank to '50abc', .color(Color.Yellow)
       */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0180 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0190
    * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0190
    * @tc.desc    set min of blank to 100, width to 50. The spacing is 100vp.
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0190 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0200
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0200
     * @tc.desc    set min of blank to '50fp', color to yellow. The spacing is 50fp.
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0200 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0220
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0220
     * @tc.desc    set width of blank to 50, don't set the width of row
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0220 finish.`);
      done()
    })
  })
}
