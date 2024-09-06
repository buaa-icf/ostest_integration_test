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

export default function ComponentTextCommonTextMinFontSize001() {

  describe('ComponentTextCommonTextMinFontSize001', () => {
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

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_001
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_001
     * @tc.desc      MaxFontSize setting null | undefined Copy of (1)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_001', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_001 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonTextMinFontSize/ComponentTextCommonTextMinFontSize001")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_001 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_002
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_002
     * @tc.desc      MaxFontSize sets the number type value Copy of (1)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_002', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_002 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonTextMinFontSize/ComponentTextCommonTextMinFontSize002")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_002 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_003
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_003
     * @tc.desc      MaxFontSize Set Recourse type value Copy of (1)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_003', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_003 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonTextMinFontSize/ComponentTextCommonTextMinFontSize003")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_003 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_004
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_004
     * @tc.desc      MaxFontSize sets string type value Copy of (1)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_004', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_004 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonTextMinFontSize/ComponentTextCommonTextMinFontSize004")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_004 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_005
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_005
     * @tc.desc      MinFontSize sets the number type value Copy of (1)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_005', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_005 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonTextMinFontSize/ComponentTextCommonTextMinFontSize005")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_005 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_006
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_006
     * @tc.desc      MinFontSize sets the Recourse type value to Copy of (1)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_006', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_006 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonTextMinFontSize/ComponentTextCommonTextMinFontSize006")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_006 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_007
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_007
     * @tc.desc      MinFontSize sets string type value Copy of (1)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_007', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_007 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonTextMinFontSize/ComponentTextCommonTextMinFontSize007")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXT_MINFONTSIZE_007 finish.`);
      done()
    })
  })
}
