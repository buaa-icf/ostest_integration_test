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
import { IntentionCode } from '@ohos.multimodalInput.intentionCode'
import { KeyboardAvoidMode } from '@ohos.arkui.UIContext'

export default function UIComponentTextCommonTextStyleText() {

  describe('UIComponentTextCommonTextStyleText', () => {
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
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1210
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1210
    * @tc.desc    set decoration of Text to underline
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1210 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle121")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1210 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1220
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1220
    * @tc.desc    set decoration of Text to LineThrough
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1220 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle122")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1220 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1230
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1230
    * @tc.desc    set decoration of Text to OverLine
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1230 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle123")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1230 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1240
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1240
    * @tc.desc    set decoration of Text to None
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1240 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle124")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1240 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1250
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1250
     * @tc.desc    set fontSize of Text to 20
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1250 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle125")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1250 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1260
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1260
     * @tc.desc    set fontSize of Text to '11px'
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1260 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle126")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1260 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1270
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1270
     * @tc.desc    set fontSize of Text to $r('app.string.size_30')
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1270 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle127")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1270 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1280
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1280
     * @tc.desc    set fontStyle of Text to normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1280 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle128")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1280 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1290
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1290
     * @tc.desc    set fontStyle of Text to Italic
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1290 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle129")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1290 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1300
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1300
     * @tc.desc    set fontWeight of Text to Normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1300 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle130")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1300 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1310
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1310
     * @tc.desc    set fontWeight of Text to Lighter
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1310 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle131")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1310 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1320
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1320
     * @tc.desc    set fontWeight of Text to Regular
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1320 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle132")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1320 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1330
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1330
     * @tc.desc    set fontWeight of Text to Medium
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1330 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle133")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1330 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1340
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1340
     * @tc.desc    set fontWeight of Text to Bold
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1340 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle134")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1340 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1350
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1350
     * @tc.desc    set fontWeight of Text to Bolder
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1350 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle135")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1350 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1360
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1360
     * @tc.desc    set fontFamily of Text to HarmonyOS-Sans
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1360 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle136")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1360 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1370
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1370
     * @tc.desc    set textShadow of Text to {radius:10,color:Color.Black,offsetX:0,offsetY:0}
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1370 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle137")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1370 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1380
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1380
    * @tc.desc    set heightAdaptivePolicy of Text to MAX_LINES_FIRST
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1380 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle138")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1380 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1390
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1390
    * @tc.desc    set heightAdaptivePolicy of Text to MIN_FONT_SIZE_FIRST
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1390 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle139")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1390 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1400
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1400
     * @tc.desc    set heightAdaptivePolicy of Text to LAYOUT_CONSTRAINT_FIRST
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1400 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle140")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1400 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1410
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1410
    * @tc.desc    set textIndent of Text to 2
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1410 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle141")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1410 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1420
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1420
     * @tc.desc    set minFontSize of Text to 10
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1420 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle142")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1420 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1430
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1430
     * @tc.desc    set minFontSize of Text to 30
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1430 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle143")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1430 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1440
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1440
     * @tc.desc    set lineHeight of Text to 30
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1440 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle144")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1440 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1490
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1490
     * @tc.desc    set textOverflow of Text to None
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1490 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle149")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1490 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1500
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1500
     * @tc.desc    set textOverflow of Text to Clip
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1500 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle150")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1500 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1510
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1510
     * @tc.desc    set textOverflow of Text to Ellipsis
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1510 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle151")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1510 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1520
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1520
     * @tc.desc    set textOverflow of Text to MARQUEE
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1520 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle152")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1520 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1530
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1530
     * @tc.desc    set maxLines of Text to 4
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1530 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle153")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1530 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1540
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1540
    * @tc.desc    set letterSpacing of Text to 5
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1540 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle154")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1540 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1550
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1550
    * @tc.desc    set baselineOffset of Text to 10
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1550 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle155")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1550 finish.`);
      done()
    })

    /*
    * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1560
    * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1560
    * @tc.desc    set textCase of Text to Normal
    */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1560 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle156")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1560 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1570
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1570
     * @tc.desc    set textCase of Text to LowerCase
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1570 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle157")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1570 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1580
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1580
     * @tc.desc    set textCase of Text to UpperCase
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1580 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle158")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1580 finish.`);
      done()
    })

  })
}
