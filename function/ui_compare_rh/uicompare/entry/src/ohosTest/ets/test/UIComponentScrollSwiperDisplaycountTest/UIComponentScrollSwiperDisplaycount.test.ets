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
import { Component, Driver ,ON, PointerMatrix } from '@ohos.UiTest'

export default function UIComponentScrollSwiperDisplaycount() {
  describe('UIComponentScrollSwiperDisplaycount', () => {
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_DISPLAYCOUNT_0140
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_DISPLAYCOUNT_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_DISPLAYCOUNT_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperDisplaycount/UIComponentScrollSwiperDisplaycount0140")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let driver: Driver = Driver.create()
      let button_ShowNext:Component =await driver.findComponent(ON.id('UIComponentScrollSwiperDisplaycount0140_ShowPrevious'));
      button_ShowNext.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_DISPLAYCOUNT_0140 finish.`);
      done()
    })
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_DISPLAYCOUNT_0130
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_DISPLAYCOUNT_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_DISPLAYCOUNT_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperDisplaycount/UIComponentScrollSwiperDisplaycount0140")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let driver: Driver = Driver.create()
      let button_ShowPrevious:Component =await driver.findComponent(ON.id('UIComponentScrollSwiperDisplaycount0130_ShowNext'));
      button_ShowPrevious.click()
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_DISPLAYCOUNT_0130 finish.`);
      done()
    })
  })
}