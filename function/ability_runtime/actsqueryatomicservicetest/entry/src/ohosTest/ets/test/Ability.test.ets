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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { appManager, bundleManager } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';

let TAG = 'RunTimeTest';

export default function abilityTest() {
  describe('ActsAbilityTest', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(() => {
      // Presets an action, which is performed only once before all test cases of the test suite start.
      // This API supports only one parameter: preset action function.
    })
    beforeEach(() => {
      // Presets an action, which is performed before each unit test case starts.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: preset action function.
    })
    afterEach(() => {
      // Presets a clear action, which is performed after each unit test case ends.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: clear action function.
    })
    afterAll(() => {
      // Presets a clear action, which is performed after all test cases of the test suite end.
      // This API supports only one parameter: clear action function.
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_AtomicService_Query_0100
     * @tc.name    SUB_Ability_AbilityRuntime_AtomicService_Query_0100
     * @tc.desc    Call the getRunningProcessInformationByBundleType API with the input parameter null to return a 401 error code 
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_AtomicService_Query_0100', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_AtomicService_Query_0100';
      try {
        await appManager.getRunningProcessInformationByBundleType(null)
          .then((data) => {
            console.log(`[${TAG}] The running process information is: ${JSON.stringify(data)}`);
            expect().assertFail();
          }).catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            expect().assertFail();
          });
      } catch (paramError) {
        console.error(`[${TAG}] paramError.code: ${paramError.code}`);
        expect(paramError.code).assertEqual(401);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_AtomicService_Query_0200
     * @tc.name    SUB_Ability_AbilityRuntime_AtomicService_Query_0200
     * @tc.desc    Call the getRunningProcessInformationByBundleType API with the parameter undefined to return a 401 error code with the parameter undefined
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_AtomicService_Query_0200', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_AtomicService_Query_0200';
      try {
        await appManager.getRunningProcessInformationByBundleType(undefined)
          .then((data) => {
            console.log(`[${TAG}] The running process information is: ${JSON.stringify(data)}`);
          }).catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
          });
        expect().assertFail();
      } catch (paramError) {
        console.error(`[${TAG}] paramError.code: ${paramError.code}`);
        expect(paramError.code).assertEqual(401);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_AtomicService_Query_0300
     * @tc.name    SUB_Ability_AbilityRuntime_AtomicService_Query_0300
     * @tc.desc    Call the getRunningProcessInformationByBundleType API to return a 401 error code if the bundleType parameter is less than 1
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_AtomicService_Query_0300', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_AtomicService_Query_0300';
      try {
        await appManager.getRunningProcessInformationByBundleType(-1)
          .then((data) => {
            console.log(`[${TAG}] The running process information is: ${JSON.stringify(data)}`);
          }).catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
          });
        expect().assertFail();
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
        console.error(`[${TAG}] paramError.code: ${paramError.code}`);
        expect(paramError.code).assertEqual(401);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_AtomicService_Query_0400
     * @tc.name    SUB_Ability_AbilityRuntime_AtomicService_Query_0400
     * @tc.desc    The getRunningProcessInformationByBundleType API is called, and the parameter bundleType is set to 1, and the call succeeds
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_AtomicService_Query_0400', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_AtomicService_Query_0400';
      try {
        let info: appManager.ProcessInformation[] = [];
        await appManager.getRunningProcessInformationByBundleType(bundleManager.BundleType.ATOMIC_SERVICE)
          .then((data) => {
            console.log(`[${TAG}] The running process information is: ${JSON.stringify(data)}`);
            info = data;
          }).catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
          });
        for(let item of info) {
          console.log(`[${TAG}] The item is: ${JSON.stringify(item)}`);
          expect(item.bundleType).assertEqual(1);
        }
      } catch (paramError) {
        console.log(`[${TAG}] paramError.code: ${paramError.code}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_AtomicService_Query_0500
     * @tc.name    SUB_Ability_AbilityRuntime_AtomicService_Query_0500
     * @tc.desc    The getRunningProcessInformationByBundleType API is called, and the parameter bundleType is set to 0, and the call succeeds
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_AtomicService_Query_0500', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_AtomicService_Query_0500';
      try {
        let info: appManager.ProcessInformation[] = [];
        await appManager.getRunningProcessInformationByBundleType(bundleManager.BundleType.APP)
          .then((data) => {
            console.log(`[${TAG}] The running process information is: ${JSON.stringify(data)}`);
            info = data;
          }).catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
          });
        for(let item of info) {
          console.log(`[${TAG}] The item is: ${JSON.stringify(item)}`);
          expect(item.bundleType).assertEqual(0);
        }
      } catch (paramError) {
        console.log(`[${TAG}] paramError.code: ${paramError.code}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

  })
}