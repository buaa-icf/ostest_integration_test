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

export default function ArkUITabsIconStyleSelectedColor() {

  describe('ArkUITabsIconStyleSelectedColor', () => {

    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_027
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_027
        * @tc.desc    selectedColor: 0xFFFFFFFFFFFFFFFF
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_027', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_027 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor027")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_027 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_029
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_029
        * @tc.desc    selectedColor: null
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_029', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_029 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor029")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_029 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_028
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_028
        * @tc.desc    selectedColor: undefined
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_028', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_028 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor028")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_028 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_024
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_024
        * @tc.desc    selectedColor: "rgba(255,100,255,0.5)"
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_024', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_024 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor024")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_024 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_026
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_026
        * @tc.desc    selectedColor:$r("sys.color.toast_outer_border_color")
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_026', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_026 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor026")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_026 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_025
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_025
        * @tc.desc    selectedColor: $r("sys.color.titlebar_title_tertiary_color")
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_025', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_025 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor025")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_025 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_014
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_014
        * @tc.desc    selectedColor: 0x808080
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_014', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_014 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor014")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_014 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_013
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_013
        * @tc.desc    selectedColor: 0xa52a2a
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_013', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_013 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor013")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_013 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_001
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_001
        * @tc.desc    selectedColor: Color.Black
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_001', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_001 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor001")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_001 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_004
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_004
        * @tc.desc    selectedColor: Color.Gray
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_004', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_004 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor004")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_004 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_008
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_008
        * @tc.desc    selectedColor: Color.Red
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_008', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_008 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor008")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_008 finish.`);
      done()
    })
    /*
        * @tc.number  ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_022
        * @tc.name    ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_022
        * @tc.desc    selectedColor: “#ff000000"
    */
    it('ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_022', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_022 start.`);
      Settings.createWindow("testability/pages/ArkUITabsIconStyleSelectedColor/ArkUITabsIconStyleSelectedColor022")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `ARKUI_TABS_ICONSTYLE_SELECTEDCOLOR_022$ finish.`);
      done()
    })
  })
}
