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

export default function UIComponentTextRichEditorAction() {
  describe('UIComponentTextRichEditorAction', () => {
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
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0290
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0290
     * @tc.desc    Drag selected text in richeditor
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0290', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0290';
      let pageName = 'UIComponentTextRichEditorAction0290';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextRichEditorAction/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let richEditor: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let richEditorCenter = await richEditor.getBoundsCenter();
      await driver.mouseMoveTo({x: richEditorCenter.x - 250, y: richEditorCenter.y - 20});
      await driver.longClick(richEditorCenter.x - 250, richEditorCenter.y - 20);
      await Utils.sleep(500);
      await driver.drag(richEditorCenter.x - 250, richEditorCenter.y - 20, richEditorCenter.x, richEditorCenter.y - 20);
      await driver.mouseMoveTo({x: richEditorCenter.x, y: richEditorCenter.y - 20});
      await driver.mouseMoveTo({x: richEditorCenter.x - 125, y: richEditorCenter.y - 20});
      await driver.drag(richEditorCenter.x - 125, richEditorCenter.y - 20, richEditorCenter.x + 125, richEditorCenter.y + 50);
      await driver.mouseMoveTo({x: richEditorCenter.x + 125, y: richEditorCenter.y + 50});
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await driver.mouseMoveTo({x: richEditorCenter.x - 125, y: richEditorCenter.y - 20});
      await driver.drag(richEditorCenter.x - 125, richEditorCenter.y - 20, richEditorCenter.x + 125, richEditorCenter.y + 400);
      await driver.mouseMoveTo({x: richEditorCenter.x + 125, y: richEditorCenter.y + 400});
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0320
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0320
     * @tc.desc    Multi-line text selection operation with handles highlighted correctly
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0320', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0320';
      let pageName = 'UIComponentTextRichEditorAction0320';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextRichEditorAction/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let richEditor: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let richEditorCenter = await richEditor.getBoundsCenter();
      await driver.mouseMoveTo({x: richEditorCenter.x, y: richEditorCenter.y - 30});
      await driver.longClick(richEditorCenter.x, richEditorCenter.y - 30);
      await Utils.sleep(500);
      await driver.mouseMoveTo({x: richEditorCenter.x + 80, y: richEditorCenter.y + 60});
      await driver.click(richEditorCenter.x + 80, richEditorCenter.y + 60);
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0290_960
     * @tc.name    SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0290_960
     * @tc.desc    Keyboard does not auto-pop up when selecting text in preview mode
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0290_960', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_TEXT_RICHEDITOR_ACTION_0290_960';
      let pageName = 'UIComponentTextRichEditorAction0290_960';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentTextRichEditorAction/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let richEditor: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let richEditorCenter = await richEditor.getBoundsCenter();
      await driver.mouseMoveTo({x: richEditorCenter.x - 250, y: richEditorCenter.y - 20});
      await driver.longClick(richEditorCenter.x - 250, richEditorCenter.y - 20);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_01');
      await richEditor.click();
      await driver.mouseMoveTo({x: richEditorCenter.x - 250, y: richEditorCenter.y - 20});
      await driver.longClick(richEditorCenter.x - 250, richEditorCenter.y - 20);
      await Utils.sleep(1000);
      let rect = await richEditor.getBounds();
      await driver.mouseMoveTo({x: rect.right - 50, y: rect.bottom + 400});
      await driver.click(rect.right - 50, rect.bottom + 400);
      await Utils.sleep(500);
      await driver.mouseMoveTo({x: richEditorCenter.x - 245, y: richEditorCenter.y});
      await driver.drag(richEditorCenter.x - 245, richEditorCenter.y, richEditorCenter.x, richEditorCenter.y - 20);
      await driver.mouseMoveTo({x: richEditorCenter.x, y: richEditorCenter.y - 20});
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '_02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}