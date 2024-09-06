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
import { Driver, ON , Component} from '@ohos.UiTest'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'

export default function ComponentRowColumnSidebarContainerBlurStyleTest001() {

  describe('ComponentRowColumnSidebarContainerBlurStyleTest001', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
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

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0010
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      The component is embedded on the left side of the sidebar, displaying and hiding buttons, changing button styles, and viewing changes in blur effects
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0010 start.`);
      Settings.createWindow("testability/pages/ComponentRowColumnSidebarContainerBlurStyle/ComponentRowColumnSidebarContainerBlurStyle001")
      await Utils.sleep(1000)
      for(let i = 1; i <= 11; i++){
        let driver: Driver = Driver.create();
        let IDTest: string = ("ComponentRowColumnSidebarContainerBlurStyle001_00" + i.toString()).toString()
        if(i <= 9){
          IDTest = ("ComponentRowColumnSidebarContainerBlurStyle001_00" + i.toString()).toString()
        }else{
          IDTest = ("ComponentRowColumnSidebarContainerBlurStyle001_0" + i.toString()).toString()
        }
        let SliderCom1 = await driver.findComponent(ON.id(IDTest));
        let pointCenter1 = await SliderCom1.getBoundsCenter();
        await driver.click(pointCenter1.x, pointCenter1.y);
        windowSnap.snapShot()
      }
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0010 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0011
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      The component is embedded on the left side of the sidebar. Drag the dividing line to view the changes in blur effect
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0011', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0011 start.`);
      Settings.createWindow("testability/pages/ComponentRowColumnSidebarContainerBlurStyle/ComponentRowColumnSidebarContainerBlurStyle002")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create();
      let SliderCom1 = await driver.findComponent(ON.id("ComponentRowColumnSidebarContainerBlurStyle002_001"));
      let pointCenter1 = await SliderCom1.getBoundsCenter();
      await driver.drag(pointCenter1.x * 2, pointCenter1.y, 0, 0, 600);
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0011 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0012
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      The component on the left side of the sidebar is suspended, displaying and hiding buttons, changing button styles, and viewing changes in blur effects
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0012', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0012 start.`);
      Settings.createWindow("testability/pages/ComponentRowColumnSidebarContainerBlurStyle/ComponentRowColumnSidebarContainerBlurStyle003")
      await Utils.sleep(1000)
      for(let i = 1; i <= 11; i++){
        let driver: Driver = Driver.create();
        let IDTest: string = ("ComponentRowColumnSidebarContainerBlurStyle003_00" + i.toString()).toString()
        if(i <= 9){
          IDTest = ("ComponentRowColumnSidebarContainerBlurStyle003_00" + i.toString()).toString()
        }else{
          IDTest = ("ComponentRowColumnSidebarContainerBlurStyle003_0" + i.toString()).toString()
        }
        let SliderCom1 = await driver.findComponent(ON.id(IDTest));
        let pointCenter1 = await SliderCom1.getBoundsCenter();
        await driver.click(pointCenter1.x, pointCenter1.y);
        windowSnap.snapShot()
      }
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0012 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0013
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      Left floating display on the sidebar, drag the dividing line to see the blur effect changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0013', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0013 start.`);
      Settings.createWindow("testability/pages/ComponentRowColumnSidebarContainerBlurStyle/ComponentRowColumnSidebarContainerBlurStyle004")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create();
      let SliderCom1 = await driver.findComponent(ON.id("ComponentRowColumnSidebarContainerBlurStyle004_001"));
      let pointCenter1 = await SliderCom1.getBoundsCenter();
      await driver.drag(pointCenter1.x * 2, pointCenter1.y, 0, 0, 600);
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0013 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0014
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      Left floating display on the sidebar, drag the dividing line to see the blur effect changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0014', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0014 start.`);
      Settings.createWindow("testability/pages/ComponentRowColumnSidebarContainerBlurStyle/ComponentRowColumnSidebarContainerBlurStyle005")
      await Utils.sleep(1000)
      for(let i = 1; i <= 11; i++){
        let driver: Driver = Driver.create();
        let IDTest: string = ("ComponentRowColumnSidebarContainerBlurStyle005_00" + i.toString()).toString()
        if(i <= 9){
          IDTest = ("ComponentRowColumnSidebarContainerBlurStyle005_00" + i.toString()).toString()
        }else{
          IDTest = ("ComponentRowColumnSidebarContainerBlurStyle005_0" + i.toString()).toString()
        }
        let SliderCom1 = await driver.findComponent(ON.id(IDTest));
        let pointCenter1 = await SliderCom1.getBoundsCenter();
        await driver.click(pointCenter1.x, pointCenter1.y);
        windowSnap.snapShot()
      }
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0014 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0015
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      Embed components on the right side of the sidebar, drag the dividing line to view the changes in blur effect
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0015', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0015 start.`);
      Settings.createWindow("testability/pages/ComponentRowColumnSidebarContainerBlurStyle/ComponentRowColumnSidebarContainerBlurStyle006")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create();
      let SliderCom1 = await driver.findComponent(ON.id("ComponentRowColumnSidebarContainerBlurStyle006_001"));
      let pointCenter1 = await SliderCom1.getBoundsCenter();
      await driver.drag(pointCenter1.x * 2, pointCenter1.y, 0, 0, 600);
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0015 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0016
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      The floating component on the right side of the sidebar displays and hides buttons, changes button styles, and displays changes in blur effects
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0016', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0016 start.`);
      Settings.createWindow("testability/pages/ComponentRowColumnSidebarContainerBlurStyle/ComponentRowColumnSidebarContainerBlurStyle007")
      await Utils.sleep(1000)
      for(let i = 1; i <= 13; i++){
        let driver: Driver = Driver.create();
        let IDTest: string = ("ComponentRowColumnSidebarContainerBlurStyle007_00" + i.toString()).toString()
        if(i <= 9){
          IDTest = ("ComponentRowColumnSidebarContainerBlurStyle007_00" + i.toString()).toString()
        }else{
          IDTest = ("ComponentRowColumnSidebarContainerBlurStyle007_0" + i.toString()).toString()
        }
        let SliderCom1 = await driver.findComponent(ON.id(IDTest));
        let pointCenter1 = await SliderCom1.getBoundsCenter();
        await driver.click(pointCenter1.x, pointCenter1.y);
        windowSnap.snapShot()
      }
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0016 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0017
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      Suspended component on the right side of the sidebar, drag the dividing line to view the changes in blur effect
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0017', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0017 start.`);
      Settings.createWindow("testability/pages/ComponentRowColumnSidebarContainerBlurStyle/ComponentRowColumnSidebarContainerBlurStyle008")
      await Utils.sleep(2000)
      let driver: Driver = Driver.create();
      let SliderCom1 = await driver.findComponent(ON.id("ComponentRowColumnSidebarContainerBlurStyle008_001"));
      let pointCenter1 = await SliderCom1.getBoundsCenter();
      await driver.drag(pointCenter1.x * 2, pointCenter1.y, 0, 0, 600);
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE_0017 finish.`);
      done()
    })
  })
}
