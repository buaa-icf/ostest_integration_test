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
import { describe, expect, it } from '@ohos/hypium';
import { BusinessError } from '@ohos.base';
import appManager from '@ohos.app.ability.appManager';
import abilityManager from '@ohos.app.ability.abilityManager';

export default function shareAcquireShareDataNormal() {
  describe('shareAcquireShareDataNormal', () => {
   /*
     * @tc.number:SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2200
     * @tc.name: SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2200
     * @tc.desc:When the application does not have permission, call killProcessesByBundleName to stop itself (Promise)
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2200', 0, async (done: Function) => {
      hilog.info(0x0000, 'applicationContextTag', '%{public}s',
       'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2200 begin');
      try {
        let bundleName = 'com.hits';
        appManager.killProcessesByBundleName(bundleName).then((data:ESObject) => {
          console.log('------------ killProcessesByBundleName success ------------', data);
          expect(false).assertTrue();
          done();
        }).catch((err: BusinessError) => {
            console.error('------------ catch killProcessesByBundleName fail ------------', JSON.stringify(err));
            expect(err.code).assertEqual(202);
            done();
          });
      } catch (error) {
        hilog.error(0x0000, 'applicationContextTag', '%{public}s',
         'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2200 failed ' + JSON.stringify(error));
        console.error('------------ killProcessesByBundleName fail ------------', error);
        expect(false).assertTrue();
        done();
      }
    });

    /*
     * @tc.number:SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2300
     * @tc.name: SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2300
     * @tc.desc:When the application does not have permission, call clearUpApplicationData to clear itself (Promise)
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2300', 0, async (done: Function) => {
      hilog.info(0x0000, 'applicationContextTag', '%{public}s',
       'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2300 begin');
      try {
        let bundleName = 'com.hits';
        appManager.clearUpApplicationData(bundleName).then((data:ESObject) => {
          console.log('------------ clearUpApplicationData success ------------', data);
          expect(false).assertTrue();
          done();
        }).catch((err: BusinessError) => {
          console.error('------------ catch clearUpApplicationData fail ------------', JSON.stringify(err));
          expect(err.code).assertEqual(202);
          done();
        });
      } catch (error) {
        hilog.error(0x0000, 'applicationContextTag', '%{public}s',
         'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_2300 failed ' + JSON.stringify(error));
        console.error('------------ clearUpApplicationData fail ------------', error);
        expect(false).assertTrue();
        done();
      }
    });

    /*
     * @tc.number:SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3100
     * @tc.name: SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3100
     * @tc.desc:When the application does not have permission, call killProcessesByBundleName to stop itself (Promise)
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3100', 0, async (done: Function) => {
      hilog.info(0x0000, 'applicationContextTag', '%{public}s',
       'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3100 begin');
      try {
        abilityManager.acquireShareData(1, (err: BusinessError, wantParam: Record<string, Object>) => {
          if (err) {
            console.error(`acquireShareData fail, err: ${JSON.stringify(err)}`);
            expect(err.code).assertEqual(202);
            done();
          } else {
            expect(false).assertTrue();
            done();
            console.log(`acquireShareData success, data: ${JSON.stringify(wantParam)}`);
          }
        });
      } catch (paramError) {
        let code: number = (paramError as BusinessError).code;
        let message: string = (paramError as BusinessError).message;
        console.error(`error.code: ${code}, error.message: ${message}`);
        expect(code).assertEqual(202);
        done();
      }
    });
  });
}
