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
import bundleResourceManager from '@ohos.bundle.bundleResourceManager';
import installer from '@ohos.bundle.installer';
import abilityAccessCtrl, { Context, Permissions } from '@ohos.abilityAccessCtrl';
import { Component, Driver, ON } from '@ohos.UiTest';
import { GlobalThis } from './GlobalThis';

const TAG = "ResourceTest "

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

export default function ResourceTest() {
  describe('ResourceTest', () => {
    beforeAll(async (done: Function) => {
      console.info(TAG + 'beforeAll case');
      // await sleep(6000)
      await getPermissions(done)
    });
    beforeEach(() => {
      console.info(TAG + 'beforeEach case');
    });
    afterEach(() => {
      console.info(TAG + 'afterEach case');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_Resource_0800
     * @tc.name: getBundleResourceInfo
     * @tc.desc: invoke the getBundleResourceInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_Resource_0800', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_0800 START');
      let bundleName = 'com.example.bmsqueryresourceinfo008';
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL;

      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo008.hap'])
        console.info(TAG + 'installed');
        let resInfo = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info(TAG + 'getBundleResourceInfo: ', JSON.stringify(resInfo));

        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo0082.hap'], {
          installFlag: 0x01
        })
        console.info(TAG + 'installed2');

        let resInfo2 = bundleResourceManager.getBundleResourceInfo(bundleName, bundleFlags);
        console.info(TAG + 'getBundleResourceInfo2: ', JSON.stringify(resInfo2));
        expect(resInfo.label != resInfo2.label && resInfo.icon != resInfo2.icon).assertTrue();
        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getBundleResourceInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_0800 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_Resource_2400
     * @tc.name: getLauncherAbilityResourceInfo
     * @tc.desc: invoke the getLauncherAbilityResourceInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_Resource_2400', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_2400 START');
      let bundleName = 'com.example.bmsqueryresourceinfo024';
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL;

      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo024.hap'])
        console.info(TAG + 'installed');
        let resInfos = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info(TAG + 'getLauncherAbilityResourceInfo: ', JSON.stringify(resInfos));
        expect(resInfos.length == 2 && resInfos[0].label != resInfos[1].label && resInfos[0].icon != resInfos[1].icon)
          .assertTrue();

        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo0242.hap'], {
          installFlag: 0x01
        })
        console.info(TAG + 'installed2');

        let resInfos2 = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info(TAG + 'getLauncherAbilityResourceInfo2: ', JSON.stringify(resInfos2));
        expect(resInfos2.length == 2 && resInfos2[0].label == resInfos2[1].label && resInfos2[0].icon == resInfos2[1].icon)
          .assertTrue();
        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getLauncherAbilityResourceInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_2400 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_Resource_4300
     * @tc.name: getAllBundleResourceInfo
     * @tc.desc: invoke the getAllBundleResourceInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_Resource_4300', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_4300 START');
      let bundleName = 'com.example.bmsqueryresourceinfo008';
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_LABEL;

      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo008.hap'])
        console.info(TAG + 'installed');
        let resInfos = await bundleResourceManager.getAllBundleResourceInfo(bundleFlags);
        console.info(TAG + 'getAllBundleResourceInfo: ', JSON.stringify(resInfos));

        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo0082.hap'], {
          installFlag: 0x01
        })
        console.info(TAG + 'installed2');

        let resInfos2 = await bundleResourceManager.getAllBundleResourceInfo(bundleFlags);
        console.info(TAG + 'getAllBundleResourceInfo2: ', JSON.stringify(resInfos2));
        let resInfo = resInfos.find(item => item.bundleName == bundleName)
        console.info(TAG + 'resInfo: ', JSON.stringify(resInfo));
        let resInfo2 = resInfos2.find(item => item.bundleName == bundleName)
        console.info(TAG + 'resInfo2: ', JSON.stringify(resInfo2));
        expect(resInfo!.label != resInfo2!.label).assertTrue();
        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getAllBundleResourceInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_4300 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_Resource_5300
     * @tc.name: getAllLauncherAbilityResourceInfo
     * @tc.desc: invoke the getAllLauncherAbilityResourceInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_Resource_5300', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_5300 START');
      let bundleName = 'com.example.bmsqueryresourceinfo024';
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_WITH_LABEL;

      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo024.hap'])
        console.info(TAG + 'installed');
        let resInfos = await bundleResourceManager.getAllLauncherAbilityResourceInfo(bundleFlags);
        resInfos = resInfos.filter(item => item.bundleName == bundleName)
        console.info(TAG + 'getAllLauncherAbilityResourceInfo: ', JSON.stringify(resInfos));
        expect(resInfos.length == 2 && resInfos[0].label != resInfos[1].label).assertTrue();

        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo0242.hap'], {
          installFlag: 0x01
        })
        console.info(TAG + 'installed2');

        let resInfos2 = await bundleResourceManager.getAllLauncherAbilityResourceInfo(bundleFlags);
        resInfos2 = resInfos2.filter(item => item.bundleName == bundleName)
        console.info(TAG + 'getAllLauncherAbilityResourceInfo2: ', JSON.stringify(resInfos2));
        expect(resInfos2.length == 2 && resInfos2[0].label == resInfos2[1].label).assertTrue();
        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getAllLauncherAbilityResourceInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_5300 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_Resource_5900
     * @tc.name: getLauncherAbilityResourceInfo
     * @tc.desc: invoke the getLauncherAbilityResourceInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_Resource_5900', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_5900 START');
      let bundleName = 'com.example.bmsqueryresourceinfo059';
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL;

      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo059.hap'])
        console.info(TAG + 'installed');
        let resInfos = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info(TAG + 'getLauncherAbilityResourceInfo: ', JSON.stringify(resInfos));
        let ability1 = resInfos.find(item => item.abilityName == 'EntryAbility')
        let ability2 = resInfos.find(item => item.abilityName == 'EntryAbility2')
        expect(ability1!.label != ability2!.label && ability1!.icon != ability2!.icon).assertTrue();
        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getLauncherAbilityResourceInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_5900 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_Resource_6000
     * @tc.name: getAllLauncherAbilityResourceInfo
     * @tc.desc: invoke the getAllLauncherAbilityResourceInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_Resource_6000', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_6000 START');
      let bundleName = 'com.example.bmsqueryresourceinfo060';
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL;

      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo060.hap'])
        console.info(TAG + 'installed');
        let resInfos = await bundleResourceManager.getAllLauncherAbilityResourceInfo(bundleFlags);
        console.info(TAG + 'getAllLauncherAbilityResourceInfo: ', JSON.stringify(resInfos));
        let ability1 = resInfos.find(item => item.abilityName == 'EntryAbility' && item.bundleName == bundleName)
        console.info(TAG + 'ability1: ', JSON.stringify(ability1));
        expect(ability1!.label == 'label3' && ability1!.icon != null).assertTrue();
        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getLauncherAbilityResourceInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_6000 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_Resource_6200
     * @tc.name: getAllLauncherAbilityResourceInfo
     * @tc.desc: invoke the getAllLauncherAbilityResourceInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_Resource_6200', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_6000 START');
      let bundleName = 'com.example.bmsqueryresourceinfo062';
      let bundleFlags = bundleResourceManager.ResourceFlag.GET_RESOURCE_INFO_ALL;

      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()
      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryResourceInfo062.hap'])
        console.info(TAG + 'installed');
        let resInfos = bundleResourceManager.getLauncherAbilityResourceInfo(bundleName, bundleFlags);
        console.info(TAG + 'getLauncherAbilityResourceInfo: ', JSON.stringify(resInfos));
        let ability1 = resInfos.find(item => item.abilityName == 'AccessibilityExtAbility' && item.bundleName == bundleName)
        expect(ability1 == null || ability1 == undefined).assertTrue();

        resInfos = await bundleResourceManager.getAllLauncherAbilityResourceInfo(bundleFlags);
        console.info(TAG + 'getAllLauncherAbilityResourceInfo: ', JSON.stringify(resInfos));
        ability1 = resInfos.find(item => item.abilityName == 'AccessibilityExtAbility' && item.bundleName == bundleName)
        expect(ability1 == null || ability1 == undefined).assertTrue();
        await uninstall(bundleInstaller, bundleName)
        done();
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getLauncherAbilityResourceInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_Resource_6200 END');
    });
  })

}