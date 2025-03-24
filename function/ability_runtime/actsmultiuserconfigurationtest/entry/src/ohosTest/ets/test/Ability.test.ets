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
import uiAppearance from '@ohos.uiAppearance'
import { BusinessError } from '@ohos.base';

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
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0100
     * @tc.name    Call the setDarkMode API and pass the parameter darkMode as null, and a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0100', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0100';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setDarkMode(null)
          .then(() => {
            console.info(`[${TAG}] Set dark-mode successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual(401);
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0200
     * @tc.name    Call the setDarkMode API and pass the parameter darkMode as undefined, and a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0200', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0200';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setDarkMode(undefined)
          .then(() => {
            console.info(`[${TAG}] Set dark-mode successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual(401);
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0300
     * @tc.name    Call the setDarkMode API, set the darkMode parameter to uiAppearance.DarkMode.ALWAYS_LIGHT and uiAppearance.DarkMode.ALWAYS_DARK, to set the theme as dark and light, switch between them to test
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0300', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0300';
      try {
        for (let i = 0; i < 5; i++) {
          await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT)
            .then(() => {
              console.info(`[${TAG}] Set light-mode successfully.in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] error setting light-mode in ${i}th iteration.: ${JSON.stringify(error)}`);
            })
          let darkMode = uiAppearance.getDarkMode();
          expect(darkMode).assertEqual(uiAppearance.DarkMode.ALWAYS_LIGHT);
          await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK)
            .then(() => {
              console.info(`[${TAG}] Set dark-mode successfully in ${i}th iteration..`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] error setting dark-mode in ${i}th iteration.: ${JSON.stringify(error)}`);
            })
          darkMode = uiAppearance.getDarkMode();
          expect(darkMode).assertEqual(uiAppearance.DarkMode.ALWAYS_DARK);
        }
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0400
     * @tc.name    Call the setFontScale API and set the fontScale parameter to 0, a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0400', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0400';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setFontScale(0)
          .then(() => {
            console.info(`[${TAG}] Set fontScale successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual('401');
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0500
     * @tc.name    Call the setFontScale API and set the fontScale parameter to a negative number, a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0500', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0500';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setFontScale(-1)
          .then(() => {
            console.info(`[${TAG}] Set fontScale successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual('401');
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0600
     * @tc.name    Call the setFontScale API and set the fontScale parameter to null, a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0600', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0600';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setFontScale(null)
          .then(() => {
            console.info(`[${TAG}] Set fontScale successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual('401');
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0700
     * @tc.name    Call the setFontScale API and set the fontScale parameter to undefined, a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0700', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0700';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setFontScale(undefined)
          .then(() => {
            console.info(`[${TAG}] Set fontScale successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual('401');
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0800
     * @tc.name    Call the setFontScale API and set the fontScale parameter to 0.85
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0800', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0800';
      try {
        for (let i = 0; i < 5; i++) {
          await uiAppearance.setFontScale(0.85)
            .then(() => {
              console.info(`[${TAG}] Set fontScale successfully in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] error in ${i}th iteration: ${JSON.stringify(error)}`);
            })
          let fontScale = uiAppearance.getFontScale();
          console.info(`[${TAG}] fontScale in ${i}th iteration: ${fontScale}`);
          expect(fontScale).assertEqual(0.85);
        }
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_0900
     * @tc.name    Call the setFontScale API and set the fontScale parameter to 1.3
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_0900', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_0900';
      try {
        for (let i = 0; i < 5; i++) {
          await uiAppearance.setFontScale(1.3)
            .then(() => {
              console.info(`[${TAG}] Set fontScale successfully in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] error in ${i}th iteration: ${JSON.stringify(error)}`);
            })
          let fontScale = uiAppearance.getFontScale();
          console.info(`[${TAG}] fontScale in ${i}th iteration: ${fontScale}`);
          expect(fontScale).assertEqual(1.3);
        }
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_1000
     * @tc.name    Call the setFontScale API and set the fontScale parameter to 1.3 and 0.85, and switch between them to test
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_1000', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_1000';
      try {
        for (let i = 0; i < 5; i++) {
          await uiAppearance.setFontScale(1.3)
            .then(() => {
              console.info(`[${TAG}] Set fontScale successfully in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] error in ${i}th iteration: ${JSON.stringify(error)}`);
            })
          let fontScale = uiAppearance.getFontScale();
          console.info(`[${TAG}] fontScale in ${i}th iteration: ${fontScale}`);
          expect(fontScale).assertEqual(1.3);
          await uiAppearance.setFontScale(0.85)
            .then(() => {
              console.info(`[${TAG}] Again. Set fontScale successfully in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] Again. error in ${i}th iteration: ${JSON.stringify(error)}`);
            })
          fontScale = uiAppearance.getFontScale();
          console.info(`[${TAG}] Again. fontScale in ${i}th iteration: ${fontScale}`);
          expect(fontScale).assertEqual(0.85);
        }
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_1100
     * @tc.name    Call the setFontWeightScale API and set the fontWeightScale parameter to 0, a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_1100', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_1100';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setFontWeightScale(0)
          .then(() => {
            console.info(`[${TAG}] Set fontWeightScale successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual('401');
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_1200
     * @tc.name    Call the setFontWeightScale API and set the fontWeightScale parameter to a negative number, a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_1200', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_1200';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setFontWeightScale(-1)
          .then(() => {
            console.info(`[${TAG}] Set fontWeightScale successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual('401');
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_1300
     * @tc.name    Call the setFontWeightScale API and set the fontWeightScale parameter to null, a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_1300', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_1300';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setFontWeightScale(null)
          .then(() => {
            console.info(`[${TAG}] Set fontWeightScale successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual('401');
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_1400
     * @tc.name    Call the setFontWeightScale API and set the fontWeightScale parameter to undefined, a 401 error code is returned
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_1400', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_1400';
      try {
        let errCode = {} as BusinessError;
        await uiAppearance.setFontWeightScale(undefined)
          .then(() => {
            console.info(`[${TAG}] Set fontWeightScale successfully.`);
          })
          .catch((error: BusinessError) => {
            console.error(`[${TAG}] error: ${JSON.stringify(error)}`);
            errCode = error;
          })
        expect(errCode.code).assertEqual('401');
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_1500
     * @tc.name    Call the setFontWeightScale API and set the fontWeightScale parameter to 0.75
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_1500', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_1500';
      try {
        for (let i = 0; i < 5; i++) {
          await uiAppearance.setFontWeightScale(0.75)
            .then(() => {
              console.info(`[${TAG}] Set fontWeightScale successfully in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] error in ${i}th iteration: ${JSON.stringify(error)}`);
            })
          let fontScale = uiAppearance.getFontWeightScale();
          console.info(`[${TAG}] fontWeightScale in ${i}th iteration: ${fontScale}`);
          expect(fontScale).assertEqual(0.75);
        }
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_1600
     * @tc.name    Call the setFontWeightScale API and set the fontWeightScale parameter to 1.5
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_1600', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_1600';
      try {
        for (let i = 0; i < 5; i++) {
          await uiAppearance.setFontWeightScale(1.5)
            .then(() => {
              console.info(`[${TAG}] Set fontWeightScale successfully in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] error in ${i}th iteration: ${JSON.stringify(error)}`);
            })
          let fontScale = uiAppearance.getFontWeightScale();
          console.info(`[${TAG}] fontWeightScale in ${i}th iteration: ${fontScale}`);
          expect(fontScale).assertEqual(1.5);
        }
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

    /*
     * @tc.number  SUB_Ability_AbilityRuntime_MultiUserConfiguration_1700
     * @tc.name    Call the setFontWeightScale API and set the fontWeightScale parameter to 1.5 and 0.75, switch between them to test
     * @tc.desc    Function test
     * @tc.level   0
     */
    it('SUB_Ability_AbilityRuntime_MultiUserConfiguration_1700', 0, async (done: Function) => {
      TAG = 'SUB_Ability_AbilityRuntime_MultiUserConfiguration_1700';
      try {
        for (let i = 0; i < 5; i++) {
          await uiAppearance.setFontWeightScale(1.5)
            .then(() => {
              console.info(`[${TAG}] Set fontWeightScale successfully in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] error in ${i}th iteration: ${JSON.stringify(error)}`);
            })
          let fontScale = uiAppearance.getFontWeightScale();
          console.info(`[${TAG}] fontWeightScale in ${i}th iteration: ${fontScale}`);
          expect(fontScale).assertEqual(1.5);
          await uiAppearance.setFontWeightScale(0.75)
            .then(() => {
              console.info(`[${TAG}] Again. Set fontWeightScale successfully in ${i}th iteration.`);
            })
            .catch((error: BusinessError) => {
              console.error(`[${TAG}] Again. error in ${i}th iteration: ${JSON.stringify(error)}`);
            })
          fontScale = uiAppearance.getFontWeightScale();
          console.info(`[${TAG}] Again. fontWeightScale in ${i}th iteration: ${fontScale}`);
          expect(fontScale).assertEqual(0.75);
        }
      } catch (paramError) {
        console.error(`[${TAG}] paramError: ${JSON.stringify(paramError)}`);
        expect().assertFail();
      } finally {
        done();
      }
    })

  })
}