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

import hilog from '@ohos.hilog';
import { BusinessError } from '@ohos.base'
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import appManager from '@ohos.app.ability.appManager';
import missionManager from '@ohos.app.ability.missionManager';


// no permission.
const NOT_PERMISSION = 201;
//parameter error
const PARAMETER_ERROR = 401


export default function ARPEINoPermissionTest() {
  describe('ARPEINoPermissionTest', () => {
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
    * @tc.number:SUB_Ability_AbilityRuntime_Permission_ExternalInterfaces_0600
    * @tc.name: TestAbilityAbilityRuntimePermissionExternalInterfaces0600
    * @tc.desc:Using the on method permission external interfaces 201 code
    * @tc.level:Level 3
    * @tc.type:Function
    * @tc.size:MediumTest
    */
    it('TestAbilityAbilityRuntimePermissionExternalInterfaces0600', 0, async (done: Function) => {
      hilog.info(0x0000, 'appManagerExternalInterfaces', '%{public}s',
        'TestAbilityAbilityRuntimePermissionExternalInterfaces0600 begin');
      try {
        let bundleName = 'bundleName';
        let accountId = 0;
        appManager.killProcessWithAccount(bundleName, accountId).then((data) => {
          hilog.info(0x0000, 'appManagerExternalInterfaces', '%{public}s',
            'TestAbilityAbilityRuntimePermissionExternalInterfaces0600 success');
          expect().assertFail();
          done();
        }).catch((error: BusinessError) => {
          hilog.error(0x0000, 'appManagerExternalInterfaces', '%{public}s',
            'TestAbilityAbilityRuntimePermissionExternalInterfaces0600 1 failed ' + JSON.stringify(error));
          expect(error.code).assertEqual(201);
          done();
        });
      } catch (error) {
        hilog.error(0x0000, 'appManagerExternalInterfaces', '%{public}s',
          'TestAbilityAbilityRuntimePermissionExternalInterfaces0600 2 failed ' + JSON.stringify(error));
        expect(error.code).assertEqual(201);
        done();
      }
    });

    /*
     * @tc.number:SUB_Ability_AbilityRuntime_Permission_ExternalInterfaces_1100
     * @tc.name: TestAbilityAbilityRuntimePermissionExternalInterfaces1100
     * @tc.desc:Using the on method permission external interfaces 201 code
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('TestAbilityAbilityRuntimePermissionExternalInterfaces1100', 0, async (done: Function) => {
      hilog.info(0x0000, 'appManagerExternalInterfaces', '%{public}s',
        'TestAbilityAbilityRuntimePermissionExternalInterfaces1100 begin');
      try {
        missionManager.getMissionInfo('', 1, (error, data) => {
          if (error) {
            hilog.info(0x0000, 'appManagerExternalInterfaces', '%{public}s',
              'TestAbilityAbilityRuntimePermissionExternalInterfaces1100 failed ' + JSON.stringify(error));
            expect(Number(error.code)).assertEqual(NOT_PERMISSION);
            done();
          } else {
            hilog.error(0x0000, 'appManagerExternalInterfaces', '%{public}s',
              'TestAbilityAbilityRuntimePermissionExternalInterfaces1100 success');
            expect().assertFail();
            done();
          }
        });
      } catch (error) {
        hilog.error(0x0000, 'appManagerExternalInterfaces', '%{public}s',
          'TestAbilityAbilityRuntimePermissionExternalInterfaces1100 failed ' + JSON.stringify(error));
        expect(error.code).assertEqual(NOT_PERMISSION);
        done();
      }
    });
  });
}