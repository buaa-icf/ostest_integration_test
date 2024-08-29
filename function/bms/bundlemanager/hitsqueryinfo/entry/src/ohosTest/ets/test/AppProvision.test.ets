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

const TAG = "AppProvisionTest "

function sleep(ms: number) {
  console.info(TAG + "Entering sleep -> Promise constructor");
  return new Promise<void>(resolve => setTimeout(resolve, ms));
}

export default function AppProvisionTest() {
  describe('AppProvisionTest', () => {
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
     * @tc.number: Sub_Bms_Framework_Query_AppProvision_0600
     * @tc.name: getAppProvisionInfo
     * @tc.desc: invoke the getAppProvisionInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AppProvision_0600', 0, async (done: Function) => {
      console.info(TAG + 'Sub_Bms_Framework_Query_AppProvision_0600 START');
      let bundleName = 'com.example.bmsqueryinfo002';
      let userId: ESObject = undefined;
      try {
        let data = await bundleManager.getAppProvisionInfo(bundleName, userId);
        console.info(TAG + 'getAppProvisionInfo successfully. Data: ', JSON.stringify(data));
        expect(data != null).assertTrue()
        done()
      } catch (err) {
        console.error(TAG + 'getAppProvisionInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AppProvision_0600 END');
    });

  })
}