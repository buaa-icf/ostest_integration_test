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

export default function UIComponentDividerDividerInterface() {

  describe('UIComponentDividerDividerInterface', () => {
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
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_INTERFACE_0070
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_INTERFACE_0070
    * @tc.desc        Divider component strokeWidth is set several times
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_INTERFACE_0070', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerDividerInterface007 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerDividerInterface/UIComponentDividerDividerInterface007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerDividerInterface007 finish.`);
      done()
    })
  })
}
