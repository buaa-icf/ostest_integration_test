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
import launcherBundleManager from '@ohos.bundle.launcherBundleManager';
import installer from '@ohos.bundle.installer';

const TAG = "LauncherInfoTest "

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

export default function LauncherInfoTest() {
  describe('LauncherInfoTest', () => {
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
     * @tc.number: Sub_Bms_Framework_Query_LauncherInfo_5700
     * @tc.name: getShortcutInfo
     * @tc.desc: invoke the getShortcutInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_LauncherInfo_5700', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_5700 START');
      let bundleName = 'com.example.bmsqueryinfo001';

      try {
        let shortcutInfos = await launcherBundleManager.getShortcutInfo(bundleName)
        console.info(TAG + 'getShortcutInfo successfully: ', JSON.stringify(shortcutInfos));
        let shortcutInfo = shortcutInfos![0].wants![0]
        let key1Item = shortcutInfo!.parameters!.find(item => item.key === 'xxx')!
        expect(key1Item.value == 'yyy').assertTrue()
        let key12tem = shortcutInfo!.parameters!.find(item => item.key === 'xxx2')!
        expect(key12tem.value == 'yyy2').assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getShortcutInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_5700 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_LauncherInfo_5800
     * @tc.name: getShortcutInfo
     * @tc.desc: invoke the getShortcutInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_LauncherInfo_5800', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_5800 START');
      let bundleName = 'com.example.bmsqueryinfo007';
      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()

      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo007.hap'])
        let shortcutInfos = await launcherBundleManager.getShortcutInfo(bundleName)
        console.info(TAG + 'getShortcutInfo successfully: ', JSON.stringify(shortcutInfos));
        let shortcutInfo = shortcutInfos![0].wants![0]
        expect(shortcutInfo!.parameters!.length == 0).assertTrue()
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo0072.hap'])

        let shortcutInfos2 = await launcherBundleManager.getShortcutInfo(bundleName)
        console.info(TAG + 'getShortcutInfo2 successfully: ', JSON.stringify(shortcutInfos2));
        let shortcutInfo2 = shortcutInfos2!.find(item => item.moduleName == 'entry')!.wants![0]

        let key1Item = shortcutInfo2!.parameters!.find(item => item.key === 'xxx')!
        expect(key1Item.value == 'yyy').assertTrue()
        let key12tem = shortcutInfo2!.parameters!.find(item => item.key === 'xxx2')!
        expect(key12tem.value == 'yyy2').assertTrue()

        await uninstall(bundleInstaller, bundleName)
        done()
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getShortcutInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_5800 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_LauncherInfo_5900
     * @tc.name: getShortcutInfo
     * @tc.desc: invoke the getShortcutInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_LauncherInfo_5900', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_5900 START');
      let bundleName = 'com.example.bmsqueryinfo008';
      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()

      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo008.hap'])
        let shortcutInfos = await launcherBundleManager.getShortcutInfo(bundleName)
        console.info(TAG + 'getShortcutInfo successfully: ', JSON.stringify(shortcutInfos));
        let shortcutInfo = shortcutInfos![0].wants![0]
        expect(shortcutInfo!.parameters!.length == 0).assertTrue()
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo0082.hap'], {
          installFlag: 0x01
        })

        let shortcutInfos2 = await launcherBundleManager.getShortcutInfo(bundleName)
        console.info(TAG + 'getShortcutInfo2 successfully: ', JSON.stringify(shortcutInfos2));
        let shortcutInfo2 = shortcutInfos2![0].wants![0]
        let key1Item = shortcutInfo2!.parameters!.find(item => item.key === 'xxx')!
        expect(key1Item.value == 'yyy').assertTrue()
        let key12tem = shortcutInfo2!.parameters!.find(item => item.key === 'xxx2')!
        expect(key12tem.value == 'yyy2').assertTrue()

        await uninstall(bundleInstaller, bundleName)
        done()
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getShortcutInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_5900 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_LauncherInfo_6000
     * @tc.name: getShortcutInfo
     * @tc.desc: invoke the getShortcutInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_LauncherInfo_6000', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_6000 START');
      let bundleName = 'com.example.bmsqueryinfo008';
      let hapFilePath = '/data/storage/el2/base/files/'
      let bundleInstaller = await installer.getBundleInstaller()

      try {
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo0083.hap'])
        let shortcutInfos = await launcherBundleManager.getShortcutInfo(bundleName)
        console.info(TAG + 'getShortcutInfo successfully: ', JSON.stringify(shortcutInfos));
        let shortcutInfo = shortcutInfos![0].wants![0]
        let keyItem = shortcutInfo!.parameters!.find(item => item.key === 'sss')!
        expect(keyItem.value == 'ddd').assertTrue()
        await bundleInstaller.install([hapFilePath + 'bmsQueryInfo0082.hap'], {
          installFlag: 0x01
        })

        let shortcutInfos2 = await launcherBundleManager.getShortcutInfo(bundleName)
        console.info(TAG + 'getShortcutInfo2 successfully: ', JSON.stringify(shortcutInfos2));
        let shortcutInfo2 = shortcutInfos2![0].wants![0]

        let key1Item = shortcutInfo2!.parameters!.find(item => item.key === 'xxx')!
        expect(key1Item.value == 'yyy').assertTrue()
        let key12tem = shortcutInfo2!.parameters!.find(item => item.key === 'xxx2')!
        expect(key12tem.value == 'yyy2').assertTrue()

        await uninstall(bundleInstaller, bundleName)
        done()
      } catch (err) {
        await uninstall(bundleInstaller, bundleName)
        console.error(TAG + 'getShortcutInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_6000 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_LauncherInfo_6400
     * @tc.name: getShortcutInfo
     * @tc.desc: invoke the getShortcutInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_LauncherInfo_6400', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_6400 START');
      let bundleName = 'com.example.bmsqueryinfo004';

      try {
        let shortcutInfos = await launcherBundleManager.getShortcutInfo(bundleName)
        console.info(TAG + 'getShortcutInfo successfully: ', JSON.stringify(shortcutInfos));
        expect(shortcutInfos.length == 0).assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getShortcutInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_6400 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_LauncherInfo_6500
     * @tc.name: getShortcutInfo
     * @tc.desc: invoke the getShortcutInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_LauncherInfo_6500', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_6500 START');
      let bundleName = 'com.example.bmsqueryinfo001';

      try {
        let shortcutInfos = launcherBundleManager.getShortcutInfoSync(bundleName)
        console.info(TAG + 'getShortcutInfo successfully: ', JSON.stringify(shortcutInfos));
        let shortcutInfo = shortcutInfos![0].wants![0]
        let key1Item = shortcutInfo!.parameters!.find(item => item.key === 'xxx')!
        expect(key1Item.value == 'yyy').assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getShortcutInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_LauncherInfo_6500 END');
    });
  })
}