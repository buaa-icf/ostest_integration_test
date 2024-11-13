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

export default function ArkUITabsIconStyleUnselectedColor() {

  describe('ArkUITabsIconStyleUnselectedColor', () => {
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_026
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_026
        * @tc.desc  unselectedColor:0xFFFFFFFFFFFFFFFF
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_026', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_026 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor026")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_026 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_028
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_028
        * @tc.desc  unselectedColor: null
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_028', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_028 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor028")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_028 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_027
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_027
        * @tc.desc  unselectedColor: undefined
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_027', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_027 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor027")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_027 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_021
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_021
        * @tc.desc  unselectedColor: "#ff000000"
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_021', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_021 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor021")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_021 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_022
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_022
        * @tc.desc  unselectedColor: "rgb(255,100,255)"
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_022', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_022 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor022")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_022 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_024
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_024
        * @tc.desc  unselectedColor: $r("sys.color.toast_outer_border_color")
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_024', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_024 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor024")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_024 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_014
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_014
        * @tc.desc  unselectedColor: 0x008000
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_014', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_014 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor014")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_014 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_016
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_016
        * @tc.desc  unselectedColor: 0xffc0cb
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_016', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_016 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor016")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_016 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_029
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_029
        * @tc.desc  unselectedColor: Color.Black
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_029', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_029 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor029")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_029 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_002
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_002
        * @tc.desc  unselectedColor: Color.Brown
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_002', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_002 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor002")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_002 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_005
        * @tc.name    ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_005
        * @tc.desc  unselectedColor: Color.Orange
    */
    it('ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_005', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_005 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleUnselectedColor/ArkUITabsIconStyleUnselectedColor005")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_UNSELECTEDCOLOR_005 finish.`);
      done()
    })
  })
}
