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

export default function UiTextBrightenTest001() {

  describe('UiTextBrightenTest001', () => {
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
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0010
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, set single-layer shadow
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0010 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten001")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0010 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0020
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, set multi-layer shadows
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0020 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten002")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0020 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0030
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, textShadow set null value
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0030 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten003")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0030 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0040
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, fontSize 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0040 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten004")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0040 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0050
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, fontSize of 30
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0050 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten005")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0050 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0060
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shading, dynamically set font size
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0060 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten006")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0060 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0070
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadows, fontWeight as Lighter
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0070 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten007")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0070 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0080
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadows, fontWeight set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0080 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten008")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0080 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0090
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, fontWeight as Bloder
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0090 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten009")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0090 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0100
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, dynamically set font thickness
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0100 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten010")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0100 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0110
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, fontStyle set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0110 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten021")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0110 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0120
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, fontStyle is Italic
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0120 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten011")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0120 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0130
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shading, dynamically changing font style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0130 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten012")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0130 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0140
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadows, dynamically changing text offset
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0140 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten013")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0140 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0150
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, set padding to 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0150 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten014")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0150 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0160
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, set padding to 20
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0160 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten015")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0160 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0170
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadows, single line text
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0170 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten016")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0170 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0180
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadows, multi line text
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0180 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten017")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0180 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0190
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadows, dynamically changing styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0190 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten018")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0190 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0200
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, dynamically changing shadow styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0200 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten019")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0200 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0210
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, dynamically changing component position offset
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0210 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten020")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0210 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0220
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, multi-layer shadow, component setting path animation motionPath
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0220 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten022")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0220 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0230
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, set text highlighting blendMode to Normal type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0230 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten023")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0230 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0240
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, set the text highlighting blendMode to SOURCE-IN type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0240 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten024")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0240 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0250
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      Text component, set the text highlighting blendMode to DESTINATION-IN type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0250 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten025")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0250 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0260
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set single-layer shadow
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0260 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten026")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0260 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0270
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multi-layer shadows
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0270 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten027")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0270 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0280
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, textShadow set null value
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0280 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten028")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0280 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0290
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, with a fontSize of 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0290 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten029")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0290 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0300
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, with a fontSize of 30
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0300 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten030")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0300 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0310
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, dynamically set font size
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0310 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten031")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0310 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0320
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, fontWeight for Lighter
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0320 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten032")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0320 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0330
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, fontWeight set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0330 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten033")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0330 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0340
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, fontWeight as Bloder
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0340 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten034")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0340 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0350
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, dynamically set font thickness
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0350 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten035")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0350 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0360
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, fontStyle set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0360 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten036")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0360 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0370
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadow, fontStyle is Italic
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0370 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten037")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0370 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0380
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shading, dynamically changing font style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0380 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten038")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0380 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0390
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multi-layer shadows, start text clock
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0390 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten039")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0390 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0400
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multi-layer shadows, stop text clock
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0400 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten040")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0400 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0410
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multiple layers of shadows, dynamically change shadow styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0410 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten041")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0410 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0420
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multiple layers of shadows, text input format: yyyy year M month d day EEEE
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0420 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten042")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0420 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0430
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multi-layer shadows, text input format: MM/dd/yyyy
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0430 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten043")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0430 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0440
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multi-layer shadows, text input format: yyyy-M-d
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0440 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten044")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0440 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0450
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multiple layers of shadows, text input format: yyyy M.d
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0450 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten045")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0450 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0460
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multi-layer shadows, text input format: HH: mm: ss
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0460 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten046")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0460 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0470
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set multi-layer shadows, text input format: aa hh: mm: ss
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0470 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten047")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0470 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0480
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadow, start text clock
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0480 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten048")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0480 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0490
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, set padding to 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0490 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten049")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0490 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0500
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, set padding to 20
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0500 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten050")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0500 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0510
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, dynamically changing component position offset
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0510 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten051")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0510 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0520
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, multi-layer shadows, component setting path animation motionPath
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0520 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten052")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0520 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0530
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set text highlighting blendMode to Normal type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0530 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten053")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0530 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0540
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set text highlighting blendMode to SOURCE-IN type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0540 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten054")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0540 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0550
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextClock component, set text highlighting blendMode to DESTINATION-IN type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0550 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten055")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0550 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0560
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, set single-layer shadow
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0560 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten056")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0560 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0570
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, set multi-layer shadows
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0570 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten057")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0570 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0580
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, textShadow set null value
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0580 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten058")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0580 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0590
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, super multi-layer shadow: 50 layers, start timing
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0590 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten059")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0590 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0600
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, with a fontSize of 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0600 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten060")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0600 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0610
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, with a fontSize of 30
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0610 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten061")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0610 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0620
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, dynamically set font size
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0620 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten062")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0620 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0630
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, fontWeight as Lighter
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0630 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten063")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0630 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0640
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, fontWeight set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0640 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten064")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0640 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0650
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, fontWeight as Bloder
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0650 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten065")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0650 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0660
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, dynamically set font thickness
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0660 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten066")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0660 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0670
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, fontStyle set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0670 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten067")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0670 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0680
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadow, fontStyle is Italic
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0680 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten068")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0680 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0690
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, dynamically changing font style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0690 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten069")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0690 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0700
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, start timing
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0700 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten070")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0700 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0710
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, stop timing
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0710 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten071")
      await Utils.sleep(6000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0710 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0720
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, reset timer
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0720 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten072")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0720 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0730
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, dynamically changing shadow styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0730 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten073")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0730 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0740
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, input format HH: mm: ss SS
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0740 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten074")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0740 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0750
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, set padding to 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0750 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten075")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0750 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0760
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, set padding to 20
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0760 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten076")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0760 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0770
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, dynamically changing component position offset
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0770 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten077")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0770 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0780
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, multi-layer shadows, component setting path animation motionPath
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0780 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten078")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0780 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0790
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, set text highlighting blendMode to Normal type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0790 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten079")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0790 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0800
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, set text highlighting blendMode to SOURCE-IN type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0800 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten080")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0800 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0810
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      TextTimer component, set the text highlighting blendMode to DESTINATION-IN type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0810 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten081")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0810 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0820
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, set single-layer shadows
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0820 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten082")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0820 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0830
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, set multi-layer shadows
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0830 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten083")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0830 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0840
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, textShadow set null value
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0840 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten084")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0840 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0850
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, super multi-layer shadows: 50 layers, dynamically changing styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0850 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten085")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0850 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0860
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, with a fontSize of 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0860 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten086")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0860 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0870
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, fontSize of 30
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0870 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten087")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0870 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0880
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, dynamically set font size
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0880 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten088")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0880 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0890
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, fontWeight for Lighter
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0890 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten089")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0890 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0900
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, fontWeight set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0900 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten090")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0900 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0910
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, fontWeight as Bloder
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0910 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten091")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0910 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0920
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, dynamically set font thickness
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0920 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten092")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0920 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0930
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, fontStyle set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_093', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0930 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten093")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0930 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0940
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, fontStyle is Italic
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0940 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten094")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0940 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0950
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shading, dynamically changing font style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0950 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten095")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0950 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0960
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, referencing custom fonts
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0960 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten096")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0960 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0970
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, dynamic language switching
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0970 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten097")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0970 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0980
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, adding spans
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0980 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten098")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0980 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_0990
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, left aligned text
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0990 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten099")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_0990 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1000
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, text centered alignment
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1000 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten100")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1000 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1010
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, right aligned text
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1010 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten101")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1010 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1020
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, dynamically changing alignment method
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1020 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten102")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1020 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1030
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, text wrapping
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1030 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten103")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1030 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1040
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, dynamically changing shadow styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1040 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten104")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1040 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1050
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, scrolling text
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1050 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten105")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1050 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1060
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, set padding to 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1060 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten106")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1060 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1070
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, set padding to 20
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1070 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten107")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1070 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1080
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, dynamically changing component position offset
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1080 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten108")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1080 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1090
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, multi-layer shadows, component setting path animation motionPath
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1090 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten109")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1090 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1100
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, set text highlighting blendMode to Normal type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1100 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten110")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1100 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1110
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, set text highlighting blendMode to SOURCE-IN type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1110 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten111")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1110 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTBRIGHTEN_1120
     * @tc.name      TEXT-BRIGHTEN
     * @tc.desc      RichEditor component, set text highlighting blendMode to DESTINATION-IN type
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTBRIGHTEN_1120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1120 start.`);
      Settings.createWindow("testability/pages/UiTextBrighten/UiTextBrighten112")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTBRIGHTEN_1120 finish.`);
      done()
    })
  })
}
