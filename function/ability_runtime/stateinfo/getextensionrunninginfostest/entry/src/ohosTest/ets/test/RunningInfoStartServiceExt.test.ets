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
import { abilityManager, Want } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';
import { abilityDelegatorRegistry } from '@kit.TestKit';

const TAG: string = 'GetExtensionRunningInfosTest';
const Domain: number = 0x0000;

function sleep(time: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, time))
}

export default function runningInfoStartServiceExt() {
  let abilityDelegator: abilityDelegatorRegistry.AbilityDelegator = abilityDelegatorRegistry.getAbilityDelegator();
  let serviceEmptyWant: Want = {
    bundleName: 'com.acts.stateinfoservice.empty',
    abilityName: 'ServiceAbility'
  }
  let upperLimit = 30;
  let ready = false;
  describe('runningInfoStartServiceExt', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(() => {
      // Presets an action, which is performed only once before all test cases of the test suite start.
      // This API supports only one parameter: preset action function.
    })
    beforeEach(() => {
      // Presets an action, which is performed before each unit test case starts.
      // The number of execution times is the same as the number of test cases defined by **it**.
      // This API supports only one parameter: preset action function.
      try {
        // 启动server1
        abilityDelegator.startAbility(serviceEmptyWant);
        hilog.info(Domain, TAG, `beforeEach startServiceExtensionAbility success`);
        sleep(500);
        ready = true;
      } catch (error) {
        hilog.error(Domain, TAG, `beforeEach error,error code is: ${error.code}, error message is: ${error.message}`);
      }
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
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2900
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2900
     * @tc.desc: test getExtensionRunningInfos by callback
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2900",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2900 start ${ready}`);
          expect(ready).assertTrue();
          await sleep(500);
          // 获取RunningInfos
          let functionCheckRunningInfos = async () => {
            return new Promise<boolean>((resolve, reject) => {
              abilityManager.getExtensionRunningInfos(upperLimit,
                (error: BusinessError, runningInfos: Array<abilityManager.ExtensionRunningInfo>) => {
                  if (error) {
                    hilog.error(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2900 error,
                  error code is: ${error.code}, error message is: ${error.message}`);
                    reject(error)
                  }
                  let result = false;
                  for (let index = 0; index < runningInfos.length; index++) {
                    let info: abilityManager.ExtensionRunningInfo = runningInfos[index];
                    if (info.processName == serviceEmptyWant.bundleName) {
                      result = true;
                      break;
                    }
                  }
                  resolve(result);
                });
            })
          };
          let hasService1 = await functionCheckRunningInfos();
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2900 hasService1 ${hasService1}`);
          expect(hasService1).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_2900 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3000
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3000
     * @tc.desc: test getExtensionRunningInfos by promise
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3000",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        try {
          hilog.info(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3000 start`);
          expect(ready).assertTrue();
          await sleep(500);
          // 获取RunningInfos
          let runningInfos = await abilityManager.getExtensionRunningInfos(upperLimit);
          let hasService1 = false;
          for (let index = 0; index < runningInfos.length; index++) {
            let info: abilityManager.ExtensionRunningInfo = runningInfos[index];
            if (info.processName == serviceEmptyWant.bundleName) {
              hasService1 = true;
              break;
            }
          }
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3000 hasService1 ${hasService1}`);
          expect(hasService1).assertTrue();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3000 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3200
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3200
     * @tc.desc: test getExtensionRunningInfos by callback
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3200",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        try {
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3200 start ${ready}`);
          expect(ready).assertTrue();
          // 停止server1
          await abilityDelegator.executeShellCommand(`aa force-stop ${serviceEmptyWant.bundleName}`);
          await sleep(500);
          // 获取RunningInfos
          let functionCheckRunningInfos = async () => {
            return new Promise<boolean>((resolve, reject) => {
              abilityManager.getExtensionRunningInfos(upperLimit,
                (error: BusinessError, runningInfos: Array<abilityManager.ExtensionRunningInfo>) => {
                  if (error) {
                    hilog.error(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3200 error,
                  error code is: ${error.code}, error message is: ${error.message}`);
                    reject(error)
                  }
                  let result = false;
                  for (let index = 0; index < runningInfos.length; index++) {
                    let info: abilityManager.ExtensionRunningInfo = runningInfos[index];
                    if (info.processName == serviceEmptyWant.bundleName) {
                      result = true;
                      break;
                    }
                  }
                  resolve(result);
                });
            })
          };
          let hasService1 = await functionCheckRunningInfos();
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3200 hasService1 ${hasService1}`);
          expect(hasService1).assertFalse();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3200 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
    /**
     * @tc.number: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3300
     * @tc.name: SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3300
     * @tc.desc: test getExtensionRunningInfos by promise
     * @tc.size: LargeTest
     * @tc.type: Function
     * @tc.level: Level0
     */
    it("SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3300",
      TestType.FUNCTION | Size.LARGETEST | Level.LEVEL0, async (done: Function) => {
        try {
          hilog.info(Domain, TAG, `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3300 start`);
          expect(ready).assertTrue();
          // 停止server1
          await abilityDelegator.executeShellCommand(`aa force-stop ${serviceEmptyWant.bundleName}`);
          await sleep(500);
          // 获取RunningInfos
          let runningInfos = await abilityManager.getExtensionRunningInfos(upperLimit);
          let hasService1 = false;
          for (let index = 0; index < runningInfos.length; index++) {
            let info: abilityManager.ExtensionRunningInfo = runningInfos[index];
            if (info.processName == serviceEmptyWant.bundleName) {
              hasService1 = true;
              break;
            }
          }
          hilog.info(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3300 hasService1 ${hasService1}`);
          expect(hasService1).assertFalse();
        } catch (e) {
          hilog.error(Domain, TAG,
            `SUB_Ability_AbilityRuntime_ABILITY_StateInfo_GetExtensionRunningInfos_3300 error,
           error code is: ${e.code}, error message is: ${e.message}`);
          expect().assertFail();
        }
        done();
      });
  })
}