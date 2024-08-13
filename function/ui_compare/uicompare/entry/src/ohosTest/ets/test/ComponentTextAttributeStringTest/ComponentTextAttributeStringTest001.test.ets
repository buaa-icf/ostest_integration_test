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

export default function ComponentTextAttributeStringTest001() {

  describe('ComponentTextAttributeStringTest001', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0010
     * @tc.name      STRING
     * @tc.desc      Set font size for attribute string, fontSize: (10, LengthUnit. PX)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0010 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString001")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0010 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0020
     * @tc.name      STRING
     * @tc.desc      Set the font size for the attribute string, fontSize: (80, LengthUnit.PERCENT )
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0020 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString002")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0020 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0030
     * @tc.name      STRING
     * @tc.desc      Set font size for attribute string, fontSize: (30, LengthUnit. VP)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0030 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString003")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0030 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0040
     * @tc.name      STRING
     * @tc.desc      Set font size for attribute string, fontSize: (30, LengthUnit. FP)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0040 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString004")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0040 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0050
     * @tc.name      STRING
     * @tc.desc      Set font size for attribute string, fontSize: (50, LengthUnit. LPX)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0050 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString005")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0050 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0060
     * @tc.name      STRING
     * @tc.desc      Property string setting font width, fontWeight (0)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0060 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString006")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0060 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0070
     * @tc.name      STRING
     * @tc.desc      Set font width for attribute string, fontWeight (200)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0070 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString007")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0070 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0080
     * @tc.name      STRING
     * @tc.desc      Attribute string setting font width, fontWeight (1000)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0080 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString008")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0080 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0090
     * @tc.name      STRING
     * @tc.desc      The attribute string sets the font width, fontWeight Bolder
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0090 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString009")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0090 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0100
     * @tc.name      STRING
     * @tc.desc      Attribute string setting font width, fontWeight (abcdefg)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0100 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString010")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0100 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0110
     * @tc.name      STRING
     * @tc.desc      Attribute string setting font width, fontWeight (bolder)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0110 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString011")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0110 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0120
     * @tc.name      STRING
     * @tc.desc      Property string sets font width, fontWeight (undefined)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0120 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString012")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0120 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0130
     * @tc.name      STRING
     * @tc.desc      Set the font size for the attribute string, fontStyle (fontStyle: Normal)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0130 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString013")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0130 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0140
     * @tc.name      STRING
     * @tc.desc      Set the font size for the attribute string, fontStyle (fontStyle: Italic)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0140 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString014")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0140 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0150
     * @tc.name      STRING
     * @tc.desc      Set the font size for the attribute string, fontFamily ('custom ')
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0150 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString015")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0150 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0160
     * @tc.name      STRING
     * @tc.desc      Set font size for attribute string, fontFamily (HarmonyOS Sans)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0160 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString016")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0160 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0170
     * @tc.name      STRING
     * @tc.desc      Set font for attribute string without passing parameters
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0170 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString017")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0170 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0180
     * @tc.name      STRING
     * @tc.desc      Set font modifier lines and underline for attribute strings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0180 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString018")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0180 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0190
     * @tc.name      STRING
     * @tc.desc      Set font modifier lines and penetration lines for attribute strings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0190 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString019")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0190 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0200
     * @tc.name      STRING
     * @tc.desc      Set font modifier lines and underline for attribute strings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0200 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString020")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0200 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0210
     * @tc.name      STRING
     * @tc.desc      Attribute string setting font modifier line, None
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0210 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString021")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0210 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0220
     * @tc.name      STRING
     * @tc.desc      Attribute string setting font modifier line, undefined
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0220 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString022")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0220 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0230
     * @tc.name      STRING
     * @tc.desc      Set font modifier lines for attribute strings, without setting colors
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0230 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString023")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0230 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0240
     * @tc.name      STRING
     * @tc.desc      Set font modifier lines for attribute strings and set colors to outliers
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0240 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString024")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0240 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0250
     * @tc.name      STRING
     * @tc.desc      Set font modifier lines for attribute strings and set colors to resource references
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0250 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString025")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0250 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0260
     * @tc.name      STRING
     * @tc.desc      Set the text offset of the attribute string to a negative number
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0260 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString026")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0260 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0270
     * @tc.name      STRING
     * @tc.desc      Set the text offset of the attribute string to 30px
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0270 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString027")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0270 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0280
     * @tc.name      STRING
     * @tc.desc      Set the text offset of the attribute string to 20vp
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0280 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString028")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0280 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0290
     * @tc.name      STRING
     * @tc.desc      Set the text offset of the attribute string to 10fp
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0290 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString029")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0290 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0300
     * @tc.name      STRING
     * @tc.desc      Set the text offset of the attribute string to 50%
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0300 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString030")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0300 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0310
     * @tc.name      STRING
     * @tc.desc      Set the text offset of the attribute string to 50lpx
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0310 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString031")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0310 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0320
     * @tc.name      STRING
     * @tc.desc      Set the text offset for the attribute string, with the unit set to 'undefined'
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0320 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString032")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0320 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0330
     * @tc.name      STRING
     * @tc.desc      Set the text offset of the attribute string to 'undefined'
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0330 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString033")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0330 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0340
     * @tc.name      STRING
     * @tc.desc      Set the text offset for the attribute string and set the parameter to 'undefined'
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0340 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString034")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0340 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0350
     * @tc.name      STRING
     * @tc.desc      Set the character spacing for the attribute string and set the parameter to a negative number
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0350 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString035")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0350 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0360
     * @tc.name      STRING
     * @tc.desc      Set the character spacing of the attribute string to 10px
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0360 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString036")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0360 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0370
     * @tc.name      STRING
     * @tc.desc      Set the character spacing of the attribute string to 20vp
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0370 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString037")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0370 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0380
     * @tc.name      STRING
     * @tc.desc      Set the character spacing of the attribute string to 10fp
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0380 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString038")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0380 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0390
     * @tc.name      STRING
     * @tc.desc      Set the character spacing of the attribute string to 50%
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0390 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString039")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0390 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0400
     * @tc.name      STRING
     * @tc.desc      Set the character spacing of the attribute string to 5lpx
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0400 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString040")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0400 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0410
     * @tc.name      STRING
     * @tc.desc      Set the character spacing for the attribute string, with the unit set to 'undefined'
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0410 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString041")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0410 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0420
     * @tc.name      STRING
     * @tc.desc      Set the character spacing of the attribute string to 'undefined'
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0420 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString042")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0420 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0430
     * @tc.name      STRING
     * @tc.desc      Set the character spacing for the attribute string and set the parameter to 'undefined'
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0430 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString043")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0430 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0440
     * @tc.name      STRING
     * @tc.desc      Attribute string setting text with multiple shadows
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0440 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString044")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0440 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0450
     * @tc.name      STRING
     * @tc.desc      Set multiple styles for attribute strings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0450 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString045")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0450 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0460
     * @tc.name      STRING
     * @tc.desc      Replace attribute string content
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0460 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString046")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0460 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0470
     * @tc.name      STRING
     * @tc.desc      Insert string content
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0470 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString047")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0470 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0480
     * @tc.name      STRING
     * @tc.desc      Remove string content
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0480 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString048")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0480 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0490
     * @tc.name      STRING
     * @tc.desc      Replace string style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0490 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString049")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0490 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0500
     * @tc.name      STRING
     * @tc.desc      Set a new style for strings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0500 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString050")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0500 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0510
     * @tc.name      STRING
     * @tc.desc      Move out of the specified range and specify the style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0510 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString051")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0510 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0520
     * @tc.name      STRING
     * @tc.desc      Remove all styles from the specified range
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0520 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString052")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0520 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0530
     * @tc.name      STRING
     * @tc.desc      Clear all styles of the string
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0530 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString053")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0530 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0540
     * @tc.name      STRING
     * @tc.desc      Replace the new attribute string
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0540 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString054")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0540 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0550
     * @tc.name      STRING
     * @tc.desc      Insert a new attribute string
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0550 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString055")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0550 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0560
     * @tc.name      STRING
     * @tc.desc      Add attribute string at the end
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0560 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString056")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0560 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0570
     * @tc.name      STRING
     * @tc.desc      Set font style for text component
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0570 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString057")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0570 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0580
     * @tc.name      STRING
     * @tc.desc      Select and drag the attribute string of the text component
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0580 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString058")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0580 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0590
     * @tc.name      STRING
     * @tc.desc      Text component setting padding and margin
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0590 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString059")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0590 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0600
     * @tc.name      STRING
     * @tc.desc      Set text truncation method for text component
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0600 start.`);
      Settings.createWindow("testability/pages/ComponentTextAttributeString/ComponentTextAttributeString060")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_ATTRIBUTE_STRING_0600 finish.`);
      done()
    })
  })
}
