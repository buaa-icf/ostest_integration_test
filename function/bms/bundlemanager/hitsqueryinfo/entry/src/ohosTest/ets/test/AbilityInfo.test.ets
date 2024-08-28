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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import bundleManager from '@ohos.bundle.bundleManager';
import Want from '@ohos.app.ability.Want';

const TAG = "AbilityInfoTest "

function sleep(ms: number) {
  console.info(TAG + "Entering sleep -> Promise constructor");
  return new Promise<void>(resolve => setTimeout(resolve, ms));
}

export default function AbilityInfoTest() {
  describe('AbilityInfoTest', () => {
    beforeAll(async (done: Function) => {
      console.info(TAG + 'beforeAll case');
      // await sleep(6000)
      done()
    });
    beforeEach(() => {
      console.info(TAG + 'beforeEach case');
    });
    afterEach(() => {
      console.info(TAG + 'afterEach case');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AbilityInfo_9280
     * @tc.name: queryAbilityInfo
     * @tc.desc: invoke the queryAbilityInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AbilityInfo_9280', 0, async (done: Function) => {
      let want: Want = {
        "action": "ohos.want.action.sendData",
        "parameters": {
          "ability.picker.summary": {
            "totalCount": 6,
            "summary": {
              "general.jpeg": 2,
              "general.plain-text": 1,
              "general.html": 3
            }
          }
        }
      };

      let abilityFlags = bundleManager.AbilityFlag.GET_ABILITY_INFO_DEFAULT;
      try {
        console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9280 START');
        bundleManager.queryAbilityInfo(want, abilityFlags, (err, data) => {
          if (err) {
            console.info(TAG + 'queryAbilityInfo failed: ', err.message);
            expect(false).assertTrue()
            done()
          } else {
            console.info(TAG + 'queryAbilityInfo successfull1y: ', JSON.stringify(data));
            let ability2 = data.find(item => item.name === 'EntryAbility2')
            console.info(TAG + 'queryAbilityInfo successfully: ', JSON.stringify(ability2));
            expect(ability2 != undefined).assertTrue()
            done()
          }
        });
      } catch (err) {
        console.error(TAG + 'queryAbilityInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9280 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AbilityInfo_9300
     * @tc.name: queryAbilityInfo
     * @tc.desc: invoke the queryAbilityInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AbilityInfo_9300', 0, async (done: Function) => {
      let want: Want = {
        "action": "ohos.want.action.sendData",
        "parameters": {
          "ability.picker.summary": {
            "totalCount": 6,
            "summary": {
              "general.image": 2,
              "general.plain-text": 1,
              "general.html": 3
            }
          }
        }
      };

      let abilityFlags = bundleManager.AbilityFlag.GET_ABILITY_INFO_DEFAULT;
      try {
        console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9300 START');
        bundleManager.queryAbilityInfo(want, abilityFlags, (err, data) => {
          if (err) {
            console.info(TAG + 'queryAbilityInfo failed: ', err.message);
            expect(false).assertTrue()
            done()
          } else {
            let ability3 = data.find(item => item.name === 'EntryAbility3')
            console.info(TAG + 'queryAbilityInfo successfully: ', JSON.stringify(ability3));
            expect(ability3 != undefined && ability3 != null).assertTrue()
            done()
          }
        });
      } catch (err) {
        console.error(TAG + 'queryAbilityInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9300 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AbilityInfo_9320
     * @tc.name: queryAbilityInfo
     * @tc.desc: invoke the queryAbilityInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AbilityInfo_9320', 0, async (done: Function) => {
      let want: Want = {
        "action": "ohos.want.action.sendData",
        "parameters": {
          "ability.picker.summary": {
            "totalCount": 6,
            "summary": {
              "general.jpeg": 2,
              "general.plain-text": 1,
              "general.html": 3
            }
          }
        }
      };

      let abilityFlags = bundleManager.AbilityFlag.GET_ABILITY_INFO_DEFAULT;
      try {
        console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9320 START');
        bundleManager.queryAbilityInfo(want, abilityFlags, (err, data) => {
          if (err) {
            console.info(TAG + 'queryAbilityInfo failed: ', err.message);
            expect(false).assertTrue()
            done()
          } else {
            let ability3 = data.find(item => item.name === 'EntryAbility4')
            console.info(TAG + 'queryAbilityInfo successfully: ', JSON.stringify(ability3));
            expect(ability3 != undefined).assertTrue()
            done()
          }
        });
      } catch (err) {
        console.error(TAG + 'queryAbilityInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9320 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AbilityInfo_9480
     * @tc.name: queryExtensionAbilityInfo
     * @tc.desc: invoke the queryExtensionAbilityInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AbilityInfo_9480', 0, async (done: Function) => {
      let want: Want = {
        "action": "ohos.want.action.sendData",
        "parameters": {
          "ability.picker.summary": {
            "totalCount": 6,
            "summary": {
              "general.jpeg": 2,
              "general.plain-text": 1,
              "general.html": 3
            }
          },
        }
      };

      let extensionAbilityType = bundleManager.ExtensionAbilityType.FORM;
      let extensionFlags = bundleManager.ExtensionAbilityFlag.GET_EXTENSION_ABILITY_INFO_DEFAULT;
      try {
        console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9480 START');
        bundleManager.queryExtensionAbilityInfo(want, extensionAbilityType, extensionFlags, (err, data) => {
          if (err) {
            console.info(TAG + 'queryExtensionAbilityInfo failed: ', err.message);
            expect(false).assertTrue()
            done()
          } else {
            console.info(TAG + 'testTag', 'queryExtensionAbilityInfo successfully: ', JSON.stringify(data));
            let ability3 = data.find(item => item.name === 'FormExtAbility')
            console.info(TAG + 'ability3 : ', JSON.stringify(ability3));
            expect(ability3 != undefined).assertTrue()
            done()
          }
        });
      } catch (err) {
        console.error(TAG + 'queryExtensionAbilityInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9480 END');
    });


    /**
     * @tc.number: Sub_Bms_Framework_Query_AbilityInfo_9500
     * @tc.name: queryExtensionAbilityInfo
     * @tc.desc: invoke the queryExtensionAbilityInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AbilityInfo_9500', 0, async (done: Function) => {
      let want: Want = {
        "action": "ohos.want.action.sendData",
        "parameters": {
          "ability.picker.summary": {
            "totalCount": 6,
            "summary": {
              "general.image": 2,
              "general.plain-text": 1,
              "general.html": 3
            }
          },
        }
      };

      let extensionAbilityType = bundleManager.ExtensionAbilityType.FORM;
      let extensionFlags = bundleManager.ExtensionAbilityFlag.GET_EXTENSION_ABILITY_INFO_DEFAULT;
      try {
        console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9500 START');
        bundleManager.queryExtensionAbilityInfo(want, extensionAbilityType, extensionFlags, (err, data) => {
          if (err) {
            console.info(TAG + 'queryExtensionAbilityInfo failed: ', err.message);
            expect(false).assertTrue()
            done()
          } else {
            console.info(TAG + 'testTag', 'queryExtensionAbilityInfo successfully: ', JSON.stringify(data));
            let ability3 = data.find(item => item.name === 'FormExtAbility2')
            console.info(TAG + 'ability3: ', JSON.stringify(ability3));
            expect(ability3 != undefined).assertTrue()
            done()
          }
        });
      } catch (err) {
        console.error(TAG + 'queryExtensionAbilityInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9500 END');
    });

    /**
     * @tc.number: Sub_Bms_Framework_Query_AbilityInfo_9520
     * @tc.name: queryExtensionAbilityInfo
     * @tc.desc: invoke the queryExtensionAbilityInfo
     * @tc.size   : MediumTest
     * @tc.type   : Function
     * @tc.level  : Level 1
     */
    it('Sub_Bms_Framework_Query_AbilityInfo_9520', 0, async (done: Function) => {
      let want: Want = {
        "action": "ohos.want.action.sendData",
        "parameters": {
          "ability.picker.summary": {
            "totalCount": 6,
            "summary": {
              "general.jpeg": 2,
              "general.plain-text": 1,
              "general.html": 3
            }
          },
        }
      };

      let extensionAbilityType = bundleManager.ExtensionAbilityType.FORM;
      let extensionFlags = bundleManager.ExtensionAbilityFlag.GET_EXTENSION_ABILITY_INFO_DEFAULT;
      try {
        console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9520 START');
        bundleManager.queryExtensionAbilityInfo(want, extensionAbilityType, extensionFlags, (err, data) => {
          if (err) {
            console.info(TAG + 'queryExtensionAbilityInfo failed: ', err.message);
            expect(false).assertTrue()
            done()
          } else {
            console.info(TAG + 'testTag', 'queryExtensionAbilityInfo successfully: ', JSON.stringify(data));
            let ability3 = data.find(item => item.name === 'FormExtAbility3')
            console.info(TAG + 'ability3: ', JSON.stringify(ability3));
            expect(ability3 != undefined).assertTrue()
            done()
          }
        });
      } catch (err) {
        console.error(TAG + 'queryExtensionAbilityInfo failed. Cause:', JSON.stringify(err));
        expect(false).assertTrue()
        done()
      }
      console.info(TAG + 'Sub_Bms_Framework_Query_AbilityInfo_9520 END');
    });
  })

}