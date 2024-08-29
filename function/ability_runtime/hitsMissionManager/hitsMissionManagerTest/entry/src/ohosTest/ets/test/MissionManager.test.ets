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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import missionManager from '@ohos.app.ability.missionManager';
import { image } from '@kit.ImageKit';
import { BusinessError } from '@kit.BasicServicesKit';

const TAG: string = "MissionManagerTAG -----> ";

export default function missionManagerTest() {
  describe('MissionManagerTest', () => {
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
    it('SUB_Ability_AbilityRuntime_MissionManager_MissionTask_3800', 0, (done: Function) => {
      try {
        let listener: missionManager.MissionListener = {
          onMissionCreated: (mission: number) => {
            console.log('--------onMissionCreated-------');
          },
          onMissionDestroyed: (mission: number) => {
            console.log('--------onMissionDestroyed-------');
          },
          onMissionSnapshotChanged: (mission: number) => {
            console.log('--------onMissionSnapshotChanged-------');
          },
          onMissionMovedToFront: (mission: number) => {
            console.log('--------onMissionMovedToFront-------');
          },
          onMissionIconUpdated: (mission: number, icon: image.PixelMap) => {
            console.log('--------onMissionIconUpdated-------');
          },
          onMissionClosed: (mission: number) => {
            console.log('--------onMissionClosed-------');
          },
          onMissionLabelUpdated: (mission: number) => {
            console.log('--------onMissionLabelUpdated-------');
          }
        };
        missionManager.on('mission', listener);
        expect().assertFail();
        done();
      } catch (error) {
        console.log(TAG + ` on failed: ${JSON.stringify(error)}`);
        if (error.code === 202) {
          expect(true).assertTrue();
          done();
        }
      }
    })

    // it('SUB_Ability_AbilityRuntime_MissionManager_MissionTask_3900', 0, () => {
    //   missionManager.off('mission', 1, (err: BusinessError) => {
    //     if (!err) {
    //       console.log(TAG + ` off result: ${JSON.stringify(err)}`);
    //       expect().assertFail();
    //     } else {
    //       console.error(TAG + ` off failed: ${JSON.stringify(err)}`);
    //       expect(true).assertTrue();
    //     }
    //   });
    // })

    it('SUB_Ability_AbilityRuntime_MissionManager_MissionTask_3600', 0, async (done: Function) => {
      await missionManager.getMissionInfos('', 10)
        .then((data: Array<missionManager.MissionInfo>) => {
          console.info(TAG + `getMissionInfos successfully. Data: ${JSON.stringify(data)}`);
          expect().assertFail();
          done();
        })
        .catch((error: BusinessError) => {
          console.error(TAG + ` getMissionInfos error: ${JSON.stringify(error)}`);
          if (error.code === 202) {
            expect(true).assertTrue();
            done();
          }
        });
    })

    it('SUB_Ability_AbilityRuntime_MissionManager_MissionTask_3700', 0, async (done: Function) => {
      await missionManager.getMissionInfo('', 1)
        .then((data: missionManager.MissionInfo) => {
          console.info(TAG + `getMissionInfo successfully. Data: ${JSON.stringify(data)}`);
          expect().assertFail();
          done();
        })
        .catch((error: BusinessError) => {
          console.error(TAG + `getMissionInfo failed. Cause: ${JSON.stringify(error)}`);
          if (error.code === 202) {
            expect(true).assertTrue();
            done();
          }
        });
    })
    it('SUB_Ability_AbilityRuntime_MissionManager_MissionTask_8700', 0, async (done: Function) => {
      await missionManager.moveMissionToFront(1)
        .then(() => {
          console.info(TAG + `moveMissionToFront successfully.`);
          expect().assertFail();
          done();
        })
        .catch((e: BusinessError) => {
          console.info(TAG + `moveMissionToFront failed: ${JSON.stringify(e)}`);
          if(e.code === 202) {
            expect(true).assertTrue();
            done();
          }
        })
    })

  })
}