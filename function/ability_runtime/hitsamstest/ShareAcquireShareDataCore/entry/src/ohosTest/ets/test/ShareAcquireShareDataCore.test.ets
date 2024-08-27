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

export default function shareAcquireShareDataCore() {
  describe('shareAcquireShareDataCore', () => {
     /*
     * @tc.number:SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3200
     * @tc.name: SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3200
     * @tc.desc:System application clearUpApplicationData(null)(AsyncCallback)
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3200', 0, async (done: Function) => {
      hilog.info(0x0000, 'applicationContextTag', '%{public}s',
       'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3200 begin');
      try {
        appManager.clearUpApplicationData(null, (data) => {
          console.log('------------ clearUpApplicationData success ------------', data);
          expect(false).assertTrue();
          done();
        })
      } catch (paramError) {
        let code: number = (paramError as BusinessError).code;
        let message: string = (paramError as BusinessError).message;
        console.error(`error.code: ${code}, error.message: ${message}`);
        expect(code).assertEqual(401);
        done();
      }
    });

    /*
     * @tc.number:SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3300
     * @tc.name: SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3300
     * @tc.desc:System application clearUpApplicationData(undefined)(AsyncCallback)
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3300', 0, async (done: Function) => {
      hilog.info(0x0000, 'applicationContextTag', '%{public}s',
       'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3300 begin');
      try {
        appManager.clearUpApplicationData(undefined, (data) => {
          console.log('------------ clearUpApplicationData success ------------', data);
          expect(true).assertTrue();
          done();
        })
      } catch (paramError) {
        let code: number = (paramError as BusinessError).code;
        let message: string = (paramError as BusinessError).message;
        console.error(`error.code: ${code}, error.message: ${message}`);
        expect(code).assertEqual(401);
        done();
      }
    });

    /*
     * @tc.number:SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3400
     * @tc.name: SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3400
     * @tc.desc:System application clearUpApplicationData('')(AsyncCallback)
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3400', 0, async (done: Function) => {
      hilog.info(0x0000, 'applicationContextTag', '%{public}s',
       'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3400 begin');
      try {
        appManager.clearUpApplicationData('', (data) => {
          console.log('------------ clearUpApplicationData success ------------', data);
          expect(true).assertTrue();
          done();
        })
      } catch (paramError) {
        let code: number = (paramError as BusinessError).code;
        let message: string = (paramError as BusinessError).message;
        console.error(`error.code: ${code}, error.message: ${message}`);
        expect(code).assertEqual(401);
        done();
      }
    });

    /*
     * @tc.number:SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3500
     * @tc.name: SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3500
     * @tc.desc:System application killProcessesByBundleName(null)(AsyncCallback)
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3500', 0, async (done: Function) => {
      hilog.info(0x0000, 'applicationContextTag', '%{public}s',
       'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3500 begin');
      try {
        appManager.killProcessesByBundleName(null).then((data: ESObject) => {
          console.log('------------ killProcessesByBundleName success ------------', data);
          expect(true).assertTrue();
          done();
        })
      } catch (paramError) {
        let code: number = (paramError as BusinessError).code;
        let message: string = (paramError as BusinessError).message;
        console.error(`error.code: ${code}, error.message: ${message}`);
        expect(code).assertEqual(401);
        done();
      }
    });

    /*
     * @tc.number:SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3600
     * @tc.name: SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3600
     * @tc.desc:System application killProcessesByBundleName(undefined)(AsyncCallback)
     * @tc.level:Level 3
     * @tc.type:Function
     * @tc.size:MediumTest
     */
    it('SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3600', 0, async (done: Function) => {
      hilog.info(0x0000, 'applicationContextTag', '%{public}s',
       'SUB_Ability_AbilityRuntime_AppManager_ShareAcquireShareData_3600 begin');
      try {
        appManager.killProcessesByBundleName(undefined).then((data: ESObject) => {
          console.log('------------ killProcessesByBundleName success ------------', data);
          expect(true).assertTrue();
          done();
        })
      } catch (paramError) {
        let code: number = (paramError as BusinessError).code;
        let message: string = (paramError as BusinessError).message;
        console.error(`error.code: ${code}, error.message: ${message}`);
        expect(code).assertEqual(401);
        done();
      }
    });
  });
}
