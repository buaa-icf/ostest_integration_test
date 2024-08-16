import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { fileIo, fileUri } from '@kit.CoreFileKit';
import { fileIo as fs } from '@kit.CoreFileKit';
import { abilityDelegatorRegistry } from '@kit.TestKit';
import { BusinessError } from '@kit.BasicServicesKit';
import { uriPermissionManager, wantConstant } from '@kit.AbilityKit';

const delegator = abilityDelegatorRegistry.getAbilityDelegator();
let pathDir = delegator.getAppContext().filesDir;
let uri: string = "";

export default function uriAuthorizationAndRevocationTest() {
  describe('UriAuthorizationAndRevocationTest', () => {
    // Defines a test suite. Two parameters are supported: test suite name and test suite function.
    beforeAll(async () => {
      // Presets an action, which is performed only once before all test cases of the test suite start.
      // This API supports only one parameter: preset action function.
      let path = pathDir + '/test.txt';
      let isExists = await fs.access(path);
      if (!isExists) {
        await fs.open(path, fs.OpenMode.CREATE)
          .then(() => {
            console.log("beforeAll: " + "mkdir succeed");
          })
          .catch((err: BusinessError) => {
            console.log("beforeAll: " + "mkdir error: " + err.message);
          })
      }
      uri = fileUri.getUriFromPath(path);
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
    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3000', 0, async (done: Function) => {
      console.log("AuthorizationAndRevocation_3000: " + `uri: ${uri}`);
      let targetBundleName = 'com.example.test_case1'
      try {
        uriPermissionManager.grantUriPermission(uri, 100, targetBundleName, (result) => {
          console.log("AuthorizationAndRevocation_3000, grantUriPermission error: " + result.code);
          expect(result.code).assertEqual(16000058);
          done();
        });
      } catch (e) {
        console.log("AuthorizationAndRevocation_3000: " + `grantUriPermission failed: ${JSON.stringify(e)}`);
      }
    })

    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3100', 0, async (done: Function) => {
      let targetBundleName = 'com.example.test_case1'
      try {
        uriPermissionManager.grantUriPermission(undefined, wantConstant.Flags.FLAG_AUTH_READ_URI_PERMISSION,
          targetBundleName, (result) => {
          });
      } catch (e) {
        console.log("AuthorizationAndRevocation_3100: " + `grantUriPermission failed: ${JSON.stringify(e)}`);
        expect(e.code).assertEqual(401);
        done();
      }
    })

    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3200', 0, async (done: Function) => {
      console.log("AuthorizationAndRevocation_3200: " + `uri: ${uri}`);
      let targetBundleName = 'com.example.test_case1'
      try {
        uriPermissionManager.grantUriPermission(uri, wantConstant.Flags.FLAG_AUTH_READ_URI_PERMISSION, targetBundleName,
          (result) => {
            console.log("AuthorizationAndRevocation_3200, grantUriPermission error: " + result.code);
            expect(result.code).assertEqual(16000050);
            done();
          });
      } catch (e) {
        console.log("AuthorizationAndRevocation_3200: " + `grantUriPermission failed: ${JSON.stringify(e)}`);
      }
    })

    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3300', 0, async (done: Function) => {
      let targetBundleName = 'ohos.telephony.resources'
      try {
        uriPermissionManager.grantUriPermission(uri + ".1.txt",
          wantConstant.Flags.FLAG_AUTH_READ_URI_PERMISSION, targetBundleName, (result) => {
            console.log("AuthorizationAndRevocation_3300, grantUriPermission error: " + JSON.stringify(result));
            expect(result.code).assertEqual(16000050);
            done();
          });
      } catch (e) {
        console.log("AuthorizationAndRevocation_3300: " + `grantUriPermission failed: ${JSON.stringify(e)}`);
      }
    })

    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3400', 0, async (done: Function) => {
      let targetBundleName = 'com.example.test_case1'
      try {
        uriPermissionManager.revokeUriPermission(undefined, targetBundleName, (result) => {
        });
      } catch (e) {
        console.log("AuthorizationAndRevocation_3400: " + `grantUriPermission failed: ${JSON.stringify(e)}`);
        expect(e.code).assertEqual(401);
        done();
      }
    })

    // it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3500', 0, async (done: Function) => {
    //   console.log("AuthorizationAndRevocation_3500: " + `uri: ${uri}`);
    //   let targetBundleName = 'com.ohos.bundleerr'
    //   try {
    //     uriPermissionManager.revokeUriPermission(uri, targetBundleName, (result) => {
    //       console.log("AuthorizationAndRevocation_3500, revokeUriPermission error: " + result.code);
    //       expect(result.code).assertEqual(16000050);
    //       done();
    //     });
    //   } catch (e) {
    //     console.log("AuthorizationAndRevocation_3500: " + `revokeUriPermission failed: ${JSON.stringify(e)}`);
    //   }
    // })

    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3600', 0, async (done: Function) => {
      console.log("AuthorizationAndRevocation_3600: " + `uri: ${uri}`);
      let targetBundleName = 'ohos.telephony.resources'
      try {
        uriPermissionManager.revokeUriPermission(uri + ".1.txt", targetBundleName, (revokerResult) => {
          console.log("AuthorizationAndRevocation_3600, revokeUriPermission error: " + JSON.stringify(revokerResult));
          expect(revokerResult).assertEqual(null);
          done();
        });
      } catch (e) {
        console.log("AuthorizationAndRevocation_3600: " + `revokeUriPermission failed: ${JSON.stringify(e)}`);
      }
    })

    it('SUB_Ability_AbilityRuntime_Uri_AuthorizationAndRevocation_3700', 0, async (done: Function) => {
      console.log("AuthorizationAndRevocation_3700: " + `uri: ${uri}`);
      let targetBundleName = 'ohos.telephony.resources'
      try {
        uriPermissionManager.revokeUriPermission(uri + ".1.txt", targetBundleName, (revokerResult) => {
          console.log("AuthorizationAndRevocation_3700, revokeUriPermission error: " + JSON.stringify(revokerResult));
          if (revokerResult === null) {
            uriPermissionManager.revokeUriPermission(uri + ".1.txt", targetBundleName, (reRevokerResult) => {
              console.log("AuthorizationAndRevocation_3700, reRevokeUriPermission error: " + JSON.stringify(reRevokerResult));
              expect(reRevokerResult).assertEqual(null);
              done();
            });
          } else {
            expect().assertFail();
          }
        });
      } catch (e) {
        console.log("AuthorizationAndRevocation_3600: " + `revokeUriPermission failed: ${JSON.stringify(e)}`);
      }
    })
  })
}