/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Component, Driver ,ON } from '@ohos.UiTest'

export default function UIComponentNavTabsEdgeeffect() {

  describe('UIComponentNavTabsEdgeeffect', () => {

    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0230
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0230
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsEdgeeffect/UIComponentNavTabsEdgeeffect0230")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0230 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0270
        * @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0270
        * @tc.desc    nav width
    */
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsEdgeeffect/UIComponentNavTabsEdgeeffect0270")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_EDGEEFFECT_0270 finish.`);
      done()
    })
  })
}
