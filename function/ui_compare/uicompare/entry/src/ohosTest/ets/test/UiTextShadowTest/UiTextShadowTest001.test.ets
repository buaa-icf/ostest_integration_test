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

export default function UiTextShadowTest001() {

  describe('UiTextShadowTest001', () => {
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
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0010
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, set single-layer shadow
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0010 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow001")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0010 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0020
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, set multi-layer shadows
     * @tc.level     Level 3
     * @tc.type
     * @tc.size
     */
    it('SUB_ACE_UI_TEXTSHADOW_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0020 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow002")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0020 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0030
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, textShadow set null value
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0030 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow003")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0030 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0040
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, fontSize 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0040 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow004")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0040 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0050
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, fontSize of 30
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0050 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow005")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0050 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0060
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shading, dynamically set font size
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0060 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow006")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0060 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0070
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadows, fontWeight as Lighter
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0070 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow007")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0070 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0080
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadows, fontWeight set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0080 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow008")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0080 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0090
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, fontWeight as Bloder
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0090 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow009")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0090 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0100
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, dynamically set font thickness
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0100 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow010")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0100 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0110
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, fontStyle set to Normal
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0110 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow011")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0110 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0120
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, fontStyle is Italic
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0120 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow012")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0120 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0130
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shading, dynamically changing font style
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0130 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow013")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0130 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0140
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadows, dynamically changing text offset
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0140 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow014")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0140 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0150
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, set padding to 10
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0150 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow015")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0150 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0160
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, set padding to 20
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0160 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow016")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0160 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0170
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadows, single line text
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0170 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow017")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0170 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0180
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadows, multi line text
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0180 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow018")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0180 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0190
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadows, dynamically changing styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0190 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow019")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0190 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0200
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, dynamically changing shadow styles
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0200 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow020")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0200 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0210
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, dynamically changing component position offset
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0210 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow021")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0210 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_TEXTSHADOW_0220
     * @tc.name      TEXT-SHADOW
     * @tc.desc      Text component, multi-layer shadow, component setting path animation motionPath
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_TEXTSHADOW_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0220 start.`);
      Settings.createWindow("testability/pages/UiTextShadow/UiTextShadow022")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_TEXTSHADOW_0220 finish.`);
      done()
    })
  })
}
