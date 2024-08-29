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
import { BusinessError } from '@ohos.base';
import { beforeAll, describe, expect, it } from '@ohos/hypium';
import common from '@ohos.app.ability.common';
import Want from '@ohos.app.ability.Want';
import installer from '@ohos.bundle.installer';

let context: common.UIAbilityContext;

export default function ARPEISystemBasicPermissionTest() {
  describe('ARPEISystemBasicPermissionTest', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(() => {
      context = AppStorage.get<common.UIAbilityContext>('TestAbilityContext') as common.UIAbilityContext;
    })

    /*
     * @tc.number:SUB_Ability_AbilityRuntime_Permission_ExternalInterfaces_5100
     * @tc.name: TestAbilityAbilityRuntimePermissionExternalInterfaces5100
     * @tc.desc:Using the on method permission is system basic
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('TestAbilityAbilityRuntimePermissionExternalInterfaces5100', 0, async (done: Function) => {
      hilog.info(0x0000, 'appManagerExternalInterfaces', '%{public}s',
        'TestAbilityAbilityRuntimePermissionExternalInterfaces5100 begin');
      let want: Want = {
        bundleName: 'com.hits.external.demo',
        abilityName: 'com.hits.external.demo.MainAbility'
      };
      let accountId = 100;

      try {
        if (context != undefined) {
          context.startAbilityWithAccount(want, accountId, (err: BusinessError) => {
            if (err.code) {
              hilog.error(0x0000, 'appManagerExternalInterfaces', '%{public}s',
                'TestAbilityAbilityRuntimePermissionExternalInterfaces5100 failed ' + JSON.stringify(err));
              expect().assertFail();
              done();
            } else {
              hilog.info(0x0000, 'appManagerExternalInterfaces', '%{public}s',
                'TestAbilityAbilityRuntimePermissionExternalInterfaces5100 succeed');
              expect(true).assertTrue();
              done();
            }
          });
        } else {
          hilog.error(0x0000, 'appManagerExternalInterfaces', '%{public}s',
            'TestAbilityAbilityRuntimePermissionExternalInterfaces5100 get context failed');
          expect().assertFail();
          done();
        }

      } catch (error) {
        hilog.error(0x0000, 'appManagerExternalInterfaces', '%{public}s',
          'TestAbilityAbilityRuntimePermissionExternalInterfaces5100 failed ' + JSON.stringify(error));
        expect().assertFail();
        done();
      }
    });
  });
}