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
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentTextRichEditorKeyboardAppearance() {
  describe('UIComponentTextRichEditorKeyboardAppearance', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KeyboardAppearance_001
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KeyboardAppearance_001
     * @tc.desc    Set KeyboardAppearance to dark immersive mode
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KeyboardAppearance_001', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KeyboardAppearance_001';
      let pageName = 'UIComponentTextRichEditorKeyboardAppearance001';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextRichEditorKeyboardAppearance/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let richEditor: Component = await driver.findComponent(ON.id(pageName + '_01'));
      await richEditor.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KeyboardAppearance_002
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KeyboardAppearance_002
     * @tc.desc    Set KeyboardAppearance to dark immersive mode
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KeyboardAppearance_002', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_KeyboardAppearance_002';
      let pageName = 'UIComponentTextRichEditorKeyboardAppearance002';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextRichEditorKeyboardAppearance/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let richEditor: Component = await driver.findComponent(ON.id(pageName + '_01'));
      await richEditor.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}