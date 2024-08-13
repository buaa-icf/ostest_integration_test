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

export default function ComponentAttributeStringModifyingText001() {

  describe('ComponentAttributeStringModifyingText001', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0010
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Normal replacement of specified text
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0010 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText001")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0010 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0020
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Replace text with a length less than length
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0020 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText002")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0020 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0070
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Replace specified text to obtain string length and content
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0070 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText003")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0070 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0080
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Insert string normally
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0080 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText004")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0080 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0090
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Test for inserting special symbols such as line breaks and spaces
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0090 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText005")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0090 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0100
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Insert at the color stitching of characters
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0100 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText006")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0100 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0130
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Insert a string to obtain its length and content
     * @tc.level     Level 3
     * @tc.type
     * @tc.size
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0130 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText007")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0130 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0140
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Normal deletion of specified range attribute strings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0140 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText008")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0140 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0200
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Delete the specified range attribute string to obtain the new string length and content
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0200 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText009")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0200 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0210
     * @tc.name      STRING_MODIFYING_STYLE_TEXT
     * @tc.desc      Get the color of the TextCtyle property
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0210 start.`);
      Settings.createWindow("testability/pages/ComponentAttributeStringModifyingText/ComponentAttributeStringModifyingText010")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ATTRIBUTE_STRING_MODIFYING_TEXT_0210 finish.`);
      done()
    })
  })
}
