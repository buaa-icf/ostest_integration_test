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

export default function UiComponentTextModifier() {

  describe('UiComponentTextModifier', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0010
     * @tc.desc      Set color
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0010 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0010 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0020
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0020
     * @tc.desc      Set objectFit
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0020 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier002")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0020 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0030
     * @tc.desc      Set verticalAlign
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0030 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier003")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0030 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0040
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0040
     * @tc.desc      Set fontColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0040 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier004")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0040 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0050
     * @tc.desc      Set fontSize
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0050 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier005")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0050 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0060
     * @tc.desc      Set allowScale
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0060 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier006")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0060 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0070
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0070
     * @tc.desc      Set fontWeight
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0070 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier007")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0070 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0080
     * @tc.desc      Set fontFamily
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0080 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier008")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0080 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0090
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0090
     * @tc.desc      Set copyOptions
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0090 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier009")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0090 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0100
     * @tc.desc      Set selectionMenuHidden
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0100 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0100 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0110
     * @tc.desc      Set searchButton
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0110 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier011")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0110 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0110
     * @tc.desc      Set caretStyle
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0120 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier012")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0120 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0130
     * @tc.desc      Set cancelButton
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0130 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier013")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0130 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0140
     * @tc.desc      Set searchIcon
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0140 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier014")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0140 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0150
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0150
     * @tc.desc      Set enableKeyboardOnFocus
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0150 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier015")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0150 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0160
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0160
     * @tc.desc      Set fontColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0160 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier016")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0160 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0170
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0170
     * @tc.desc      Set placeholderColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0170 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier017")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0170 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0180
     * @tc.desc      Set placeholderFont
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0180 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier018")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0180 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0190
     * @tc.desc      Set textFont
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0190 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier019")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0190 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0200
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0200
     * @tc.desc      Set copyOption
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0200 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier020")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0200 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0210
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0210
     * @tc.desc      Set textAlign
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0210 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier021")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0210 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0220
     * @tc.desc      Set lineHeight
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0220 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier022")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0220 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0230
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0230
     * @tc.desc      Set textCase
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0230 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier023")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0230 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0240
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0240
     * @tc.desc      Set letterSpacing
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0240 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier024")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0240 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0250
     * @tc.desc      Set decoration
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0250 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier025")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0250 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0260
     * @tc.desc      Set fontFamily
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0260 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier026")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0260 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0270
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0270
     * @tc.desc      Set fontWeight
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0270 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier027")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0270 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0280
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0280
     * @tc.desc      Set fontStyle
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0280 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier028")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0280 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0290
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0290
     * @tc.desc      Set fontSize
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0290 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier029")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0290 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0300
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0300
     * @tc.desc      Set fontColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0300 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier030")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0300 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0310
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0310
     * @tc.desc      Set font
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0310 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier031")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0310 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0320
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0320
     * @tc.desc      Set showCounter
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0320 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier032")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0320 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0330
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0330
     * @tc.desc      Set maxLines and Style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0330 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier033")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0330 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0340
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0340
     * @tc.desc      Set Style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0340 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier034")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0340 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0350
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0350
     * @tc.desc      Set selectionMenuHidden
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0350 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier035")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0350 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0360
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0360
     * @tc.desc      Set barState
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0360 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier036")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0360 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0370
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0370
     * @tc.desc      Set maxLength
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0370 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier037")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0370 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0380
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0380
     * @tc.desc      Set enableKeyboardOnFocus
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0380 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier038")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0380 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0390
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0390
     * @tc.desc      Set copyOption
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0390 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier039")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0390 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0400
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0400
     * @tc.desc      Set fontFamily
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0400 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier040")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0400 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0410
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0410
     * @tc.desc      Set fontWeight
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0410 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier041")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0410 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0420
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0420
     * @tc.desc      Set fontStyle
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0420 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier042")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0420 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0430
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0430
     * @tc.desc      Set fontSize
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0430 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier043")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0430 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0440
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0440
     * @tc.desc      Set fontColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0440 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier044")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0440 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0450
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0450
     * @tc.desc      Set caretColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0450 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier045")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0450 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0460
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0460
     * @tc.desc      Set textAlign
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0460 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier046")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0460 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0470
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0470
     * @tc.desc      Set placeholderFont
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0470 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier047")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0470 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0480
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0480
     * @tc.desc      Set placeholderColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0480 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier048")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0480 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0490
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0490
     * @tc.desc      Set draggable
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0490 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier049")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0490 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0500
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0500
     * @tc.desc      Set wordBreak
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0500 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier050")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0500 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0510
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0510
     * @tc.desc      Set textIndent
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0510 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier051")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0510 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0520
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0520
     * @tc.desc      Set heightAdaptivePolicy,maxFontSize,minFontSize，maxlines
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0520 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier052")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0520 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0530
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0530
     * @tc.desc      Set textShadow
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0530 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier053")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0530 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0540
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0540
     * @tc.desc      Set copyOption
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0540 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier054")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0540 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0550
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0550
     * @tc.desc      Set baselineOffset
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0550 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier055")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0550 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0560
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0560
     * @tc.desc      Set textCase
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0560 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier056")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0560 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0570
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0570
     * @tc.desc      Set letterSpacing
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0570 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier057")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0570 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0580
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0580
     * @tc.desc      Set decoration
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0580 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier058")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0580 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0590
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0590
     * @tc.desc      Set maxLines
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0590 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier059")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0590 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0600
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0600
     * @tc.desc      Set fontFamily
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0600 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0600 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0610
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0610
     * @tc.desc      Set fontWeight
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0610 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier061")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0610 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0620
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0620
     * @tc.desc      Set fontStyle
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0620 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier062")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0620 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0630
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0630
     * @tc.desc      Set fontSize
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0630 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier063")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0630 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0640
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0640
     * @tc.desc      Set fontColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0640 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier064")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0640 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0650
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0650
     * @tc.desc      Set textAlign
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0650 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier065")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0650 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0660
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0660
     * @tc.desc      Set lineHeight
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0660 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier066")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0660 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0670
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0670
     * @tc.desc      Set textOverflow
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0670 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier067")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0670 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0680
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0680
     * @tc.desc      Set font
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0680 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier068")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0680 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0690
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0690
     * @tc.desc      Set maxLines
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0690 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier069")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0690 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0700
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0700
     * @tc.desc      Set showUnderline
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0700 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier070")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0700 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0710
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0710
     * @tc.desc      Set showError
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0710 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier071")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0710 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0720
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0720
     * @tc.desc      Set passwordIcon
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0720 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier072")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0720 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0730
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0730
     * @tc.desc      Set style
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0730 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier073")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0730 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0740
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0740
     * @tc.desc      Set selectionMenuHidden
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0740 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier074")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0740 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0750
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0750
     * @tc.desc      Set barState
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0750 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier075")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0750 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0760
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0760
     * @tc.desc      Set enableKeyboardOnFocus
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0760 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier076")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0760 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0770
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0770
     * @tc.desc      Set caretStyle
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0770 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier077")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0770 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0780
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0780
     * @tc.desc      Set selectedBackgroundColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0780 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier078")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0780 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0790
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0790
     * @tc.desc      Set caretPosition
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0790 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier079")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0790 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0800
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0800
     * @tc.desc      Set caretColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0800 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier080")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0800 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0810
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0810
     * @tc.desc      Set placeholderFont
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0810 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier081")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0810 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0820
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0820
     * @tc.desc      Set placeholderColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0820 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier082")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0820 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0830
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0830
     * @tc.desc      Set type
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0830 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier083")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0830 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0840
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0840
     * @tc.desc      Set enterKeyType
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0840 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier084")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0840 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0850
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0850
     * @tc.desc      Set maxLength
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0850 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier085")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0850 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0860
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0860
     * @tc.desc      Set fontFamily
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0860 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier086")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0860 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0870
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0870
     * @tc.desc      Set fontWeight
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0870 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier087")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0870 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0880
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0880
     * @tc.desc      Set fontStyle
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0880 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier088")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0880 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0890
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0890
     * @tc.desc      Set fontSize
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0890 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier089")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0890 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0900
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0900
     * @tc.desc      Set fontColor
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0900 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0900 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0910
     * @tc.desc      Set textAlign
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0910 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier091")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0910 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0920
     * @tc.desc      Set copyOption
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0920 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier092")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0920 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0930
     * @tc.desc      Set showPasswordIcon
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0930 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier093")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0930 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0940
     * @tc.desc      Set showPasswordIcon to set multiple TextInput components
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0940 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier094")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0940 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0950
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0950
     * @tc.desc      Multiple TextInputModifiers, set showPasswordIcon and copyOption separately
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0950 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier095")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0950 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0960
     * @tc.name      SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_0960
     * @tc.desc      Set multiple TextInputModifiers, respectively setting showPasswordIcon and copyOption
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0960 start.`);
      Settings.createWindow("testability/pages/UiComponentTextModifier/UiComponentTextModifier096")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_MODIFIER_0960 finish.`);
      done()
    })
  })
}
