/**
 * Copyright (c) 2024 Huawei Device Co., Ltd.
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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, TestType, Level, Size } from '@ohos/hypium';
import { abilityManager, bundleManager, common, Want } from '@kit.AbilityKit';
import { abilityDelegatorRegistry } from '@kit.TestKit';
import { rpc } from '@kit.IPCKit';
import { BusinessError } from '@kit.BasicServicesKit';

const TAG: string = 'GetExtensionRunningInfosTest';
const Domain: number = 0x0000;

function sleep(time: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, time))
}

export default function runningInfoApp() {
  let abilityDelegator: abilityDelegatorRegistry.AbilityDelegator = abilityDelegatorRegistry.getAbilityDelegator();
  let appEmptyWant: Want = {
    bundleName: 'com.hits.stateinfo.empty',
    abilityName: 'EntryAbility'
  }
  let testAppWant: Want = {
    bundleName: 'com.hits.stateinfo.getrunninginfotest',
    abilityName: 'TestAbility'
  }
  let ready: boolean = false;
  describe('runningInfoApp', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(() => {
      // Presets an action, which is performed only once before all test cases of the test suite start.
      // This API supports only one parameter: preset action function.
    })
    beforeEach(async () => {
      // Presets an action, which is performed before each unit test case starts.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: preset action function.
      try {
        // 启动辅助app
        await abilityDelegator.startAbility(appEmptyWant);
        hilog.info(Domain, TAG, `beforeEach startAbility success`);
        ready = true;
        sleep(500);
      } catch (error) {
        hilog.error(Domain, TAG, `beforeEach error,error code is: ${error.code}, error message is: ${error.message}`);
      }
    })
    afterEach(async () => {
      // Presets a clear action, which is performed after each unit test case ends.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: clear action function.
      try {
        abilityDelegator.executeShellCommand(`aa force-stop ${appEmptyWant.bundleName}`);
        hilog.info(Domain, TAG, `beforeEach force-stop ability success`);
        sleep(500);
      } catch (error) {
        hilog.error(Domain, TAG, `beforeEach error,error code is: ${error.code}, error message is: ${error.message}`);
      }
    })
    afterAll(() => {
      // Presets a clear action, which is performed after all test cases of the test suite end.
      // This API supports only one parameter: clear action function.
    })
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2700
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2700
     * @tc.desc: test getAbilityRunningInfos by callback
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2700",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2700 start`);
          // 获取RunningInfos
          let functionGetRunningInfos = async () => {
            return new Promise<boolean>((resolve, reject) => {
              abilityManager.getAbilityRunningInfos(
                (error: BusinessError, runningInfos: Array<abilityManager.AbilityRunningInfo>) => {
                  if (error) {
                    hilog.error(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2700 error,
                  error code is: ${error.code}, error message is: ${error.message}`);
                    reject(error)
                  }
                  let result = false;
                  for (let index = 0; index < runningInfos.length; index++) {
                    let info: abilityManager.AbilityRunningInfo = runningInfos[index];
                    if (info.processName == testAppWant.bundleName) {
                      result = true;
                      break;
                    }
                  }
                  resolve(result);
                });
            })
          };
          let hasTestApp = await functionGetRunningInfos();
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2700 hasTestApp ${hasTestApp}`);
          expect(hasTestApp).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2700 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2800
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2800
     * @tc.desc: test getAbilityRunningInfos by promise
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2800",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        try {
          hilog.info(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2800 start`);
          // 获取RunningInfos
          let runningInfos = await abilityManager.getAbilityRunningInfos();
          let hasTestApp = false;
          for (let index = 0; index < runningInfos.length; index++) {
            let info: abilityManager.AbilityRunningInfo = runningInfos[index];
            if (info.processName == appEmptyWant.bundleName) {
              hasTestApp = true;
              break;
            }
          }
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2800 hasTestApp ${hasTestApp}`);
          expect(hasTestApp).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2800 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3400
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3400
     * @tc.desc: test getAbilityRunningInfos by callback
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3400",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3400 start ${ready}`);
          expect(ready).assertTrue();
          // 获取RunningInfos
          let functionGetRunningInfos = async () => {
            return new Promise<boolean>((resolve, reject) => {
              abilityManager.getAbilityRunningInfos(
                (error: BusinessError, runningInfos: Array<abilityManager.AbilityRunningInfo>) => {
                  if (error) {
                    hilog.error(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3400 error,
                  error code is: ${error.code}, error message is: ${error.message}`);
                    reject(error)
                  }
                  let result = false;
                  for (let index = 0; index < runningInfos.length; index++) {
                    let info: abilityManager.AbilityRunningInfo = runningInfos[index];
                    if (info.processName == testAppWant.bundleName) {
                      result = true;
                      break;
                    }
                  }
                  resolve(result);
                });
            })
          };
          let hasApp1 = await functionGetRunningInfos();
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3400 hasApp1 ${hasApp1}`);
          expect(hasApp1).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3400 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3500
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3500
     * @tc.desc: test getAbilityRunningInfos by promise
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3500",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        try {
          hilog.info(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3500 start  ${ready}`);
          expect(ready).assertTrue();
          // 获取RunningInfos
          let runningInfos = await abilityManager.getAbilityRunningInfos();
          let hasApp1 = false;
          for (let index = 0; index < runningInfos.length; index++) {
            let info: abilityManager.AbilityRunningInfo = runningInfos[index];
            if (info.processName == appEmptyWant.bundleName) {
              hasApp1 = true;
              break;
            }
          }
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3500 hasTestApp ${hasApp1}`);
          expect(hasApp1).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3500 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
  })
}