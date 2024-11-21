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

import { afterEach, describe, it } from '@ohos/hypium'
import Logger from '../model/Logger'
import Settings from '../model/Settings'
import Utils from '../model/Utils'
import windowSnap from '../model/snapShot'
import { Driver, ON } from '@ohos.UiTest'

/*
 * Settings.createWindow(config.url)：
 *  创建窗口，更改窗口基本配置，更改方式详见model/Settings createWindow方法
 *
 * windowSnap.snapShot(globalThis.context)：
 *  窗口截屏&图片文件保存，存储在设备端
 *  存储文件固定，单挑用例执行后覆盖，用于自动化UI对比
 *  支持调试更改文件名为时间戳格式，更改model/snapShot createAndGetFile方法 注释L35，放开L32，L33
 *
 * Logger日志使用方法：
 *  import Logger form './model/Logger'
 *  Logger.info(TAG,`config = ${config}, err = ${JSON.stringify(exception)}`)
 * */

export default function UIComponentPopupBoxSpecificationsShadow() {
  describe('UIComponentPopupBoxSpecificationsShadow', () => {



    /*
    * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0200
    * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0200
    * @tc.desc      SelectDialog configures shadow ({radius: reference 100vp,type: ShadowType.COLOR, color: ColoringStrategy.PRIMARY offsetX: 30vp,offsetY: 30vp,fill:false})
    */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0200 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow020");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0200"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0200 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0170
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0170
     * @tc.desc      SelectDialog configures shadow ({radius: reference 30vp,type: ShadowType.COLOR, color: Color.Black offsetX: 30vp,offsetY: 30vp,fill: true})
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow017");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0170"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0170 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0120
     * @tc.desc      SelectDialog Configure shadow (ShadowStyle.OUTER_DEFAULT_LG)
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow012");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0120"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0120 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0180
     * @tc.desc      SelectDialog configures shadow ({radius: reference 100vp,type: ShadowType.COLOR, color: ColoringStrategy.AVERAGE offsetX: 30vp,offsetY: 30vp,fill: false})
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow018");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0180"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0180 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0130
     * @tc.desc      SelectDialog Configure shadow (ShadowStyle.OUTER_DEFAULT_SM)
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow013");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0130"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0130 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0140
     * @tc.desc      SelectDialog Configure shadow (ShadowStyle.OUTER_DEFAULT_XS)
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow014");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0140"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0140 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0160
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0160
     * @tc.desc      SelectDialog Configure shadow (ShadowStyle.OUTER_FLOATING_SM)
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0160 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow016");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0160"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0160 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0210
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0210
     * @tc.desc      SelectDialog configures shadow ({radius: reference 30vp,type: ShadowType.BLUR, color: "#FF00FF" offsetX: 30vp,offsetY: 30vp,fill: false})
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0210 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow021");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0210"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0210 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0220
     * @tc.desc      SelectDialog configures shadow ({radius: reference 30vp,type: ShadowType.BLUR, color: reference "#00FFFF" offsetX: 100vp,offsetY: 100vp,fill: false})
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow022");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0220"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0220 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0830
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0830
     * @tc.desc      The SelectDialog configures shadow: undefined
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0830 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecificationsShadow/UIComponentPopupBoxSpecificationsShadow083");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecificationsShadow0830"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_SHADOW_0830 finish.`);
      done();
    })
  })
}