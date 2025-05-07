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
import { BusinessError } from '@kit.BasicServicesKit';
import { KeyCode } from '@kit.InputKit';
import { Driver, ON ,Component } from '@kit.TestKit';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIXcomponentSoftKeyboard() {
  describe('UIXcomponentSoftKeyboard', () => {
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
     * @tc.number  SUB_ACE_UI_XCOMPONENT_SOFT_KEYBOARD_001
     * @tc.name    SUB_ACE_UI_XCOMPONENT_SOFT_KEYBOARD_001
     * @tc.desc    Verify whether the soft keyboard closes after XComponent gains focus (via Tab key) when the keyboard is active by default
     * @tc.level   0
     */
    it('SUB_ACE_UI_XCOMPONENT_SOFT_KEYBOARD_001', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_XCOMPONENT_SOFT_KEYBOARD_001';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIXcomponentSoftKeyboard/UIXcomponentSoftKeyboard001');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      await driver.triggerKey(KeyCode.KEYCODE_TAB);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIXcomponentSoftKeyboard001_01');
      await driver.triggerKey(KeyCode.KEYCODE_TAB);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIXcomponentSoftKeyboard001_02');
      await driver.triggerKey(KeyCode.KEYCODE_TAB);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIXcomponentSoftKeyboard001_03');
      await driver.triggerKey(KeyCode.KEYCODE_TAB);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIXcomponentSoftKeyboard001_04');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_XCOMPONENT_SOFT_KEYBOARD_002
     * @tc.name    SUB_ACE_UI_XCOMPONENT_SOFT_KEYBOARD_002
     * @tc.desc    Verify whether the soft keyboard closes after XComponent gains focus (via clicking) when the keyboard is active by default
     * @tc.level   0
     */
    it('SUB_ACE_UI_XCOMPONENT_SOFT_KEYBOARD_002', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_XCOMPONENT_SOFT_KEYBOARD_002';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIXcomponentSoftKeyboard/UIXcomponentSoftKeyboard002');
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let textInput: Component = await driver.findComponent(ON.id('UIXcomponentSoftKeyboard002_001'));
      await textInput.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIXcomponentSoftKeyboard002_01');
      let search: Component = await driver.findComponent(ON.id('UIXcomponentSoftKeyboard002_002'));
      await search.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIXcomponentSoftKeyboard002_02');
      let richEditor: Component = await driver.findComponent(ON.id('UIXcomponentSoftKeyboard002_003'));
      await richEditor.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIXcomponentSoftKeyboard002_03');
      let xComponent: Component = await driver.findComponent(ON.id('UIXcomponentSoftKeyboard002_004'));
      await xComponent.click();
      await Utils.sleep(1000);
      windowSnap.snapShot('UIXcomponentSoftKeyboard002_04');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}