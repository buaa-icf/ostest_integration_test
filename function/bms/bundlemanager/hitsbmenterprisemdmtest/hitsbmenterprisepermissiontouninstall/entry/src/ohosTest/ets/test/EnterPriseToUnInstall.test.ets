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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import common from '@ohos.app.ability.common';
import installer from '@ohos.bundle.installer';
import { BusinessError } from '@ohos.base';
import Base from '@ohos.base';
import CommonEventManager from '@ohos.commonEventManager'


const NO_PERMISSION_ERROR_CODE = 201;
export default function enterPriseToUnInstall() {
  describe('EnterPriseToUnInstall', () => {
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
     * @tc.number: Sub_Bms_Framework_Enterprise_Mdm_1200
     * @tc.name: UseUnInstallBundlePermissionToUninstall
     * @tc.desc: Test the caller applied for the ohos.permission.UNINSTALL_BUNDLE permission to uninstall the  mdm application.
     * @tc.size MediumTest
     * @tc.type Function
     * @tc.level Level 3
     */
    it('UseUnInstallBundlePermissionToUninstall', 0, (done: Function) => {
      try {
        let bundleName = 'com.hits.mdm';
        installer.getBundleInstaller().then((data: installer.BundleInstaller) => {
          data.install(['/data/storage/el2/base/files/HitsBmMdmTest.hap'], (err: BusinessError) => {
            if (err) {
              console.error('install mdm failed:' + err.message);
              if (err.code === NO_PERMISSION_ERROR_CODE) {
                expect().assertFail()
                done()
              }
            } else {
              console.info('install mdm successfully.');
              installer.getBundleInstaller().then((data: installer.BundleInstaller) => {
                data.uninstall(bundleName, (err: BusinessError) => {
                  if (err) {
                    expect(err.code).assertEqual(NO_PERMISSION_ERROR_CODE)
                    console.error('uninstall failed:' + err.message);
                    done()
                  } else {
                    let bundleName = 'com.hits.mdm';
                    console.info('uninstall successfully.');
                    done()
                  }
                });
              }).catch((error: BusinessError) => {
                console.error('install mdm getBundleInstaller failed. Cause: ' + error.message);
                let bundleName = 'com.hits.mdm';
                done()
              });
            }
          });
        }).catch((error: BusinessError) => {
          console.error('install mdm getBundleInstaller failed. Cause: ' + error.message);
          let bundleName = 'com.hits.mdm';
          done()
        });
      } catch (error) {
        expect().assertFail()
        let message = (error as BusinessError).message;
        console.error('install mdm getBundleInstaller failed. Cause: ' + message);
        done()
      }
    })
  })
}