/**
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

import { hilog } from '@kit.PerformanceAnalysisKit';
import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium';
import { BusinessError, commonEventManager } from '@kit.BasicServicesKit';
import { KeyCode } from '@kit.InputKit';
import screenLock from '@ohos.screenLock';
import { window } from '@kit.ArkUI';
import wifiManager from '@ohos.wifiManager';
import { Driver, ON ,Component, UiWindow } from '@kit.TestKit';
import { screen } from '@kit.ArkUI';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';

let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function UIComponentSpecialComponentsXComponentOnload() {
  describe('UIComponentSpecialComponentsXComponentOnload', () => {
    beforeAll(() => {

    })
    beforeEach(() => {

    })

    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }
      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error(`[${TAG}]`, `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info(`[${TAG}]`, `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    afterAll(() => {

    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0010
     * @tc.name    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0010
     * @tc.desc    Set controller and type as SURFACE for XComponent, use getXComponentContext method, and add onload event
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0010', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0010';
      let pageName = 'UIComponentSpecialComponentsXComponentOnload0010';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSpecialComponentsXComponentOnload/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let XComponent: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let getContextButton: Component = await driver.findComponent(ON.id(pageName + '_02'));
      await getContextButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0020
     * @tc.name    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0020
     * @tc.desc    Set controller and type as TEXTURE for XComponent, use getXComponentContext method, and add onload event
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0020', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0020';
      let pageName = 'UIComponentSpecialComponentsXComponentOnload0020';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSpecialComponentsXComponentOnload/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let XComponent: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let getContextButton: Component = await driver.findComponent(ON.id(pageName + '_02'));
      await getContextButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot();
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0030
     * @tc.name    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0030
     * @tc.desc    Configure XComponent with controller and SURFACE type, use setXComponentSurfaceSize and getXComponentSurfaceId methods, and add onload event
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0030', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0030';
      let pageName = 'UIComponentSpecialComponentsXComponentOnload0030';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSpecialComponentsXComponentOnload/' + pageName);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '01');
      let driver: Driver = Driver.create();
      let XComponent: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let setSurfaceSizeButton: Component = await driver.findComponent(ON.id(pageName + '_02'));
      let getSurfaceIDButton: Component = await driver.findComponent(ON.id(pageName + '_03'));
      await setSurfaceSizeButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '02');
      await getSurfaceIDButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '03');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0040
     * @tc.name    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0040
     * @tc.desc    Configure XComponent with controller and TEXTURE type, use setXComponentSurfaceSize and getXComponentSurfaceId methods, and add onload event
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0040', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0040';
      let pageName = 'UIComponentSpecialComponentsXComponentOnload0040';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSpecialComponentsXComponentOnload/' + pageName);
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '01');
      let driver: Driver = Driver.create();
      let XComponent: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let setSurfaceSizeButton: Component = await driver.findComponent(ON.id(pageName + '_02'));
      let getSurfaceIDButton: Component = await driver.findComponent(ON.id(pageName + '_03'));
      await setSurfaceSizeButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '02');
      await getSurfaceIDButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '03');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0060
     * @tc.name    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0060
     * @tc.desc    Set XComponent with controller and TEXTURE type, use setXComponentSurfaceRotation and getXComponentSurfaceRotation methods, and add onload event
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0060', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0060';
      let pageName = 'UIComponentSpecialComponentsXComponentOnload0060';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSpecialComponentsXComponentOnload/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let XComponent: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let setSurfaceRotationButton: Component = await driver.findComponent(ON.id(pageName + '_02'));
      let getSurfaceRotationButton: Component = await driver.findComponent(ON.id(pageName + '_03'));
      await setSurfaceRotationButton.click();
      await Utils.sleep(500);
      await getSurfaceRotationButton.click();
      await Utils.sleep(500);
      await windowSnap.snapShot(pageName + '01');
      await setSurfaceRotationButton.click();
      await Utils.sleep(500);
      await getSurfaceRotationButton.click();
      await Utils.sleep(500);
      await windowSnap.snapShot(pageName + '02');
      let screenClass: screen.Screen | null = null;
      screen.getAllScreens(async (err: BusinessError, data: Array<screen.Screen>) => {
        const errCode: number = err.code;
        if (errCode) {
          Logger.error(`[${TAG}]: Failed to get all screens. Code:${err.code},message is ${err.message}`);
          return;
        }
        Logger.info(`[${TAG}]: Succeeded in getting all screens. Data:` + JSON.stringify(data));
        screenClass = data[0];
        screenClass.setOrientation(screen.Orientation.HORIZONTAL, (err: BusinessError) => {
          const errCode: number = err.code;
          if (errCode) {
            Logger.error(`[${TAG}]: Failed to set the vertical orientation. Code:${err.code},message is ${err.message}`);
            return;
          }
          Logger.info(`[${TAG}]: Succeeded in setting the vertical orientation.`);
        });
        await Utils.sleep(1000);
        screenClass.setOrientation(screen.Orientation.VERTICAL, (err: BusinessError) => {
          const errCode: number = err.code;
          if (errCode) {
            Logger.error(`[${TAG}]: Failed to set the vertical orientation. Code:${err.code},message is ${err.message}`);
            return;
          }
          Logger.info(`[${TAG}]: Succeeded in setting the vertical orientation.`);
        });
      });
      await Utils.sleep(3000);
      await windowSnap.snapShot(pageName + '03');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0070
     * @tc.name    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0070
     * @tc.desc    Configure XComponent with controller and SURFACE type, use setXComponentSurfaceRect and getXComponentSurfaceRect methods, and add onload event
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0070', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0070';
      let pageName = 'UIComponentSpecialComponentsXComponentOnload0070';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSpecialComponentsXComponentOnload/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let XComponent: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let setSurfaceRectButton: Component = await driver.findComponent(ON.id(pageName + '_02'));
      let getSurfaceRectButton: Component = await driver.findComponent(ON.id(pageName + '_03'));
      await getSurfaceRectButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '01');
      await setSurfaceRectButton.click();
      await getSurfaceRectButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0080
     * @tc.name    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0080
     * @tc.desc    Set width and height for EmbeddedComponent via Size
     * @tc.level   0
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0080', 0, async (done: Function) => {
      TAG = 'SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_XCOMPONENT_ONLOAD_0080';
      let pageName = 'UIComponentSpecialComponentsXComponentOnload0080';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/UIComponentSpecialComponentsXComponentOnload/' + pageName);
      await Utils.sleep(1000);
      let driver: Driver = Driver.create();
      let XComponent: Component = await driver.findComponent(ON.id(pageName + '_01'));
      let setSurfaceRectButton: Component = await driver.findComponent(ON.id(pageName + '_02'));
      let getSurfaceRectButton: Component = await driver.findComponent(ON.id(pageName + '_03'));
      await getSurfaceRectButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '01');
      await setSurfaceRectButton.click();
      await getSurfaceRectButton.click();
      await Utils.sleep(1000);
      await windowSnap.snapShot(pageName + '02');
      Logger.info(`[${TAG}]`, `Case finish.`);
      done();
    })

  })
}