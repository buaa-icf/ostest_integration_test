/**
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
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
import {UiComponent, UiDriver, Component, Driver, UiWindow, ON, BY, MatchPattern, DisplayRotation,
  ResizeDirection, WindowMode, PointerMatrix} from '@ohos.UiTest';

/*
 * SUB_ACE_UI_ATTRIBUTES_FONT_INTERFACE_0010:设置文本颜色
 *
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function UIAttributeFontInterface002() {

  describe('UIAttributeFontInterface002', () => {
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
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0210
     * @tc.desc   : citation PixelMap
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0210 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage01")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0270
     * @tc.desc   : Add the Search component and reference a large-sized image.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0270 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage03")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_INTERFACE_0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0010
     * @tc.desc   : Add the Search component without setting the size.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0010 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage04")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0020
     * @tc.desc   : Add the Search component and implement line wrapping.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0020 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage05")
      await Utils.sleep(1000)
      let driver = Driver.create();
      await Utils.sleep(1000)
      await driver.triggerKey(2049);
      await Utils.sleep(1000)
      await driver.triggerKey(2054);
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SEARCH_LAYOUT_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010
     * @tc.desc   : Create a text component in the placeholder XComponent that contains a Span and set it
     * to an empty text.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage06")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0020
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and set it to the
     * content of the resource file.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0020 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage07")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and set the content
     * to "HelloWorld".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage08")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and supplement
     * the attribute settings to set the text decoration line to None.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage09")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and supplement
     * the attribute settings to set the text decoration line to UnderLine.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage10")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and supplement
     * the attribute settings to set the text decoration line to LineThrough.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage11")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and supplement
     * the attribute settings to set the text decoration line to OverLine.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage12")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the font color to red.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage13")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0090
     * @tc.desc   : citation PixelMap
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0090 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage14")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0100
     * @tc.desc   : citation PixelMap
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0100 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage15")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0110
     * @tc.desc   : citation PixelMap
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0110 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage16")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and supplement
     * the attribute settings to set the font style to italic.

     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage17")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the font weight to "Lighter".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage18")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the font weight to "Normal".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage19")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the font weight to "Regular".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage20")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the font weight to "Medium".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage21")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the font weight to "Bold".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage22")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the font weight to "Bolder".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage23")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and supplement the
     * attribute settings to set the text line height to 30.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage24")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0200
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and supplement the
     * attribute settings to set the text line height to -10.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0200 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage25")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the text case to "LowerCase".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage26")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the text case to "UpperCase".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage27")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the text case to "Normal".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage28")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the character spacing value to 10.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage29")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250
     * @tc.desc   : Create a text component within the placeholder XComponent that includes a Span, and add attribute
     * settings to set the character spacing value to -5.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage30")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_CAPI_0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0014
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0014
     * @tc.desc   : Add a Span component, set the parameters of the Span: set the parameter to "This is the Span
     * component".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0014 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage33")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0014 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0067
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0067
     * @tc.desc   : Add a Span component, set the attributes of the Span: apply the letterSpacing('180%') style
     * attribute.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0067', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0067 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage34")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0067 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0081
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0081
     * @tc.desc   : Add a Span component, set the parameters of the Span: set the Span's property with the lineHeight
     * attribute using a raw file reference, such as lineHeight('60fp').
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0081', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0081 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage35")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SPAN_INTERFACE_0081 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0350
     * @tc.desc   : Add a `SymbolSpan` subcomponent.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0350 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage36")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0420
     * @tc.desc   : Add multiple SymbolSpan child components, setting the initial selection value to (-1, -1), and
     * dynamically changing the selection
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0420 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage183")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributePage183_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributePage183_02'));
      await button1.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button2.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0420 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0430
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0430
     * @tc.desc   : Adding multiple SymbolSpan child components and dynamically modifying the letterSpacing parameter.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0430 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage184")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributePage184_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributePage184_02'));
      await button1.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button2.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0430 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0690
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0690
     * @tc.desc   : Adding multiple SymbolSpan child components and dynamically modifying the letterSpacing parameter.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0690 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage185")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributePage185_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributePage185_02'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributePage185_03'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributePage185_04'));
      await button1.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button3.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      for(let i_01 = 0; i_01 < 5; i_01++){
        await button2.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
      }
      for(let i_02 = 0; i_02 < 5; i_02++){
        await button4.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
      }
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0690 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0700
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0700
     * @tc.desc   : Dynamically changing SymbolSpan styles: fontsize, fontcolor, fontweight, effectStrategy,
     * renderingStrategy
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0700 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage186")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributePage186_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributePage186_02'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributePage186_03'));
      let button4: Component = await driver.findComponent(ON.id('fontAttributePage186_04'));
      await button1.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      for(let i_01 = 0; i_01 < 5; i_01++){
        await button2.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
      }
      for(let i_02 = 0; i_02 < 2; i_02++){
        await button3.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
      }
      for(let i_03 = 0; i_03 < 2; i_03++){
        await button4.click()
        await Utils.sleep(1000)
        windowSnap.snapShot()
        await Utils.sleep(1000)
      }
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_SYMBOL_MIXEDDISPLAY_0700 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0010
     * @tc.desc   : Add a `Text` component, set the `wordBreak` to NORMAL, and configure it to support Chinese,
     * Japanese, Korean, and English languages.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0010 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage41")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0020
     * @tc.desc   :Add a `Text` component, set the `wordBreak` to BREAK_ALL, and configure it to support Chinese,
     * Japanese, Korean, and English languages.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0020 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage42")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0030
     * @tc.desc   : Add a `Text` component, set the `wordBreak` to BREAK_WORD, and configure it to support Chinese,
     * Japanese, Korean, and English languages.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0030 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage43")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0030 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0040
     * @tc.desc   : Add a Text component without setting the wordBreak.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0040 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage44")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0050
     * @tc.desc   : Add a Text component and set the `oncopy` event handler.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0050 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage45")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let copy: Component = await driver.findComponent(ON.text('复制'));
      await copy.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0060
     * @tc.desc   : Add a Text component and set the selection with selectionStart at 5 and selectionEnd at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0060 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage46")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0070
     * @tc.desc   : Add a Text component and set the selection with selectionStart at 20 and selectionEnd at 5.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0070 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage47")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0080
     * @tc.desc   : Add a Text component and set the selection with selectionStart and selectionEnd both at 5.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0080 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage48")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0090
     * @tc.desc   : Add a Text component and set the `selection` with `selectionStart` at -5 and `selectionEnd` at 5.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0090 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage49")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0100
     * @tc.desc   : Add a Text component and set the `selection` with `selectionStart` at 5 and `selectionEnd` at 1000.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0100 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage50")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0110
     * @tc.desc   : Add a Text component and set multiple selections with `selectionStart` at 5 and `selectionEnd` at
     * 20 for each.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0110 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage51")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0120
     * @tc.desc   : Add a Text component, set the `selection` with `selectionStart` at 5 and `selectionEnd` at 20,
     * and handle clicking outside the component area.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0120 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage52")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      await driver.click(100,200)
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0140
     * @tc.desc   : Add a Text component, set the `selection` with `selectionStart` at 5 and `selectionEnd` at 20,
     * and implement a menu button for selecting all text.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0140 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage53")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let selectAll: Component = await driver.findComponent(ON.text('全选'));
      await selectAll.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0170
     * @tc.desc   : Add a Text component, set multilingual text, and set `WordBreak` to `NORMAL`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0170 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage54")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0180
     * @tc.desc   : Add a Text component, set multilingual text, and set `WordBreak` to `BREAK_ALL`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0180 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage55")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0190
     * @tc.desc   : Add a Text component, set multilingual text, and set `WordBreak` to `BREAK_WORD`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0190 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage56")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0200
     * @tc.desc   : Add a Text component, set it to display pure English text, and set `WordBreak` to `NORMAL`. Also,
     * set the `clip` property to `true`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0200 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage57")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0210
     * @tc.desc   : Add a Text component, set it to display pure English text, and set `WordBreak` to `NORMAL`. Also,
     * set the `clip` property to `false`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0210 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage58")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0220
     * @tc.desc   : Add a Text component, set it to display pure English text, and set `WordBreak` to `BREAK_ALL`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0220 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage59")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0230
     * @tc.desc   : Add a Text component, set it to display pure English text, and set `WordBreak` to `BREAK_WORD`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0230 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage60")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0240
     * @tc.desc   : Add a Text component, set `CopyOptions` to `NONE`, and set the `selection` with `selectionStart`
     * at 5 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0240 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage61")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0250
     * @tc.desc   : Add a Text component, initially set the `selection` with `selectionStart` at 5 and `selectionEnd`
     * at 20, and then dynamically change the `selection` to have `selectionStart` at 10 and `selectionEnd` at 15.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0250 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage62")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let changeSelect: Component = await driver.findComponent(ON.id('changeSelection63'));
      await changeSelect.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0260
     * @tc.desc   : Add a Text component, set `TextOverflow` to `None`, input pure English text, set `maxLines` to 5,
     * and set `wordBreak` to `WordBreak.NORMAL`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0260 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage63")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0270
     * @tc.desc   : Add a Text component, set TextOverflow to None, set maxLines to 1, and set wordBreak to
     * WordBreak.NORMAL.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0270 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage64")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0280
     * @tc.desc   : Add a Text component, set `TextOverflow` to `None`, and set the `selection` with `selectionStart`
     * at 10 and `selectionEnd` at 1000.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0280 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage65")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0290
     * @tc.desc   : Add a Text component, set `TextOverflow` to `None`, and set the `selection` with `selectionStart`
     * at 10 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0290 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage66")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0300
     * @tc.desc   : Add a Text component, set `TextOverflow` to `None`, and set the `selection` with `selectionStart`
     * at 1000 and `selectionEnd` at 1001.

     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0300 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage67")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0310
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Clip`, set pure English text, set `maxLines` to 5,
     * and set `wordBreak` to `WordBreak.NORMAL`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0310 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage68")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0320
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Clip`, set pure English text, set `maxLines` to 1,
     * and set `wordBreak` to `WordBreak.NORMAL`.

     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0320 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage69")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0330
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Clip`, and set the `selection` with `selectionStart`
     * at 10 and `selectionEnd` at 1000.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0330 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage70")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let copy: Component = await driver.findComponent(ON.text('复制'));
      await copy.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0340
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0340
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Clip`, and set the `selection` with `selectionStart`
     * at 10 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0340 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage71")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0350
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Clip`, and set the `selection` with `selectionStart`
     * at 1000 and `selectionEnd` at 1001.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0350 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage72")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0360
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Ellipsis`, input pure English text, set `maxLines`
     * to 5, and set `wordBreak` to `WordBreak.NORMAL`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0360 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage73")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0360 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0370
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Ellipsis`, input pure English text, set `maxLines`
     * to 1, and set `wordBreak` to `WordBreak.NORMAL`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0370 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage74")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0380
     * @tc.desc   : Add a Text component, set Chinese text, set `TextOverflow` to `Ellipsis`, set `maxLines` to 1,
     * and set the `selection` with `selectionStart` at 20 and `selectionEnd` at 1000.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0380 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage75")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let copy: Component = await driver.findComponent(ON.text('复制'));
      await copy.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0380 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0390
     * @tc.desc   : Add a Text component, set Chinese text, set `TextOverflow` to `Ellipsis`, set `maxLines` to 1,
     * and set the `selection` with `selectionStart` at 21 and `selectionEnd` at 40.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0390 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage76")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let copy: Component = await driver.findComponent(ON.text('复制'));
      await copy.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0390 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0400
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0400
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Ellipsis`, set `maxLines` to 2, and set the
     * `selection` with `selectionStart` at 10 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0400 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage77")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let copy: Component = await driver.findComponent(ON.text('复制'));
      await copy.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0410
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0410
     * @tc.desc   : Add a Text component, set `TextOverflow` to `Marquee`, and set the `selection` with
     * `selectionStart` at 10 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0410 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage78")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0410 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0420
     * @tc.desc   : Add a Text component, set pure English text, and dynamically switch between Chinese, Japanese,
     * and Korean text.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0420 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage79")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let copy1: Component = await driver.findComponent(ON.id('changeText79_1'));
      await copy1.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let copy2: Component = await driver.findComponent(ON.id('changeText79_2'));
      await copy2.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let copy3: Component = await driver.findComponent(ON.id('changeText79_3'));
      await copy3.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0420 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0430
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0430
     * @tc.desc   : Add a Text component, set the `fontSize` to 16, and dynamically change the `fontSize` to 30.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0430 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage80")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let changeFontSize: Component = await driver.findComponent(ON.id('changeText80'));
      await changeFontSize.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0430 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0440
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0440
     * @tc.desc   : Add a Text component, set the text in four languages: Chinese, English, Korean, and Japanese.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0440 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage81")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0440 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0450
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0450
     * @tc.desc   : Add a Text component with a child `Span` component, set the initial `selection` with
     * `selectionStart` at 5 and `selectionEnd` at 20, and then dynamically change the `selection` by setting
     * `selectionStart` and `selectionEnd` to variable numbers.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0450 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage82")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('changeSelection82'));
      await select.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0450 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0460
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0460
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the initial `selection`
     * with `selectionStart` at 5 and `selectionEnd` at 20. Then, dynamically change the `selection` by setting
     * `selectionStart` and `selectionEnd` to different numeric values.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0460 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage83")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let select: Component = await driver.findComponent(ON.id('changeSelection83'));
      await select.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0470
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0470
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `verticalAlign` to `top`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0470 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage84")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0470 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0480
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0480
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `verticalAlign` to `center`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0480 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage85")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0480 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0490
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0490
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `verticalAlign` to `bottom`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0490 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage86")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0490 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0500
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0500
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `verticalAlign` to
     * `baseline`,and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0500 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage87")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0500 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0510
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0510
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `objectFit` to `Contain`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0510 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage88")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0510 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0520
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0520
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `objectFit` to `Cover`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0520 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage89")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0520 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0530
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0530
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `objectFit` to `Auto`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0530 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage90")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0530 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0540
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0540
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `objectFit` to `Fill`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0540 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage91")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0540 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0550
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0550
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `objectFit` to `ScallDown`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0550 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage92")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0550 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0560
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0560
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `objectFit` to `None`,
     * and set the `selection` with `selectionStart` at 0 and `selectionEnd` at 20.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0560 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage93")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0560 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0590
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0590
     * @tc.desc   : Add a `Text` component and implement long press gesture recognition to select text.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0590 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage94")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage94'));
      await button.longClick();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0590 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0600
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0600
     * @tc.desc   : Add a `Text` component, set the `selection` from index 5 to 10, set `clip` to true, and dynamically
     * change the container's width and height to 0.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0600 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage95")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('changeHeight95'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0600 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0610
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0610
     * @tc.desc   : Add a Text component, set `clip` to false, and set `WordBreak` to `NORMAL`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0610 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage96")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0610 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0630
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0630
     * @tc.desc   : Add a Text component with its child components Set the selection parameters with start = end
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0610 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage179")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0630 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0640
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0640
     * @tc.desc   : Add a Text component with its child components, Dynamically modify wordBreak.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0640 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage180")
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributePage180_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributePage180_02'));
      await button1.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button2.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0640 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0650
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0650
     * @tc.desc   : Add a Text component with its child components, Dynamically modify selection.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0650 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage181")
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributePage181_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributePage181_02'));
      await button1.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button2.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0650 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0660
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0660
     * @tc.desc   : To set selectionStart to 5, selectionEnd to 30, and dynamically change the text size, number of
     * visible lines, and container size
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0660 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage182")
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button1: Component = await driver.findComponent(ON.id('fontAttributePage182_01'));
      let button2: Component = await driver.findComponent(ON.id('fontAttributePage182_02'));
      let button3: Component = await driver.findComponent(ON.id('fontAttributePage182_03'));
      await button1.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button2.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      await button3.click();
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_ABILITY_0660 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0040
     * @tc.desc   : Add a ContainerSpan component, without adding any content inside the component.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0040 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage97")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0050
     * @tc.desc   : Add a ContainerSpan component, and within the `ContainerSpan` component, set the content with
     * `Span` and `ImageSpan`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0050 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage98")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0060
     * @tc.desc   : Add a Text component, and as a child, add a `Span` component with a single line of content.
     * Set the attribute `textBackgroundStyle` with the properties: `{color: Color.Green, radius: 5}`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0060 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage99")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0070
     * @tc.desc   : Add a Text component and include a child `ImageSpan` component. Set the `textBackgroundStyle`
     * attribute with the properties: `{color: Color.Green, radius: 5}`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0070 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage100")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0080
     * @tc.desc   : Add a Text component, with a child `Span` component containing a single line of text. Set the
     * `textBackgroundStyle` attribute with the properties: `{color: 0xff0000, radius: 5}`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0080 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage101")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0090
     * @tc.desc   : Add a child Span component with a single line of content, and set the `textBackgroundStyle`
     * attribute with the properties: `{color: Color.Green, radius: 0}`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0090 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage102")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0100
     * @tc.desc   : Add a Text component, with a child Span component containing a single line of text, and set the
     * textBackgroundStyle attribute with the properties: {color: Color.Green, radius: -5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0100 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage103")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0110
     * @tc.desc   : Add a Text component, with a child `Span` component containing a single line of text, and set
     * the `textBackgroundStyle` attribute with the properties: `{color: '#ffc0cb', radius: 5}`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0110 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage104")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0120
     * @tc.desc   : Add a Text component, set the color using a resource reference, and include a child Span component
     * with a single line of content. Set the textBackgroundStyle attribute with the properties:
     * {color: $r('color_Yellow'), radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0120 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage105")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0130
     * @tc.desc   : Add a Text component, and within it, add a child Span component containing a single line of text.
     * Set the textBackgroundStyle attribute with the properties: {color: Color.Green, radius: '10%'}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0130 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage106")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0140
     * @tc.desc   : Add a Text component, and include a child Span component with a single line of content. Set the
     * textBackgroundStyle attribute with the properties: {color: Color.Green, radius: '10vp'}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0140 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage107")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0150
     * @tc.desc   : Add a Text component, and include a child Span component with a single line of content. Set the
     * textBackgroundStyle attribute with the properties: {color: Color.Green, radius: {topLeft: 10}}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0150 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage108")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0160
     * @tc.desc   : Add a Text component, and include a child Span component with a single line of content. Set the
     * textBackgroundStyle attribute with the properties: {color: Color.Green, radius: {topRight: 10}}
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0160 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage109")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0170
     * @tc.desc   : Add a Text component, and include a child Span component with a single line of content. Set the
     * textBackgroundStyle attribute with the properties: {color: Color.Green, radius: {bottomLeft: 10}}
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0170 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage110")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0180
     * @tc.desc   : Add a Text component, and include a child Span component with a single line of content. Set the
     * textBackgroundStyle attribute with the properties: {color: Color.Green, radius: {bottomRight: 10}}
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0180 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage111")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0190
     * @tc.desc   : Add a Text component, and include a child Span component with a single line of content. Set the
     * textBackgroundStyle attribute with the properties: {color: Color.Green, radius: {topLeft: 10, topRight: 20,
     * bottomLeft: 40, bottomRight: 80}}
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0190 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage112")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0200
     * @tc.desc   : Add a Text component, and include a child Span component with a single line of content. Upon
     * clicking the button labeled "Background Color: Red," set the textBackgroundStyle attribute with the
     * properties: {color: this.color, radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0200 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage113")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage113'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0210
     * @tc.desc   : Add a Text component, and include a child `Span` component with a single line of content.
     * Upon clicking the button labeled "Corner Radius: 10," set the `textBackgroundStyle` attribute with the
     * properties: `{color: Color.Green, radius: this.number}` where `this.number` is dynamically set to a value
     * (10, 20, or 30) based on the button click.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0210 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage114")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button_20: Component = await driver.findComponent(ON.id('fontAttributePage114_20'));
      await button_20.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button_30: Component = await driver.findComponent(ON.id('fontAttributePage114_30'));
      await button_30.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0220
     * @tc.desc   : Add a Text component, and include a child `Span` component with a single line of content.
     * Set the `textBackgroundStyle` attribute with a radius of 5.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0220 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage115")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0230
     * @tc.desc   : Add a Text component, and include a child `Span` component with a single line of content.
     * Set the `textBackgroundStyle` attribute with the color property to `Color.Green`
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0230 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage116")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0240
     * @tc.desc   : Add a Text component, and within it, add a `ContainerSpan`. Inside the `ContainerSpan`,
     * include both a `Span` and an `ImageSpan` to be displayed in a single line. Set the `textBackgroundStyle`
     * property of the `ContainerSpan` with the style: `{color: Color.Green, radius: 5}`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0240 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage117")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0250
     * @tc.desc   : Add a Text component, and within it, add a `ContainerSpan`. Inside the `ContainerSpan`,
     * set both a `Span` and an `ImageSpan` to display in a single line. Ensure the dimensions of the `ImageSpan` are
     * larger than those of the `Span`. Set the `textBackgroundStyle` property of the `ContainerSpan` with the style:
     * `{color: Color.Green, radius: 5}`.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0250 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage118")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0260
     * @tc.desc   : Add Text Component Add ContainerSpan, configure Span and ImageSpan within the component to display
     * in a single line Set textBackgroundStyle({color: Color.Green, radius: 5}) on ContainerSpan to dynamically change
     * font size and image size
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0260 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage119")
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let fontSize: Component = await driver.findComponent(ON.id('fontAttributePage119_01'));
      let imageSize: Component = await driver.findComponent(ON.id('fontAttributePage119_02'));
      await fontSize.click()
      await imageSize.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0270
     * @tc.desc   : Add a Text component, and within it, add a ContainerSpan. Inside the ContainerSpan, set both a Span
     * and an ImageSpan to be displayed in a single line. For the ImageSpan within the ContainerSpan, set the
     * textBackgroundStyle to {color: Color.Red, radius: 5}. For the Span within the ContainerSpan, set the
     * textBackgroundStyle to {color: Color.Blue, radius: 5}. Additionally, set the textBackgroundStyle for the
     * ContainerSpan itself to {color: Color.Green, radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0270 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage120")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0280
     * @tc.desc   : Add a Text component, and within it, add a ContainerSpan. Inside the ContainerSpan, include both a
     * Span and an ImageSpan to be displayed in a single line. For the Span within the ContainerSpan, set the
     * textBackgroundStyle to {color: Color.Blue, radius: 5}. For the ContainerSpan itself, set the textBackgroundStyle
     * to {color: Color.Green, radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0280 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage121")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0290
     * @tc.desc   : Add a Text component with a blue background color by setting backgroundColor to Blue. Within the
     * Text component, add a ContainerSpan. Inside the ContainerSpan, include both a Span and an ImageSpan to be
     * displayed in a single line. Set the textBackgroundStyle for the ContainerSpan to {color: Color.Red, radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0290 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage122")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0300
     * @tc.desc   : Add a Text component with rounded corners for the border by setting borderRadius to 10. Within the
     * Text component, add a ContainerSpan. Inside the ContainerSpan, include both a Span and an ImageSpan to be
     * displayed in a single line. Set the textBackgroundStyle for the ContainerSpan to {color: Color.Red, radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0300 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage123")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0310
     * @tc.desc   : Add a Text component and within it, add a ContainerSpan. Inside the ContainerSpan, include multiple
     * Span and ImageSpan components to be displayed in a single line. Set the textBackgroundStyle for the
     * ContainerSpan with the properties: {color: Color.Red, radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0310 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage124")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0320
     * @tc.desc   : Add a Text component and within it, add a ContainerSpan. Inside the ContainerSpan, include multiple
     * Span and ImageSpan components, with content that exceeds three lines. Set the textBackgroundStyle for the
     * ContainerSpan with the properties: {color: Color.Red, radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0320 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage125")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0330
     * @tc.desc   : Add a Text component and within it, add a ContainerSpan. Inside the ContainerSpan, include multiple
     * Span and ImageSpan components, with content that exceeds three lines. Set the textBackgroundStyle for the
     * ContainerSpan with the properties: {color: Color.Red, radius: 5}.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0330 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage126")
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let widthDec: Component = await driver.findComponent(ON.id('fontAttributePage126_01'));
      let widthInc: Component = await driver.findComponent(ON.id('fontAttributePage126_02'));
      await widthDec.click()
      await widthInc.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_CONTAINERSPAN_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0010
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0010
     * @tc.desc   : Add a Text component with the following settings: .maxLines(2), .width('220vp')
     * (without setting the height), .minFontSize(14), .maxFontSize(24). Call the measureTextSize method twice to
     * compare the text height when the Text component's maxLines is set versus when it's set to maxLines + 1.
     * Add a TextInput component and assign the input content to the Text component.
     * Set the textIndent property to 10, and input the text "文本截断是按字截断".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0010 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage127")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage127'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0010 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0020
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0020
     * @tc.desc   : Set the textIndent property to 10, and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i ams".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0020 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage128")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage128'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0030
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0030
     * @tc.desc   : Set the textIndent property to 0, and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0020 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage129")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage129'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0020 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0040
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0040
     * @tc.desc   : Set the textIndent property to 0, and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am asdf".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0040 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage130")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage130'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0040 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0050
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0050
     * @tc.desc   : Set the textIndent property to -10, and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0050 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage131")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage131'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0050 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0060
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0060
     * @tc.desc   : Set the textIndent property to -10, and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am asdf".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0060 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage132")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage132'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0060 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0070
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0070
     * @tc.desc   : Set the textIndent property to '0', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0070 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage133")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage133'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0070 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0080
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0080
     * @tc.desc   : Set the textIndent property to '0', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am asdf".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0080 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage134")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage134'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0080 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0090
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0090
     * @tc.desc   : Set the textIndent property to '30px', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0090 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage135")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage135'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0090 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0100
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0100
     * @tc.desc   : Set the textIndent property to '30px', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i ams".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0100 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage136")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage136'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0100 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0110
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0110
     * @tc.desc   : Set the textIndent property to '-10px', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0110 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage137")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage137'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0110 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0120
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0120
     * @tc.desc   : Set the textIndent property to '-10px', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am asdf".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0120 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage138")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage138'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0120 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0130
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0130
     * @tc.desc   : Set the textIndent property to '10%', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0130 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage139")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage139'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0130 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0140
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0140
     * @tc.desc   : Set the textIndent property to '10%', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0140 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage140")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage140'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0140 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0150
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0150
     * @tc.desc   : Set the textIndent property to 'abc', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0150 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage141")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage141'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0150 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0160
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0160
     * @tc.desc   : Set the textIndent property to 'abc', and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am asdf".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0160 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage142")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage142'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0160 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0170
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0170
     * @tc.desc   : Do not set the textIndent property and input the text "本截断是按字截断文本截断是按字截断文本截断是按字截
     * 断文本i am".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0170 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage143")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage143'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0170 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0180
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0180
     * @tc.desc   : Do not set the textIndent property and input the text "本截断是按字截断文本截断是按字截断文本截断是按字
     * 截断文本i am asdf".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0180 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage144")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage144'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0180 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0190
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0190
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text "文本截断是按字截断".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0190 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage145")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage145'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0190 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0200
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0200
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "本截断是按字截断文本截断是按字截断文本截断是按字截断文本是按字".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0200 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage146")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage146'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0200 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0210
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0210
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "てられますテキスト切り捨ては単語によって切り捨て".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0210 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage147")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage147'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0210 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0220
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0220
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "この切り捨ては単語によって切り捨てられますテキスト切り捨ては単語によって切り捨てられますテキスト切り捨ては単語によって切り捨て
     * られますテキストは単語によって切り".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0220 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage148")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage148'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0220 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0230
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0230
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "이 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0230 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage149")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage149'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0230 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0240
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0240
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "이 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다.
     * 텍스트 잘림은 단어로 자릅니다".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0240 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage150")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage150'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0240 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0250
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0250
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "This truncation is truncated text by".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0250 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage151")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage151'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0250 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0260
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0260
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "This truncation is truncating text by word Truncating text by word Truncating text by word Truncating
     * text by word Truncating text by word Yes".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0260 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage152")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage152'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0260 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0270
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0270
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "按字截断によって切이 잘림This truncation is".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0270 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage153")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage153'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0270 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0280
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0280
     * @tc.desc   : Set the wordBreak property to NORMAL, and input the text
     * "按字截断によって切이 잘림This truncation is按字截断によって切이 잘림This truncation is按字截断によって切이 잘림This
     * truncation is按字截断によって切이 잘림This truncation is".
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0280 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage154")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage154'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0280 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0290
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0290
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "文本截断是按字截断"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0290 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage155")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage155'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0290 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0300
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0300
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "本截断是按字截断文本截断是按字截断文本截断是按字截断文本是按字"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0300 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage156")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage156'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0300 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0310
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0310
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "てられますテキスト切り捨ては単語によって切り捨て"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0310 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage157")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage157'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0310 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0320
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0320
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "この切り捨ては単語によって切り捨てられますテキスト切り捨ては単語によって切り捨てられますテキスト切り捨ては単語によって切り捨てられ
     * ますテキストは単語によって切り"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0320 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage158")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage158'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0320 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0330
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0330
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "이 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0330 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage159")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage159'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0330 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0340
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0340
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "이 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다.
     * 텍스트 잘림은 단어로 자릅니다"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0340 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage160")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage160'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0340 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0350
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0350
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "This truncation is truncated text by"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0350 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage161")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage161'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0350 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0360
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0360
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "This truncation is truncating text by word Truncating text by word Truncating text by word Truncating text
     * by word Truncating text by word Yes by word Truncating text by word"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0360 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage162")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage162'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0360 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0370
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0370
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "按字截断によって切이 잘림This truncation is"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0370 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage163")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage163'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0370 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0380
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0380
     * @tc.desc   : Set the wordBreak property to BREAK_ALL, and input the text
     * "按字截断によって切이 잘림This truncation is按字截断によって切이 잘림This truncation is按字截断によって切이 잘림This
     * truncation is按字截断によって切이 잘림This truncation is"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0380 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage164")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage164'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0380 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0390
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0390
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "文本截断是按字截断"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0390 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage165")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage165'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0390 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0400
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0400
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "本截断是按字截断文本截断是按字截断文本截断是按字截断文本是按字"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0400 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage166")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage166'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0400 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0410
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0410
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "てられますテキスト切り捨ては単語によって切り捨て"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0410 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage167")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage167'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0410 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0420
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0420
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "この切り捨ては単語によって切り捨てられますテキスト切り捨ては単語によって切り捨てられますテキスト切り捨ては単語によって切り捨てられます
     * テキストは単語によって切り"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0420 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage168")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage168'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0420 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0430
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0430
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "이 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0430 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage169")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage169'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0430 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0440
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0440
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "이 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다. 텍스트 잘림은 단어로 자릅니다. 텍스트
     * 잘림은 단어로 자릅니다"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0440 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage170")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage170'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0440 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0450
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0450
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "This truncation is truncated text by"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0450 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage171")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage171'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0450 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0460
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0460
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "This truncation is truncating text by word Truncating text by word Truncating text by word Truncating text by
     * word Truncating text by word Yes by word"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0460 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage172")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage172'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0460 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0470
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0470
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "按字截断によって切이 잘림This truncation is"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0470 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage173")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage173'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0470 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0480
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0480
     * @tc.desc   : Set the wordBreak property to BREAK_WORD, and input the text
     * "按字截断によって切이 잘림This truncation is按字截断によって切이 잘림This truncation is按字截断によって切이 잘림This
     * truncation is按字截断によって切이 잘림This truncation"
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0480 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage174")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let button: Component = await driver.findComponent(ON.id('fontAttributePage174'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0480 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0490
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0490
     * @tc.desc   : Set the maxLines property to 3 and input the text "本截断是按字截断文本截断是按字截断文本截断是按字截断文本
     * i am本截断是按字截断文本截断是按字截断文本截断是按字截断文本". When you change maxLines from 3 to 5, input an
     * additional character.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0490 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage175")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributePage175'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0490 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0500
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0500
     * @tc.desc   : Set maxLines to 3 and input the text "本截断是按字截断文本截断是按字截断文本截断是按字截断文本i am本截断是按字截
     * 断文本截断是按字截断文本截断是按字截断文本". After changing maxLines from 5 back to 3, input an additional character.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0500 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage176")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributePage176'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0500 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0510
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0510
     * @tc.desc   : Set the Text component's width to 100%, leave the height unset, and set maxLines to 2. Input the
     * text "本截断是按字截断文本截断是按字截断文本截断是按字截断文本i am本截断是按字截断文本截断是按字截断文本截断是". After switching
     * from portrait to landscape orientation, input an additional character.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0510 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage177")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributePage177'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0510 finish.`);
      done()
    })

    /*
     * @tc.number : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0520
     * @tc.name   : SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0520
     * @tc.desc   : Set the `Text` component's width to 100%, do not set its height, and set `maxLines` to 2. Input the
     * text "本截断是按字截断文本截断是按字截断文本截断是按字截断文本i am本截断是按字截断文本截断是按字截断文本截断是". After switching
     * from landscape to portrait orientation, input an additional character.
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0520 start.`);
      Settings.createWindow("testability/pages/UIAttributeFontInterface02/fontAttributePage178")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      let button: Component = await driver.findComponent(ON.id('fontAttributePage178'));
      await button.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_TEXT_TRUNCATION_0520 finish.`);
      done()
    })
  })
}
