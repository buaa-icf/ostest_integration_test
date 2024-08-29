/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
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
import bundleManager from '@ohos.bundle.bundleManager';
import installer from '@ohos.bundle.installer';

const TAG = "NoPermissionTest "

function sleep(ms: number) {
  console.info(TAG + "Entering sleep -> Promise constructor");
  return new Promise<void>(resolve => setTimeout(resolve, ms));
}

export default function NoPermissionTest() {
  describe('NoPermissionTest', () => {
    beforeAll(async (done: Function) => {
      console.info('beforeAll case');
      done()
    });
    beforeEach(() => {
      console.info('beforeEach case');
    });
    afterEach(() => {
      console.info('afterEach case');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Preset_Uninstallupdates_0200
     * @tc.name: uninstallUpdates
     * @tc.desc: invoke the uninstallUpdates
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Preset_Uninstallupdates_0200', 0, async (done: Function) => {
      try {
        console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_0200 START');
        let bundleName = 'com.example.hitsbmsnopermission'
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.uninstallUpdates(bundleName)
        expect(false).assertTrue()
        done()
      } catch (err) {
        console.info(TAG + 'uninstallUpdates failed. Cause:', JSON.stringify(err));
        expect(err.code == 202).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_0200 END');
    });
  })
}