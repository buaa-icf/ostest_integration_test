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

export default function UIComponentTextCommonLinespaceC() {

  describe('UIComponentTextCommonLinespaceC', () => {
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
    * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020
    * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020
    * @tc.desc        Set textOverFlow
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLinespaceC/UIComponentTextCommonLinespaceC002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0020 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030
    * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030
    * @tc.desc        Set textOverFlow
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLinespaceC/UIComponentTextCommonLinespaceC003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0030 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040
    * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040
    * @tc.desc        Set textOverFlow
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLinespaceC/UIComponentTextCommonLinespaceC004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0040 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0050
    * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0050
    * @tc.desc        Set lineSpacing
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLinespaceC/UIComponentTextCommonLinespaceC005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0050 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0060
    * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0060
    * @tc.desc        Set lineSpacing
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLinespaceC/UIComponentTextCommonLinespaceC006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0060 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070
    * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070
    * @tc.desc        Set lineSpacing
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLinespaceC/UIComponentTextCommonLinespaceC007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0070 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080
    * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080
    * @tc.desc        Set lineSpacing
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLinespaceC/UIComponentTextCommonLinespaceC008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0080 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0090
    * @tc.name        SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0090
    * @tc.desc        Set lineSpacing lineHeight
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonLinespaceC/UIComponentTextCommonLinespaceC009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_LINESPACE_C_0090 finish.`);
      done()
    })

  })
}