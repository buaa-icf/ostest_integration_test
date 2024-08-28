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

const TAG = "ProfileTest "

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

export default function ProfileTest() {
  describe('ProfileTest', () => {
    beforeAll(async (done: Function) => {
      console.info(TAG + 'beforeAll case');
      done()
    });
    beforeEach(() => {
      console.info(TAG + 'beforeEach case');
    });
    afterEach(() => {
      console.info(TAG + 'afterEach case');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_Profile_6700
     * @tc.name: getProfileByAbilitySync
     * @tc.desc: invoke the getProfileByAbilitySync
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_Profile_6700', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_Profile_6700 START');
      let bundleName = 'com.example.hitsqueryinfo';
      try {
        let abilityFlags = bundleManager.AbilityFlag.GET_ABILITY_INFO_DEFAULT;
        let userId = 100;
        let want: Want = {
          bundleName : bundleName,
          abilityName : "TestAbility2"
        };
        let abilitiesInfo = await bundleManager.queryAbilityInfo(want, abilityFlags, userId);
        console.info(TAG + 'queryAbilityInfo: ', JSON.stringify(abilitiesInfo));
        bundleManager.setAbilityEnabledSync(abilitiesInfo[0], false)
        console.info(TAG + 'setAbilityEnabledSync end');

        let data = bundleManager.getProfileByAbilitySync("entry_test", "TestAbility2");
        console.info(TAG + 'getProfileByAbilitySync end');
        expect(false).assertTrue();
        done();
      } catch (err) {
        console.error(TAG + 'getProfileByAbilitySync failed. Cause:', JSON.stringify(err));
        expect(err.code == 17700029).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_Profile_6700 END');
    });

  })

}