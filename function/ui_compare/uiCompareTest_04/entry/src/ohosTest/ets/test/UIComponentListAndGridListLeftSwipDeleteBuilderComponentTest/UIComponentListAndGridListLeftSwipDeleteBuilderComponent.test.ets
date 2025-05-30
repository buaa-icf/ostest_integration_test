/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect, Level } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON, Component, MouseButton } from '@ohos.UiTest'

export default function UIComponentListAndGridListLeftSwipDeleteBuilderComponentTest() {
  describe('UIComponentListAndGridListLeftSwipDeleteBuilderComponentTest', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return;
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0100
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0100
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0100', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0100';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListLeftSwipDeleteBuilderComponent/UIComponentListAndGridListLeftSwipDeleteBuilderComponent001");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let list: Component = await driver.findComponent(ON.type('List'));
      let point = await list.getBoundsCenter();
      console.log(`${caseName} point of List is ${JSON.stringify(point)}`);
      await driver.mouseDrag({x: point.x + 300, y: point.y}, {x: point.x - 300, y: point.y}, 1000);
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListLeftSwipDeleteBuilderComponent0100');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0090
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0090
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0090', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0090';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListLeftSwipDeleteBuilderComponent/UIComponentListAndGridListLeftSwipDeleteBuilderComponent002");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let list: Component = await driver.findComponent(ON.type('List'));
      let point = await list.getBoundsCenter();
      console.log(`${caseName} point of List is ${JSON.stringify(point)}`);
      await driver.mouseDrag({x: point.x - 300, y: point.y}, {x: point.x + 300, y: point.y}, 1000);
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListLeftSwipDeleteBuilderComponent0090');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0040
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0040', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0040';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListLeftSwipDeleteBuilderComponent/UIComponentListAndGridListLeftSwipDeleteBuilderComponent003");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let list: Component = await driver.findComponent(ON.type('List'));
      let point = await list.getBoundsCenter();
      console.log(`${caseName} point of List is ${JSON.stringify(point)}`);
      await driver.mouseDrag({x: point.x + 300, y: point.y}, {x: point.x - 300, y: point.y}, 1000);
      await Utils.sleep(2000);
      windowSnap.snapShot('UIComponentListAndGridListLeftSwipDeleteBuilderComponent0040');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0180
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0180', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0180';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListLeftSwipDeleteBuilderComponent/UIComponentListAndGridListLeftSwipDeleteBuilderComponent004");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let list: Component = await driver.findComponent(ON.type('List'));
      let point = await list.getBoundsCenter();
      console.log(`${caseName} point of List is ${JSON.stringify(point)}`);
      await driver.mouseDrag({x: point.x + 300, y: point.y}, {x: point.x - 300, y: point.y}, 1000);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListLeftSwipDeleteBuilderComponent0180_1');
      let button: Component = await driver.findComponent(ON.id('change'));
      await button.click();
      await Utils.sleep(2000);
      await driver.mouseDrag({x: point.x + 300, y: point.y}, {x: point.x - 300, y: point.y}, 1000);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListLeftSwipDeleteBuilderComponent0180_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0080
     * @tc.desc    Component 3 groups
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0080', Level.LEVEL0, async (done: Function) => {
      let caseName: string = 'SUB_ACE_UI_COMPONENT_LISTANDGRID_LIST_LEFTSWIPEDELETE_BUILDERCOMPONENT_0080';
      Logger.info('TEST', `${caseName} start.`);
      Settings.createWindow("testability/pages/UIComponentListAndGridListLeftSwipDeleteBuilderComponent/UIComponentListAndGridListLeftSwipDeleteBuilderComponent005");
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let list: Component = await driver.findComponent(ON.type('List'));
      let point = await list.getBoundsCenter();
      console.log(`${caseName} point of List is ${JSON.stringify(point)}`);
      await driver.mouseDrag({x: point.x + 300, y: point.y}, {x: point.x - 300, y: point.y}, 1000);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListLeftSwipDeleteBuilderComponent0080_1');
      await driver.mouseClick({x: point.x, y: point.y + 400}, MouseButton.MOUSE_BUTTON_LEFT);
      let button: Component = await driver.findComponent(ON.id('change'));
      await button.click();
      await driver.mouseDrag({x: point.x + 300, y: point.y}, {x: point.x - 300, y: point.y}, 1000);
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentListAndGridListLeftSwipDeleteBuilderComponent0080_2');
      await Utils.sleep(1000);
      Logger.info('TEST', `${caseName} finish.`);
      done();
    });
  })
}
