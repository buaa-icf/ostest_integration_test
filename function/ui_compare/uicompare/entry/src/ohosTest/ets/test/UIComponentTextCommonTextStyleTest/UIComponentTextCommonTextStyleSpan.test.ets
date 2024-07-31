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

export default function UIComponentTextCommonTextStyleSpan() {

  describe('UIComponentTextCommonTextStyleSpan', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1590
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1590
     * @tc.desc    set decoration of Span to Underline
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1590 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle159")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1590 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1600
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1600
     * @tc.desc    set decoration of Span to LineThrough
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1600 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle160")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1600 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1610
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1610
     * @tc.desc    set decoration of Span to OverLine
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1610 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle161")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1610 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1620
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1620
     * @tc.desc    set decoration of Span to None
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1620 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle162")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1620 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1630
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1630
     * @tc.desc    set font of Span to {size:20,weight:FontWeight.Bolder,family:'Arial, HarmonyOS Sans',style:FontStyle.Italic}
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1630 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle163")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1630 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1640
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1640
     * @tc.desc    set lineHeight of Span to 30
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1640 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle164")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1640 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1650
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1650
     * @tc.desc    set fontSize of Span to 20
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1650 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle165")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1650 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1660
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1660
     * @tc.desc    set fontSize of Span to '11px'
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1660 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle166")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1660 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1670
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1670
     * @tc.desc    set fontSize of Span to $r('app.string.size_30')
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1670 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle167")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1670 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1680
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1680
     * @tc.desc    set fontStyle of Span to normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1680 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle168")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1680 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1690
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1690
     * @tc.desc    set fontStyle of Span to Italic
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1690 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle169")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1690 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1700
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1700
     * @tc.desc    set fontWeight of Span to Normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1700 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle170")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1700 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1710
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1710
     * @tc.desc    set fontWeight of Span to Lighter
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1710 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle171")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1710 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1720
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1720
     * @tc.desc    set fontWeight of Span to Regular
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1720 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle172")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1720 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1730
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1730
     * @tc.desc    set fontWeight of Span to Medium
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1730 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle173")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1730 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1740
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1740
     * @tc.desc    set fontWeight of Span to Bold
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1740 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle174")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1740 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1750
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1750
     * @tc.desc    set fontWeight of Span to Bolder
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1750 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle175")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1750 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1760
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1760
     * @tc.desc    set fontFamily of Span to 'HarmonyOS-Sans'
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1760 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle176")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1760 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1770
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1770
     * @tc.desc    set fontColor of Span to Color.blue
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1770 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle177")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1770 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1780
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1780
     * @tc.desc    set fontColor of Span to 0xffffff
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1780 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle178")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1780 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1790
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1790
     * @tc.desc    set fontColor of Span to 'rgb(255,100,255)'
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1790 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle179")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1790 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1800
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1800
     * @tc.desc    set fontColor of Span to $r('app.string.color_yellow')
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1800 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle180")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1800 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1810
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1810
     * @tc.desc    set letterSpacing of Span to 5
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1810 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle181")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1810 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1820
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1820
     * @tc.desc    set textCase of Span to Normal
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1820 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle182")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1820 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1830
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1830
     * @tc.desc    set textCase of Span to LowerCase
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1830 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle183")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1830 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1840
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1840
     * @tc.desc    set textCase of Span to UpperCase
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1840 start.`);
      Settings.createWindow("testability/pages/UIComponentTextCommonTextStyle/UIComponentTextCommonTextStyle184")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(5000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_TEXTSTYLE_1840 finish.`);
      done()
    })

  })
}
