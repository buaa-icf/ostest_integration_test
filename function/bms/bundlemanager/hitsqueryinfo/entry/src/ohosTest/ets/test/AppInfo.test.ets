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
import Want from '@ohos.app.ability.Want';
import installer from '@ohos.bundle.installer';

const TAG = "AppInfoTest "

function sleep(ms: number) {
  console.info(TAG + "Entering sleep -> Promise constructor");
  return new Promise<void>(resolve => setTimeout(resolve, ms));
}

export default function AppInfoTest() {
  describe('AppInfoTest', () => {
    beforeAll(async (done: Function) => {
      console.info(TAG + 'beforeAll case');
      // await sleep(6000)
      done()
    });
    beforeEach(() => {
      console.info(TAG + 'beforeEach case');
    });
    afterEach(() => {
      console.info(TAG + 'afterEach case');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AppInfo_1560
     * @tc.name: getBundleArchiveInfo
     * @tc.desc: invoke the getBundleArchiveInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AppInfo_1560', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_1560 START');
      let hapFilePath = "/data/storage/el2/base/files/bmsQueryInfo008.hap";
      let bundleFlags = bundleManager.BundleFlag.GET_BUNDLE_INFO_DEFAULT;

      try {
        let appInfo = await bundleManager.getBundleArchiveInfo(hapFilePath, bundleFlags);
        console.info(TAG + 'getBundleArchiveInfo successfully: ', JSON.stringify(appInfo));
        expect(appInfo.name === 'com.example.bmsqueryinfo008').assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getBundleArchiveInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_1560 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AppInfo_8700
     * @tc.name: getApplicationInfo
     * @tc.desc: invoke the getApplicationInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AppInfo_8700', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8700 START');
      let bundleName = 'com.example.bmsqueryinfo002';
      let appFlags = bundleManager.ApplicationFlag.GET_APPLICATION_INFO_DEFAULT;
      let userId = 100;

      try {
        let appInfo = await bundleManager.getApplicationInfo(bundleName, appFlags, userId)
        console.info(TAG + 'getApplicationInfo successfully: ', JSON.stringify(appInfo));
        expect(appInfo.dataUnclearable).assertTrue()

        let hapFilePath = '/data/storage/el2/base/files/'
        let bundleInstaller = await installer.getBundleInstaller()
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo003.hap'], {
          installFlag: 0x01
        })

        let appInfo2 = await bundleManager.getApplicationInfo(bundleName, appFlags, userId)
        console.info(TAG + 'getApplicationInfo2 successfully: ', JSON.stringify(appInfo2));
        expect(!appInfo2.dataUnclearable).assertTrue()

        done()
      } catch (err) {
        console.error(TAG + 'getApplicationInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8700 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AppInfo_8881
     * @tc.name: getBundleInfo
     * @tc.desc: invoke the getBundleInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AppInfo_8881', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8881 START');
      let bundleName = 'com.example.bmsqueryinfo004';
      let appFlags = bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_ROUTER_MAP;
      let userId = 100;

      try {
        let appInfo = await bundleManager.getBundleInfo(bundleName, appFlags, userId)
        console.info(TAG + 'getBundleInfo successfully: ', JSON.stringify(appInfo));
        expect(appInfo.routerMap.length == 0).assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getBundleInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8881 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AppInfo_8882
     * @tc.name: getBundleInfo
     * @tc.desc: invoke the getBundleInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AppInfo_8882', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8882 START');
      let bundleName = 'com.example.bmsqueryinfo004';
      let appFlags = bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE;
      let userId = 100;

      try {
        let appInfo = await bundleManager.getBundleInfo(bundleName, appFlags, userId)
        console.info(TAG + 'getBundleInfo successfully: ', JSON.stringify(appInfo));
        expect(appInfo.routerMap.length == 0).assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getBundleInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8882 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AppInfo_8883
     * @tc.name: getBundleInfo
     * @tc.desc: invoke the getBundleInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AppInfo_8883', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8883 START');
      let bundleName = 'com.example.bmsqueryinfo004';
      let appFlags = bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_ROUTER_MAP;
      let userId = 100;

      try {
        let appInfo = await bundleManager.getBundleInfo(bundleName, appFlags, userId)
        console.info(TAG + 'getBundleInfo successfully: ', JSON.stringify(appInfo));
        expect(appInfo.routerMap.length == 2).assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getBundleInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8883 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AppInfo_8884
     * @tc.name: getBundleInfo
     * @tc.desc: invoke the getBundleInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AppInfo_8884', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8884 START');
      let bundleName = 'com.example.bmsqueryinfo002';
      let appFlags = bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_HAP_MODULE | bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_ROUTER_MAP;
      let userId = 100;

      try {
        let appInfo = await bundleManager.getBundleInfo(bundleName, appFlags, userId)
        console.info(TAG + 'getBundleInfo successfully: ', JSON.stringify(appInfo));
        expect(appInfo.routerMap.length == 0).assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getBundleInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AppInfo_8884 END');
    });
  })
}