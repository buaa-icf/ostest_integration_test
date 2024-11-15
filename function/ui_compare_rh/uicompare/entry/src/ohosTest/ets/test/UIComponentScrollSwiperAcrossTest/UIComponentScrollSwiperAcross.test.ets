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

export default function UIComponentScrollSwiperAcross() {
  describe('UIComponentScrollSwiperAcross', () => {
    /*
        * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0010
    */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_INTERFACE_0820 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperAcross/UIComponentScrollSwiperAcross0010")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let driver: Driver = Driver.create()
      let button_ChangeIndex:Component =await driver.findComponent(ON.id('UIComponentScrollSwiperAcross0010_ChangeIndex'));
      button_ChangeIndex.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      let button_ShowNext:Component =await driver.findComponent(ON.id('UIComponentScrollSwiperAcross0010_ShowNext'));
      button_ShowNext.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0010 finish.`);
      done()
    })
    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0030
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperAcross/UIComponentScrollSwiperAcross0030")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button_ChangeIndex:Component =await driver.findComponent(ON.id('UIComponentScrollSwiperAcross0030_ChangeIndex'));
      button_ChangeIndex.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0030 finish.`);
      done()
    })
    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0060
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0060_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperAcross/UIComponentScrollSwiperAcross0060")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button_ChangeIndex:Component =await driver.findComponent(ON.id('UIComponentScrollSwiperAcross0060_Remove'));
      button_ChangeIndex.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0060 finish.`);
      done()
    })
    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0060
     */
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0060_2', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperAcross/UIComponentScrollSwiperAcross0060")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create()
      let button_ChangeIndex:Component =await driver.findComponent(ON.id('UIComponentScrollSwiperAcross0060_ChangeIndex'));
      button_ChangeIndex.click()
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(3000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ACROSS_0060 finish.`);
      done()
    })
  })
}