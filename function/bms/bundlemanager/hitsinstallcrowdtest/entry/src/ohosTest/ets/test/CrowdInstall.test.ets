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
import abilityAccessCtrl, { Context, Permissions } from '@ohos.abilityAccessCtrl';
import { Component, Driver, ON } from '@ohos.UiTest';
import { GlobalThis } from './GlobalThis';
import installer from '@ohos.bundle.installer';

const TAG = "CrowdInstallTest "

function sleep(ms: number) {
  console.info(TAG + "Entering sleep -> Promise constructor");
  return new Promise<void>(resolve => setTimeout(resolve, ms));
}

async function uninstall(bundleInstaller: installer.BundleInstaller, bundleName: string) {
  try {
    await bundleInstaller.uninstall(bundleName)
  } catch (e) {

  }
}

async function getPermissions(done: Function) {
  let context = GlobalThis.getInstance().getContext("UIAbility") as Context;
  console.log('getPermission beforeAll');
  let list: Array<Permissions> = ['ohos.permission.GET_INSTALLED_BUNDLE_LIST'];
  let atManager = abilityAccessCtrl.createAtManager();
  atManager.requestPermissionsFromUser(context, list, (err, result) => {
    if (err) {
      console.log(`getPermission err ${JSON.stringify(err)}`);
    } else {
      console.log(`getPermission success`);
    }
    done();
  });
  await sleep(1500);
  const driver: Driver = Driver.create();
  await sleep(1500);
  const allowBtn: Component = await driver.findComponent(ON.text('允许'));
  if (allowBtn) {
    await allowBtn.click();
  }
}

export default function CrowdInstallTest() {
  describe('CrowdInstallTest', () => {
    beforeAll(async (done: Function) => {
      console.info(TAG + 'beforeAll case');
      getPermissions(done);
      console.info(TAG + 'beforeAll out');
    });
    beforeEach(() => {
      console.info(TAG + 'beforeEach case');
    });
    afterEach(() => {
      console.info(TAG + 'afterEach case');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Install_CrowdInstall_0200
     * @tc.name: getAllApplicationInfo
     * @tc.desc: invoke the getAllApplicationInfo interface to check applicationInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Install_CrowdInstall_0200', 0, async (done: Function) => {
      let bundleName = "com.example.bmsinstallcrowd0200";
      let appFlags = bundleManager.ApplicationFlag.GET_APPLICATION_INFO_DEFAULT;
      let userId = 100;
      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        console.info(TAG + 'Sub_Bms_Framework_Install_CrowdInstall_0200 START');
        await bundleInstaller.install([hapFilePath + 'bmsInstallCrowd0200.hap'])
        bundleManager.getAllApplicationInfo(appFlags, userId, (err, data) => {
          if (err) {
            console.error(TAG + 'getAllApplicationInfo failed: ', err.message);
            expect(false).assertTrue();
          } else {
            console.info(TAG + 'getAllApplicationInfo successfully:', JSON.stringify(data));
            let apppInfo = data.find(item => item.name == bundleName)!;
            expect(apppInfo.appDistributionType === 'crowdtesting').assertTrue();
            expect(apppInfo.appProvisionType === 'release').assertTrue();
          }
        });
        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        console.error(TAG + 'getAllApplicationInfo failed: ', JSON.stringify(err));
        await uninstall(bundleInstaller, bundleName)
        expect(false).assertTrue();
        done();
      }
      console.info(TAG + 'Sub_Bms_Framework_Install_CrowdInstall_0200 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Install_CrowdInstall_0400
     * @tc.name: getAllBundleInfo
     * @tc.desc: invoke the getAllBundleInfo interface to check applicationInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Install_CrowdInstall_0400', 0, async (done: Function) => {
      let bundleName = "com.example.bmsinstallcrowd0200";
      let appFlags = bundleManager.BundleFlag.GET_BUNDLE_INFO_WITH_APPLICATION;
      let userId = 100;
      console.info(TAG + 'Sub_Bms_Framework_Install_CrowdInstall_0400 START');
      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsInstallCrowd0200.hap'])
        bundleManager.getAllBundleInfo(appFlags, userId, (err, data) => {
          if (err) {
            console.error(TAG + 'getAllBundleInfo failed: ', err.message);
            expect(false).assertTrue();
          } else {
            console.info(TAG + 'getAllBundleInfo successfully:', JSON.stringify(data));
            let apppInfo = data.find(item => item.name == bundleName)!.appInfo;
            expect(apppInfo.appDistributionType === 'crowdtesting').assertTrue();
            expect(apppInfo.appProvisionType === 'release').assertTrue();
          }
        });

        console.info(TAG + 'Sub_Bms_Framework_Install_CrowdInstall_0400 install feature');
        await bundleInstaller.install([hapFilePath + 'bmsInstallCrowd02001.hap'])
        await sleep(1000)
        bundleManager.getAllBundleInfo(appFlags, userId, (err, data) => {
          if (err) {
            console.error(TAG + 'getAllBundleInfo failed: ', err.message);
            expect(false).assertTrue();
          } else {
            console.info(TAG + 'getAllBundleInfo successfully:', JSON.stringify(data));
            let apppInfo = data.find(item => item.name == bundleName)!.appInfo;
            expect(apppInfo.appDistributionType === 'crowdtesting').assertTrue();
            expect(apppInfo.appProvisionType === 'release').assertTrue();
          }
        });

        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        console.error(TAG + 'getAllBundleInfo failed: ', JSON.stringify(err));
        await uninstall(bundleInstaller, bundleName)
        expect(false).assertTrue();
        done();
      }
      console.info(TAG + 'Sub_Bms_Framework_Install_CrowdInstall_0400 END');
    });

  })
}