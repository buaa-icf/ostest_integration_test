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

export default function UIComponentDividerDividerLayout() {

  describe('UIComponentDividerDividerLayout', () => {
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
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0010
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0010
    * @tc.desc        Divider do not set width or height
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0010', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerDividerLayout001 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerDividerLayout/UIComponentDividerDividerLayout001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerDividerLayout001 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0020
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0020
    * @tc.desc        Divider Specifies the width
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0020', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerDividerLayout002 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerDividerLayout/UIComponentDividerDividerLayout002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerDividerLayout002 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0030
    * @tc.name        SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0030
    * @tc.desc        Divider Set a height
    */
    it('SUB_ACE_UI_COMPONENT_DIVIDER_DIVIDER_LAYOUT_0030', 0, async (done: Function) => {
      Logger.info('TEST', `UIComponentDividerDividerLayout003 start.`);
      Settings.createWindow("testability/pages/UIComponentDividerDividerLayout/UIComponentDividerDividerLayout003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `UIComponentDividerDividerLayout003 finish.`);
      done()
    })
  })
}
