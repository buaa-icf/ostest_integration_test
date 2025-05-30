/**
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import { KeyCode } from '@kit.InputKit';
import screenLock from '@ohos.screenLock';
import { window } from '@kit.ArkUI';
import wifiManager from '@ohos.wifiManager';
import { Driver, ON ,Component, UiWindow } from '@kit.TestKit';
import { uiAppearance } from '@kit.ArkUI';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentSymbolGlyphFontSizeScale() {
  describe('UIComponentSymbolGlyphFontSizeScale', () => {
    beforeAll(() => {

    })
    beforeEach(() => {

    })

    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    afterAll(() => {

    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0010
     * @tc.desc    Set minFontScale and maxFontScale for SymbolGlyph
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0010', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0010';
      let pageName = 'UIComponentSymbolGlyphFontSizeScale0010';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSymbolGlyphFontSizeScale/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let button2: Component = await driver.findComponent(ON.id(pageName + '_02'));
      let button3: Component = await driver.findComponent(ON.id(pageName + '_03'));
      await button1.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await button2.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      await button3.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_03');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0110
     * @tc.name    SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0110
     * @tc.desc    Set SymbolGlyph's minFontScale to undefined/null
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0110', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0110';
      let pageName = 'UIComponentSymbolGlyphFontSizeScale0110';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSymbolGlyphFontSizeScale/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let button2: Component = await driver.findComponent(ON.id(pageName + '_02'));
      let button3: Component = await driver.findComponent(ON.id(pageName + '_03'));
      await button1.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await button2.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      await button3.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_03');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0130
     * @tc.name    SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0130
     * @tc.desc    Set SymbolGlyph's maxFontScale to undefined/null
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0130', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SYMBOLGLYPH_FONTSTZESCALE_0130';
      let pageName = 'UIComponentSymbolGlyphFontSizeScale0130';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSymbolGlyphFontSizeScale/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let button1: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let button2: Component = await driver.findComponent(ON.id(pageName + '_02'));
      let button3: Component = await driver.findComponent(ON.id(pageName + '_03'));
      await button1.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await button2.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      await button3.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_03');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}