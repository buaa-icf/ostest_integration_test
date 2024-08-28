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
import installer from '@ohos.bundle.installer';
import { BusinessError } from '@ohos.base';

const TAG = "UninstallupdatesTest "

function sleep(ms: number) {
  console.info(TAG + "Entering sleep -> Promise constructor");
  return new Promise<void>(resolve => setTimeout(resolve, ms));
}

async function uninstall(bundleInstaller: installer.BundleInstaller, bundleName: string, installParam?: installer.InstallParam) {
  try {
    await bundleInstaller.uninstall(bundleName, installParam)
  } catch (e) {

  }
}

export default function UninstallupdatesTest() {
  describe('UninstallupdatesTest', () => {
    beforeAll(async (done: Function) => {
      console.info('beforeAll case');
      await sleep(6000)
      done()
    });
    beforeEach(() => {
      console.info('beforeEach case');
    });
    afterEach(() => {
      console.info('afterEach case');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Preset_Uninstallupdates_0300
     * @tc.name: uninstallUpdates
     * @tc.desc: invoke the uninstallUpdates
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Preset_Uninstallupdates_0300', 0, async (done: Function) => {
      try {
        console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_0300 START');
        let bundleName: ESObject = null
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.uninstallUpdates(bundleName)
        expect(false).assertTrue()
        done()
      } catch (err) {
        console.info(TAG + 'uninstallUpdates failed. Cause:', JSON.stringify(err));
        expect(err.code == 401).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_0300 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Preset_Uninstallupdates_0400
     * @tc.name: uninstallUpdates
     * @tc.desc: invoke the uninstallUpdates
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Preset_Uninstallupdates_0400', 0, async (done: Function) => {
      try {
        console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_0400 START');
        let bundleName: ESObject = undefined;
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.uninstallUpdates(bundleName)
        expect(false).assertTrue()
        done()
      } catch (err) {
        console.info(TAG + 'uninstallUpdates failed. Cause:', JSON.stringify(err));
        expect(err.code == 401).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_0400 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Preset_Uninstallupdates_0500
     * @tc.name: uninstallUpdates
     * @tc.desc: invoke the uninstallUpdates
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Preset_Uninstallupdates_0500', 0, async (done: Function) => {
      try {
        console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_0500 START');
        let bundleName = "";
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.uninstallUpdates(bundleName)
        expect(false).assertTrue()
        done()
      } catch (err) {
        console.info(TAG + 'uninstallUpdates failed. Cause:', JSON.stringify(err));
        expect(err.code == 17700001).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_0500 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Preset_Uninstallupdates_2100
     * @tc.name: uninstallUpdates
     * @tc.desc: invoke the uninstallUpdates
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Preset_Uninstallupdates_2100', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_2100 START');
      let bundleName = 'com.example.bmsqueryinfo008';
      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo008.hap'])
        await sleep(500)
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo0082.hap'], {
          installFlag: 0x01
        })

        console.info(TAG + 'install successfully');
        await bundleInstaller.uninstallUpdates(bundleName)
        await uninstall(bundleInstaller, bundleName)
        expect(false).assertTrue()
        done()
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.info(TAG + 'uninstallUpdates failed. Cause:', JSON.stringify(err));
        expect(err.code == 17700057).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Preset_Uninstallupdates_2100 END');
    });
  })
}