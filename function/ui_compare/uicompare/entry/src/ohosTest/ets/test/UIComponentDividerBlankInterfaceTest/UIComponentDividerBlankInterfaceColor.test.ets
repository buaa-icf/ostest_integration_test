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

export default function UIComponentDividerBlankInterfaceColor() {

  describe('UIComponentDividerBlankInterfaceColor', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0090
     * @tc.desc    don't set the color of blank
     */
    it('SUB_ACE_UI_ATTRIBUTES_FONT_SUPPORTSTAGE_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_SUPPORTSTAGE_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_ATTRIBUTES_FONT_SUPPORTSTAGE_0090 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0100
     * @tc.desc    set the color of blank twice, first yellow, second blue
     */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerBlankInterface/UIComponentDividerBlankInterface010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_DIVIDER_BLANK_INTERFACE_0100 finish.`);
      done()
    })
  })
}
