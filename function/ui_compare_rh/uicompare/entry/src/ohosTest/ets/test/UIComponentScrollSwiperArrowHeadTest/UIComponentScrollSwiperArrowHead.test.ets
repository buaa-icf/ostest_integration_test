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
import { Component, Driver, ON, MouseButton, PointerMatrix } from '@ohos.UiTest'

export default function UIComponentScrollSwiperArrowHead() {

  describe('UIComponentScrollSwiperArrowHead', () => {
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0010")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0010 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0020 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0020")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0020 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0030")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0030 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0040 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0040")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0040 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0610 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0610")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0610 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0620 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0620")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0620 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0630 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0630");
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0630 finish.`);
      done();
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0640 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0640");
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0640 finish.`);
      done();
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0650 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0650");
      await Utils.sleep(1000);
      let driver = Driver.create();
      let swiper = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0650_001"));
      let point = await swiper.getBoundsCenter();
      await driver.mouseClick({
        x: point.x, y: point.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      let rightArrow = await driver.findComponent(ON.type("RightArrow"));
      let arrowPoint = await rightArrow.getBoundsCenter();
      await driver.mouseClick({
        x: arrowPoint.x, y: arrowPoint.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(3000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0650 finish.`);
      done();
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0660 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0660")
      await Utils.sleep(1000);
      let driver = Driver.create();
      let swiper = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0660_001"));
      let point = await swiper.getBoundsCenter();
      await driver.mouseClick({
        x: point.x, y: point.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      let rightArrow = await driver.findComponent(ON.type("RightArrow"));
      let arrowPoint = await rightArrow.getBoundsCenter();
      await driver.mouseClick({
        x: arrowPoint.x, y: arrowPoint.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(3000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0660 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0670 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0670")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0670_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0670 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0680 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0680")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0680_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0680 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0690 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0690")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0690 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0700 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0700")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0700 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0710 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0710")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0710 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0720 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0720")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0720 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0730 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0730")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0730_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0730 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0740 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0740")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0740_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0740 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0750 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0750")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0750_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0750 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0760 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0760")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0760_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0760 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0770 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0770")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0770_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0770 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0780 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0780")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0780_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();
      await driver.mouseMoveTo({x:point.x, y:point.y});
      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0780 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0790 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0790")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0790_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();

      let swiper = await driver.findComponent(ON.type("SwiperIndicator"));
      let swiperPoint = await swiper.getBoundsCenter();
      await driver.mouseMoveTo({
        x: swiperPoint.x, y: swiperPoint.y
      });

      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0790 finish.`);
      done()
    })
    it('SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0800 start.`);
      Settings.createWindow("testability/pages/UIComponentScrollSwiperArrowHead/UIComponentScrollSwiperArrowHead0800")
      await Utils.sleep(3000);
      let driver: Driver = Driver.create();
      let swiperButton = await driver.findComponent(ON.id("UIComponentScrollSwiperArrowHead0800_001"));
      let button = await swiperButton.getBoundsCenter();
      await driver.mouseClick({
        x: button.x, y: button.y
      }, MouseButton.MOUSE_BUTTON_LEFT);
      let swiperArrow = await driver.findComponent(ON.type("RightArrow"));
      let point = await swiperArrow.getBoundsCenter();

      let swiper = await driver.findComponent(ON.type("SwiperIndicator"));
      let swiperPoint = await swiper.getBoundsCenter();
      await driver.mouseMoveTo({
        x: swiperPoint.x, y: swiperPoint.y
      });

      await Utils.sleep(2000);
      await driver.mouseClick({x:point.x, y:point.y}, MouseButton.MOUSE_BUTTON_LEFT);
      await Utils.sleep(3000);
      await swiperArrow.click();
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SCROLL_SWIPER_ARROWHEAD_0800 finish.`);
      done()
    })
  })
}
