/*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { UiComponent, Component, Driver, ON, BY, MouseButton } from '@ohos.UiTest';

export default function UIComponentScrollSwiperLayout() {
  describe('UIComponentScrollSwiperLayout', () => {
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0010
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0010
    * @tc.desc        ADD SWIPER, main shaft, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0010")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0010 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0020
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0020
    * @tc.desc        ADD SWIPER, crossed-axis, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0020")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0020 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0030
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0030
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0030")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0030 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0040
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0040
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0040")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0040 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0050
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0050
    * @tc.desc        ADD SWIPER, crossed-axis, border = 10, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0050")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0050 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0060
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0060
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, border = 10, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0060")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0060 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0070
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0070
   * @tc.desc        ADD SWIPER, crossed-axis, padding = 10, displayCount = 3
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0070 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0070")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0070 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0080
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0080
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, padding = 10, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0080")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0080 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0090
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0090
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, prevMargin/nextMargin+itemSpace
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0090 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0090")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0090 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0100
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0100
    * @tc.desc        ADD SWIPER, main shaft, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0100")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0100 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0110
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0110
    * @tc.desc        ADD SWIPER, crossed-axis, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0110")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0110 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0120
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0120
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0120")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0120 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0130
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0130
   * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = AutoLinear
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0130")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0130 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0140
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0140
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayMode = AutoLinear, border = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0140")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0140 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0150
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0150
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = AutoLinear, border = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0150")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0150 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0160
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0160
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayMode = AutoLinear, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0160")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0160 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0170
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0170
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = AutoLinear, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0170")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0170 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0180
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0180
    * @tc.desc        ADD SWIPER, main shaft, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0180")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0180 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0190
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0190
    * @tc.desc        ADD SWIPER, crossed-axis, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0190")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0190 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0200
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0200
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0200")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0200 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0210
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0210
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0210")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0210 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0220
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0220
    * @tc.desc        ADD SWIPER, main shaft, displayMode = Stretch or displayCount = 1, border = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0220")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0220 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0230
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0230
   * @tc.desc        ADD SWIPER, crossed-axis, displayMode = Stretch or displayCount = 1, border = 10
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0230")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0230 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0240
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0240
    * @tc.desc        ADD SWIPER, main shaft, displayMode = Stretch or displayCount = 1, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0240")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0240 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0250
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0250
    * @tc.desc        ADD SWIPER, crossed-axis, displayMode = Stretch or displayCount = 1, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0250")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0250 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0260
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0260
    * @tc.desc        ADD SWIPER, main shaft, displayCount = 3, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0260")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0260 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0270
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0270
    * @tc.desc        ADD SWIPER, crossed-axis, displayCount = 3, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0270")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0270 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0280
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0280
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayCount = 3, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0280 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0280")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0280 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0290
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0290
   * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayCount = 3, width = 200
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0290")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0290 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0300
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0300
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayCount = 3, width = 200, border = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0300")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0300 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0310
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0310
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayCount = 3, width = 200, border = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0310 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0310")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0310 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0320
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0320
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayCount = 3, width = 200, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0320")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0320 finish.`);
      done()
    })
    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0330
  * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0330
  * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayCount = 3, width = 200, padding = 10
  */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0330 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0330")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0330 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0340
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0340
    * @tc.desc        ADD SWIPER, main shaft, width = 200, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0340")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0340 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0350
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0350
    * @tc.desc        ADD SWIPER, crossed-axis, width = 200, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0350")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0350 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0360
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0360
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, width = 200, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0360")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0360 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0370
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0370
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, width = 200, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0370 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0370")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0370 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0380
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0380
    * @tc.desc        ADD SWIPER, main shaft, width = 200, displayMode = AutoLinear, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0380")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0380 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0390
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0390
    * @tc.desc        ADD SWIPER, crossed-axis, width = 200, displayMode = AutoLinear, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0390")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0390 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0400
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0400
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, width = 200, displayMode = AutoLinear, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0400")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0400 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0410
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0410
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, width = 200, displayMode = AutoLinear, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0410 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0410")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0410 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0420
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0420
    * @tc.desc        ADD SWIPER, main shaft, width = 200, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0420 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0420")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0420 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0430
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0430
   * @tc.desc        ADD SWIPER, crossed-axis, width = 200, displayMode = Stretch or displayCount = 1
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0430 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0430")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0430 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0440
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0440
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, width = 200, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0440 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0440")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0440 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0450
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0450
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, width = 200, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0450 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0450")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0450 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0460
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0460
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, width = 200, border = 10, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0460 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0460")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0460 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0470
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0470
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, width = 200, border = 10, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0470 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0470")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0470 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0480
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0480
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, width = 200, displayCount = 3, padding = 10, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0480 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0480")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0480 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0490
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0490
   * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, width = 200, displayCount = 3, padding = 10, displayMode = Stretch or displayCount = 1
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0490 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0490")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0490 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0500
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0500
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, width = 200, displayCount = 3, prevMargin/nextMargin+itemSpace, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0500 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0500")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0500 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0510
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0510
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, width = 200, displayCount = 3, prevMargin/nextMargin+itemSpace
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0510 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0510")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0510 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0520
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0520
    * @tc.desc        ADD SWIPER, Two pictures, Swiper sub node spindle layout, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0520 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0520")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0520 finish.`);
      done()
    })
    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0530
  * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0530
  * @tc.desc        ADD SWIPER, Two pictures, Swiper child node cross axis layout, displayCount = 3
  */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0530 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0530")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0530 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0540
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0540
    * @tc.desc        ADD SWIPER, Two pictures, Swiper sub node spindle layout, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0540 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0540")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0540 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0550
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0550
    * @tc.desc        ADD SWIPER, Two pictures, Swiper child node cross axis layout, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0550 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0550")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0550 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0560
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0560
    * @tc.desc        ADD SWIPER, Two pictures, Swiper sub node spindle layout, displayCount = 3, border = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0560 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0560")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0560 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0570
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0570
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayCount = 3, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0570 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0570")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0570 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0580
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0580
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayCount = 3, prevMargin/nextMargin+itemSpace
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0580 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0580")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0580 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0590
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0590
    * @tc.desc        ADD SWIPER, main shaft, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0590 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0590")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0590 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0600
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0600
    * @tc.desc        ADD SWIPER, crossed-axis, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0600 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0600")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0600 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0610
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0610
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0610 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0610")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0610 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0620
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0620
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0620 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0620")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0620 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0630
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0630
   * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, border = 10, displayMode = AutoLinear
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0630 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0630")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0630 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0640
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0640
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, border = 10, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0640 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0640")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0640 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0650
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0650
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, padding = 10, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0650 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0650")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0650 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0660
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0660
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, padding = 10, displayMode = AutoLinear
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0660 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0660")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0660 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0670
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0670
    * @tc.desc        ADD SWIPER, main shaft, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0670 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0670")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0670 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0680
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0680
    * @tc.desc        ADD SWIPER, crossed-axis, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0680 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0680")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0680 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0690
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0690
   * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = Stretch or displayCount = 1
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0690 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0690")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0690 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0700
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0700
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0700 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0700")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0700 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0710
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0710
    * @tc.desc        ADD SWIPER, main shaft, border = 10, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0710 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0710")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0710 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0720
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0720
    * @tc.desc        ADD SWIPER, Two pictures, crossed-axis, border = 10, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0720 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0720")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0720 finish.`);
      done()
    })
    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0730
  * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0730
  * @tc.desc        ADD SWIPER, Two pictures, main shaft, padding = 10, displayMode = Stretch or displayCount = 1
  */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0730 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0730")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0730 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0740
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0740
    * @tc.desc        ADD SWIPER, Two pictures, crossed-axis, padding = 10, displayMode = Stretch or displayCount = 1
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0740 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0740")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0740 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0750
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0750
    * @tc.desc        ADD SWIPER, Two pictures, main shaft, displayCount = 3, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0750 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0750")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0750 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0760
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0760
    * @tc.desc        ADD SWIPER, Two pictures, crossed-axis, displayCount = 3, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0760 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0760")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0760 finish.`);
      done()
    })


    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0820
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0820
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayCount = 3, width = 200, padding = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0820 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0820")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0820 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0830
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0830
   * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayCount = 3, prevMargin/nextMargin+itemSpace
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0830 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0830")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0830 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0840
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0840
    * @tc.desc        ADD SWIPER, main shaft, displayMode = AutoLinear, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0840 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0840")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0840 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0850
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0850
    * @tc.desc        ADD SWIPER, crossed-axis, displayMode = AutoLinear, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0850 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0850")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0850 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0860
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0860
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = AutoLinear, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0860 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0860")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0860 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0870
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0870
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = AutoLinear, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0870 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0870")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0870 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0880
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0880
    * @tc.desc        ADD SWIPER, main shaft, displayMode = Stretch or displayCount = 1, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0880 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0880")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0880 finish.`);
      done()
    })
    /*
   * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0890
   * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0890
   * @tc.desc        ADD SWIPER, crossed-axis, displayMode = Stretch or displayCount = 1, width = 200
   */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0890 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0890")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0890 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0900
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0900
    * @tc.desc        ADD SWIPER, Swiper sub node spindle layout, displayMode = Stretch or displayCount = 1, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0900 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0900")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0900 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0910
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0910
    * @tc.desc        ADD SWIPER, Swiper child node cross axis layout, displayMode = Stretch or displayCount = 1, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0910 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0910")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0910 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0920
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0920
    * @tc.desc        ADD SWIPER, Two pictures, Swiper sub node spindle layout, border = 10, displayMode = Stretch or displayCount = 1, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0920 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0920")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0920 finish.`);
      done()
    })
    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0930
  * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0930
  * @tc.desc        ADD SWIPER, Two pictures, Swiper child node cross axis layout, border = 10, displayMode = Stretch or displayCount = 1, width = 200
  */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0930 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0930")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0930 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0940
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0940
    * @tc.desc        ADD SWIPER, Two pictures, Swiper sub node spindle layout, padding = 10, displayMode = Stretch or displayCount = 1, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0940 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0940")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0940 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0950
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0950
    * @tc.desc        ADD SWIPER, Two pictures, Swiper child node cross axis layout, displayMode = Stretch or displayCount = 1, padding = 10, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0950 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0950")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0950 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0960
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0960
    * @tc.desc        ADD SWIPER, Two pictures, Swiper sub node spindle layout, displayMode = Stretch or displayCount = 1, prevMargin/nextMargin+itemSpace, width = 200
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0960 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0960")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0960 finish.`);
      done()
    })

    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0970
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0970
    * @tc.desc        ADD SWIPER, Two pictures, main shaft, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0970 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0970")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0970 finish.`);
      done()
    })
    /*
  * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0980
  * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0980
  * @tc.desc        ADD SWIPER, Two pictures, crossed-axis, displayCount = 3
  */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0980 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0980")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0980 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0990
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0990
    * @tc.desc        ADD SWIPER, Two pictures, Swiper sub node spindle layout, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0990 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0990")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0990 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1000
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1000
    * @tc.desc        ADD SWIPER, Two pictures, Swiper child node cross axis layout, displayCount = 3
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1000 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1000")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1000 finish.`);
      done()
    })
    /*
    * @tc.number      SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1010
    * @tc.name        SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1010
    * @tc.desc        ADD SWIPER, Two pictures, crossed-axis, displayCount = 3, border = 10
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1010 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1010")
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1010 finish.`);
      done()
    })

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0770
     * @tc.name SCROLL_SWIPER_LAYOUT
     * @tc.desc Normal replacement of some string styles
     * @tc.level Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0770 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0770")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0770 finish.`);
      done()
    })

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0790
     * @tc.name SCROLL_SWIPER_LAYOUT
     * @tc.desc Normal replacement of some string styles
     * @tc.level Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0790 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0790")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0790 finish.`);
      done()
    })

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0810
     * @tc.name SCROLL_SWIPER_LAYOUT
     * @tc.desc Normal replacement of some string styles
     * @tc.level Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0810 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout0810")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_0810 finish.`);
      done()
    })

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1020
     * @tc.name SCROLL_SWIPER_LAYOUT
     * @tc.desc Normal replacement of some string styles
     * @tc.level Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1020 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1020")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1020 finish.`);
      done()
    })

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1040
     * @tc.name SCROLL_SWIPER_LAYOUT
     * @tc.desc Normal replacement of some string styles
     * @tc.level Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1040 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1040")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1040 finish.`);
      done()
    })

    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1050
     * @tc.name SCROLL_SWIPER_LAYOUT
     * @tc.desc Normal replacement of some string styles
     * @tc.level Level 3
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1050 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1050")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1050 finish.`);
      done()
    })

    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1060 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1060")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1060 finish.`);
      done()
    })

    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1080 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1080")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1080 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1090 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1090")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1090 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1100 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1100")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1100 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1110 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1110")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1110 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1120 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1120")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1120 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1130 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1130")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1130 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1140 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1140")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1140 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1150 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1150")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1150 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1160 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1160")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1160 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1170 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1170")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1170 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1180 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1180")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1180 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1190 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1190")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1190 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1200 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1200")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1200 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1210 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1210")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1210 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1220 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1220")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1220 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1230 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1230")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1230 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1240 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1240")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1240 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1250 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1250")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1250 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1260 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1260")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1260 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1270 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1270")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1270 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1280 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1280")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1280 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1290 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1290")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1290 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1300 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1300")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1300 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1310 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1310")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1310 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1320 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1320")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1320 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1330 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1330")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1330 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1340 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1340")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1340 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1350 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1350")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1350 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1360 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1360")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1360 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1370 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1370")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1370 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1380 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1380")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1380 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1390 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1390")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1390 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1400 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1400")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1400 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1410 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1410")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1410 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1420 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1420")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1420 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1430 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1430")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1430 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1440 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1440")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1440 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1450 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1450")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1450 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1460 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1460")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1460 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1470 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1470")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1470 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1480 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1480")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1480 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1490 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1490")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1490 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1500 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1510")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1500 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1510 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1510")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1510 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1520 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1520")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1520 finish.`);
      done()
    })


    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1530 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1530")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1530 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1540 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1540")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1540 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1550 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1550")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1550 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1560 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1560")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1560 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1570 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1570")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1570 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1580 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1580")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1580 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1590 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1590")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1590 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1600 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1600")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1600 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1610 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1610")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1610 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1620 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1620")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1620 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1630 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1630")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1630 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1640 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1640")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1640 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1650 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1650")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1650 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1660 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1660")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1660 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1670 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1670")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1670 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1680 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1680")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1680 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1690 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1690")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1690 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1700 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1700")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1700 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1710 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1710")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1710 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1720 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1720")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1720 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1730 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1730")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1730 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1740 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1740")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1740 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1750 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1750")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1750 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1760 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1760")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1760 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1770 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1770")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1770 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1780 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1780")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1780 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1790 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1790")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1790 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1860', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1860 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1860")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1860 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1870 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1870")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1870 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1880', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1880 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1880")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1880 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1890 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1890")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1890 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1900', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1900 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1900")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1900 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1910', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1910 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1910")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1910 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1920 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1920")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1920 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1930 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1930")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1930 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1940 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1940")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1940 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1950 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1950")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1950 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1960 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1960")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1960 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1970 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1970")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1970 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1980 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1980")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1980 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1990 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1990")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1990 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2000 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2000")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2000 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2010 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2010")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2010 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2020 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2020")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2020 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2030 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2030")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2030 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2040 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2040")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2040 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2050 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2050")
      await Utils.sleep(4000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2050 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1800
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1800 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1800")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1800 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1810
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1810 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1810")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1810 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1820
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1820 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1820")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1820 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1830
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1830 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1830")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1830 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1850
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1840 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1840")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1840 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1850
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1850 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout1850")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_1850 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2060
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2060 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2060")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2060 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2070
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2070 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2070")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2070 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2080
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2080 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2080")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2080 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2090
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2090 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2090")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2090 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2100
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2100 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2100")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2100 finish.`);
      done()
    })
    /**
     * @tc.number SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2110
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2110 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperLayout/UIComponentScrollSwiperLayout2110")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_LAYOUT_2110 finish.`);
      done()
    })
  })
}