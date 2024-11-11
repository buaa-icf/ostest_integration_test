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
import { Component, Driver, ON } from '@ohos.UiTest'

export default function ArkUITabsSingleUnselectedcolor() {

  describe('ArkUITabsSingleUnselectedcolor', () => {
    /*
        * @tc.number  ARKUI_TABS_SINGLE_UNSELECTEDCOLOR_003
        * @tc.name    ARKUI_TABS_SINGLE_UNSELECTEDCOLOR_003
        * @tc.desc  selectedColor: Color.Transparent
    */
    it('ARKUI_TABS_SINGLE_UNSELECTEDCOLOR_003', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_SINGLE_UNSELECTEDCOLOR_003 start.`);
      Settings.createWindow("testability/pages/ArkUITabsSingleUnselectedcolor/ArkUITabsSingleUnselectedcolor003")
      await Utils.sleep(2000)
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `ARKUI_TABS_SINGLE_UNSELECTEDCOLOR_003 finish.`);
      done()
    })
  })
}
