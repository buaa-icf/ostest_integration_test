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

export default function ComponentTextAttributeStringConstructs001() {

  describe('ComponentTextAttributeStringConstructs001', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0010
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create StyledString property string normally
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0010 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs001")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0010 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0020
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create MutableStyledString property string normally
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0020 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs002")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0020 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0030
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create attribute strings for multiple colors
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0030 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs003")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0030 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0040
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create a mixed character attribute string
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0040 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs004")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0040 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0050
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create attribute strings for multiple colors, with crossed color settings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0050 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs005")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0050 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0060
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create a property string with a length less than the string length
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0060 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs006")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0060 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0070
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create a property string with a length greater than the string length
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0070 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs007")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0070 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0080
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create attribute string without setting attribute style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0080 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs008")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0080 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0090
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create a property string without setting start and length
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0090 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs009")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0090 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0100
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create a property string with a start value greater than the string length
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0100 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs010")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0100 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0110
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create a property string with start set to a negative number
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0110 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs011")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0110 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0120
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Create a property string with a negative length
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0120 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs012")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0120 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0370
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Set the fontColor property for the Text component
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0370 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs013")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0370 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0380
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      SpanStyle sets string properties normally
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0380 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs014")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0380 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0440
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Add Span sub component to Text component
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0440 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs020")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0440 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0450
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Set attribute strings with too much text and too many different styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0450 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs021")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0450 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0470
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Enable text recognition for attribute strings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0470 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs022")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0470 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0480
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Add text shadow to attribute string
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0480 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs023")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0480 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0490
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Attribute string setting omission position
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0490 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs024")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0490 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0500
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Set truncation method for attribute string
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0500 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs025")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0500 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0510
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Attribute string setting privacy mask
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0510 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs026")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0510 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0530
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Alignment method for attribute string settings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0530 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs027")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0530 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0540
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Attribute string setting font style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0540 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs028")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0540 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0550
     * @tc.name      STRING_CONSTRUCTS
     * @tc.desc      Attribute string setting modifier line
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0550 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeStringConstructs/ComponentTextAttributeStringConstructs029")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_CONSTRUCTS_0550 finish.`);
      done()
    })
  })
}
