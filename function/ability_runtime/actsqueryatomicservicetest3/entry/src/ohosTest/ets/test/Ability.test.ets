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
     * @tc.number  SUB_Ability_AbilityRuntime_AtomicService_Query_0700
     * @tc.name    SUB_Ability_AbilityRuntime_AtomicService_Query_0700
     * @tc.desc    A 202 error code is returned when a non-system application fails to call the getRunningProcessInformationByBundleType API
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_AtomicService_Query_0700', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_AtomicService_Query_0700';
      try {
        let errCode = {} as BusinessError;
        await appManager.getRunningProcessInformationByBundleType(bundleManager.BundleType.APP)
          .then((data) => {
            console.log(`[${TAG}] The running process information is: ${JSON.stringify(data)}`);
          }).catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          });
        expect(errCode.code).assertEqual(202);
      } catch (paramError) {
        console.log(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

  })
}