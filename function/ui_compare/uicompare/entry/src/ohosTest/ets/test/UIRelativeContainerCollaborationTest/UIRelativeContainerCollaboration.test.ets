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

export default function UIRelativeContainerCollaboration() {
  describe('UIRelativeContainerCollaboration', () => {
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
     * @tc.number  SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0680
     * @tc.name    SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0680
     * @tc.desc    Create a new .ets file and copy the sample code for compilation (example 1 to example 3)
     * @tc.level   0
     */
    it('SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0680', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0680';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration001');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_01');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration002');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_02');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration003');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_03');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0690
     * @tc.name    SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0690
     * @tc.desc    Create a new .ets file and copy the sample code for compilation (example 4 to example 6)
     * @tc.level   0
     */
    it('SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0690', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0690';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration004');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_01');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration005');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_02');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration006');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_03');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0700
     * @tc.name    SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0700
     * @tc.desc    Create a new .ets file and copy the sample code for compilation (example 7 to example 9)
     * @tc.level   0
     */
    it('SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0700', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_RELATIVECONTAINER_COLLABORATION_0700';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration007');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_01');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration008');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_02');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Settings.createWindow('testability/pages/UIRelativeContainerCollaboration/UIRelativeContainerCollaboration009');
      await Utils.sleep(1000);
      windowSnap.snapShot(TAG + '_03');
      if (Settings.windowClass != undefined) {
        Settings.windowClass.destroyWindow((err) => {
          if (err.code) {
            Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
            return;
          }
          Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
        })
      }
      await Utils.sleep(1000);
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}