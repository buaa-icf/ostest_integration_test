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
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON } from '@ohos.UiTest'

/*
 *
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

export default function UIComponentSpecialComponentsFormComponentTransparent() {

  describe('UIComponentSpecialComponentsFormComponentTransparent', () => {



    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1260
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1260
     * @tc.desc      Verify that Popup's CustomPopupOptions.arrowWidth parameter type Dimension (Resource):r(app.media.string ") references 30PX
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1260 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent126");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1260"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1260 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1540
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1540
     * @tc.desc      Verify CustomPopupOptions for Popup. The shadow(ShadowOptions) parameter type is color(ColoringStrategy):PRIMARY
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1540 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent154");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1540"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1540 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0100
     * @tc.desc      Verify the arrowOffset of Popup. The parameter type is Resource: 15%
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent010");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0100"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0100 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0390
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0390
     * @tc.desc      Verify that Popup's targetSpaceLength parameter type Resource:Sr(app.media.string) references 30px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent039");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0390"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0390 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1520
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1520
     * @tc.desc      CustomPopupOptions for Popup, shadow (ShadowOptions) parameter type color(ColoringStrategy):INVERT
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1520 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent152");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1520"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(2000);
      Logger.info('TEST', `SUB_ACE UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1520 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0130
     * @tc.desc      Validate the mask of Popup with the argument type boolean: true
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent013");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0130"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0130 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1300
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1300
     * @tc.desc      Validation Popup CustomPopupOptions, arrowHeight parameter type Dimension (FP) : 30 FP
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1300 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent130");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1300"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1300 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1570
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1570
     * @tc.desc      Verify that CustomPopupOptions for Popup, shadow(ShadowOptions) parameter type offsetX(Resource): r("app.media.string ") references 30px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1570 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent157");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1570"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1570 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1230
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1230
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowWidth parameter type Dimension (FP) : 30 FP
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1230 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent123");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1230"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1230 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1500
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1500
     * @tc.desc      Verify the CustomPopupOptions for Popup, shadow (ShadowOptions) parameter type color string):"ee4508de"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1500 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent150");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1500"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1500 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1770
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1770
     * @tc.desc      Verify the CustomPopupOptions. backgroundBlurStyle parameter type of Popup BlurStyle. BACKGROUND_ULTRA_THICK
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1770 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent177");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1770"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1770 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0190
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0190
     * @tc.desc      Verify that the messageOptions. textColor parameter type of Popup is ResourceColor(string):ee4508de
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0190 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent019");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0190"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0190 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1280
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1280
     * @tc.desc      Validate the CustomPopupOptions.arrowHeight parameter type Dimension (PX):30PX for Popup
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1280 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent128");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1280"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1280 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1530
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1530
     * @tc.desc      Verify the CustomPopupOptions of Popup, shadow(ShadowOptions) parameter type color(ColoringStrategy):AVERAGE
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1530 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent153");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1530"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1530 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1780
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1780
     * @tc.desc      Validation Popup CustomPopupOptions, backgroundBlurStyle parameter types BlurStyle: NONE
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1780 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent178");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1780"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1780 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0820
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0820
     * @tc.desc      Verify that the Popup backaroundBlurStyle parameter is set to COMPONENT_THICK
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0820 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent082");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0820"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0820 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0170
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0170
     * @tc.desc      Verify that the messageOptions.textColor parameter type of Popup is ResourceColor(Color):0x008000
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent017");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0170"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0170 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1220
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1220
     * @tc.desc      Validation Popup CustomPopupOptions, arrowWidth parameter type Dimension (VP) : 30 VP
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1220 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent122");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1220"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1220 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1310
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1310
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowHeight parameter type Dimension (LPX) : 30 LPX
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1310 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent131");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1310"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1310 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0600
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0600
     * @tc.desc      Verify that Popup's shadow, references color.gray
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0600 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent060");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0600"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0600 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1290
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1290
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowHeight parameter type Dimension (VP) : 30 VP
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1290 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent129");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1290"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1290 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0630
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0630
     * @tc.desc      Verify that the type of the Popup shadowColoringStrategy parameter is PRIMARY
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0630 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent063");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0630"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0630 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0830
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0830
     * @tc.desc      Verify the backgroundBlurStyle of Popup. The type of the BlurStyle parameter is COMPONENT_ULTRA_THICK
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0830 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent083");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0830"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0830 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0620
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0620
     * @tc.desc      Verify that the type of the shadow.ColoringStrategy parameter of Popup is AVERAGE
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0620 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent062");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0620"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0620 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0360
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0360
     * @tc.desc      Verify that Popup messageOptions,style parameter type FontStyle:Italic
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0360 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent036");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0360"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0360 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1470
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1470
     * @tc.desc      Verify CustomPopupOptions for Popup. The shadow(ShadowOptions) parameter type is BLUR
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1470 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent147");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1470"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1470 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1760
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1760
     * @tc.desc      Verify the CustomPopupOptions backgroundBlurStyle parameter type of Popup BlurStyle: BACKGROUND_THICK
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1760 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent176");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1760"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1760 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1240
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1240
     * @tc.desc      Validation Popup CustomPopupOptions, arrowWidth parameter type Dimension (LPX) : 30 LPX
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1240 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent124");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1240"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1240 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1560
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1560
     * @tc.desc      Validation of the Popup CustomPopupOptions. Shadow (ShadowOptions) parameter types offsetX (number) : 30 px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1560 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent156");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1560"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1560 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0180
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0180
     * @tc.desc      Verify that the messageOptions textColor parameter type of Popup is ResourceColor(Resource)
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent018");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0180"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0180 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1800
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1800
     * @tc.desc      Validation Popup CustomPopupOptions. BlurStyle backgroundBlurStyle parameter types: COMPONENT THIN
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1800 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent180");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1800"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1800 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1250
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1250
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowWVidth parameter type Dimension (Percentage) : 10%
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1250 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent125");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1250"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1250 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1210
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1210
     * @tc.desc      Verify Popup's "CustomPopupOptions arrowWidth" parameter type Dimension(PX):30PX
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1210 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent121");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1210"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1210 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1510
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1510
     * @tc.desc      Verify PopuD CustomPopupOptions, shadow (ShadowOptions) parameter types color (Resource) : reference color. Gray
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1510 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent151");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1510"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1510 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1790
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1790
     * @tc.desc      Validation Popup CustomPopupOptions. BlurStyle backgroundBlurStyle parameter types: COMPONENT_ULTRA_THIN
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1790 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent179");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1790"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1790 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0150
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0150
     * @tc.desc      Verify the mask of Popup with parameter type Resource: reference Color.gray
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0150 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent015");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0150"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0150 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1750
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1750
     * @tc.desc      Validation Popup CustomPopupOptions. BlurStyle backgroundBlurStyle parameter types: BACKGROUND_REGULAR
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1750 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent175");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1750"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1750 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0610
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0610
     * @tc.desc      Verify that the Popup shadow.ColoringStrategy parameter is of INVERT type
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0610 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent061");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0610"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0610 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0140
     * @tc.desc      Verify the masK of Popup. The parameter type is string: "ee4508de".
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent014");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0140"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0140 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1330
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1330
     * @tc.desc      Validate Popup's CustomPopupOptions, arrowHeight parameter type Dimension(Resource): reference 30px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1330 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent133");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1330"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1330 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1590
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1590
     * @tc.desc      Validation Popup CustomPopupOptions, shadow (ShadowOptions) parameter types offsetY (number) : 30 px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1590 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent159");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1590"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1590 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0920
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0920
     * @tc.desc      Validation Popup CustomPopupOptions. AutoCancel parameter types Boolean: false
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0920 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent092");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0920"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      let rect = await SliderCom.getBounds();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0920 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0650
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0650
     * @tc.desc      Verify the Popup shadow, offsetX parameter type Resource: reference "30px"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0650 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent065");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0650"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0650 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1020
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1020
     * @tc.desc      Validation Popup CustomPopupOptions. TargetSpace parameter type string: 30 px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1020 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent102");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1020"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1020 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0940
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0940
     * @tc.desc      Validate the CustomPopupOptions.onStateChange parameter type for Popup :(event: {isVisible: boolean}) =>void
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0940 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent094");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0940"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0940 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1080
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1080
     * @tc.desc      Verify the CustomPopupOptions for Popup with the width parameter Dimension(PX):30PX
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1080 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent108");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1080"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1080 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1350
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1350
     * @tc.desc      Validation Popup CustomPopupOptions, the radius Dimension parameter type (PX) : 30 PX
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1350 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent135");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1350"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1350 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0670
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0670
     * @tc.desc      Verify the Popup shadow, offsetY parameter type Resource: reference "30px.
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0670 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent067");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0670"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0670 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1820
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1820
     * @tc.desc      Verify Popup CustomPopupOptions. BlurStyle backgroundBlurStyle parameter types: COMPONENT_THICK
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1820 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent182");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1820"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1820 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1090
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1090
     * @tc.desc      Verify the CustomPopupOptions for Popup, width parameter of type Dimension(VP):30VP
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1090 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent109");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1090"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1090 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1380
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1380
     * @tc.desc      Verify CustomPopupOptions for Popup. radius parameter type Dimension(LPX):30LPX
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1380 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent138");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1380"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1380 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1810
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1810
     * @tc.desc      Validation Popup CustomPopupOptions. BlurStyle backgroundBlurStyle parameter types: COMPONENT_REGULAR
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1810 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent181");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1810"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1810 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1040
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1040
     * @tc.desc      Validation Popup CustomPopupOptions. TargetSpace parameter types Resource: 30 px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1040 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent104");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1040"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1040 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1360
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1360
     * @tc.desc      set autoCancel:false;showinSubWindow:true;onWillDismiss: true, Click empty and do not exit
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1360 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent136");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1360"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1360 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1600
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1600
     * @tc.desc      Verify Popup CustomPopupOptions. Shadow (ShadowOptions) parameter types offsetY (Resource) : refer to "30 px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1600 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent160");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1600"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1600 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0960
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0960
     * @tc.desc      Validation Popup CustomPopupOptions, showInSubWindow parameter types Boolean: true
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0960 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent096");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0960"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0960 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1170
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1170
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowPointPosition parameter types: CENTER
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1170 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent117");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1170"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1170 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1840
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1840
     * @tc.desc      Validation Popup NCustomPopupOptions. Focusable parameter types Boolean: true
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1840 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent184");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1840"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1840 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1100
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1100
     * @tc.desc      Verify the CustomPopupOptions for Popup,width parameter of type Dimension(FP):30FP
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1100 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent110");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1100"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1100 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0710
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0710
     * @tc.desc      Verify that the backgroundBlurStyle. BlurStyle parameter type of Popup is Thin
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0710 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent071");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0710"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0710 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0980
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0980
     * @tc.desc      Validates the CustomPopupOptions for Popup. The mask parameter type is boolean:true
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0980 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent098");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0980"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0980 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1370
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1370
     * @tc.desc      Verify Popup CustomPopupOptions, the radius Dimension parameter type (FP) : 30 FP
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1370 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent137");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1370"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1370 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1390
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1390
     * @tc.desc      Verify the CustomPopupOptions of Popup. radius parameter type Dimension(Percentage):10%
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1390 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent139");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1390"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1390 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0720
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0720
     * @tc.desc      Verify that the backgroundBlurStyle. BlurStyle parameter type of Popup is Regular
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0720 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent072");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0720"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0720 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1830
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1830
     * @tc.desc      Validation Popup CustomPopupOptions. BlurStyle backgroundBlurStyle parameter types: COMPONENT_ULTRA_THICK
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1830 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent183");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1830"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1830 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1120
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1120
     * @tc.desc      Validate CustomPopupOptions for Popup, width parameter type Dimension(Percentage):10%
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1120 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent112");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1120"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1120 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0730
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0730
     * @tc.desc      Verify the backgroundBlurStyle. BlurStyle parameter type of Popup :Thick
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0730 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent073");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0730"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0730 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0990
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0990
     * @tc.desc      CustomPopupOptons of the Popup, mask parameter type ResourceColor(including string):ee4508de
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0990 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent099");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0990"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0990 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1180
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1180
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowPointPosition parameter types: the END
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1180 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent118");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1180"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1180 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0740
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0740
     * @tc.desc      Verify the backgroundBlurStyle. BlurStyle parameter type of Popup :BACKGROUND_THIN
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0740 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent074");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0740"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0740 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1110
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1110
     * @tc.desc      Verify that Popup has the CustomPopupOptions.width parameter of type Dimension(LPX):30LPX
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1110 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent111");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1110"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1110 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0760
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0760
     * @tc.desc      Verify the backgroundBlurStyle. BlurStyle parameter type of Popup :BACKGROUND_THICK
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0760 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent076");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0760"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0760 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1000
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1000
     * @tc.desc      Verify the CustomPopupOptions of Popup, mask parameter type ResourceColor(including Resource): reference Color.gray
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1000 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent100");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1000"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1000 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1150
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1150
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowPointPosition parameter types: START and placement: Bottom
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1150 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent115");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1150"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1150 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1620
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1620
     * @tc.desc      Validates the CustomPopupOptions for Popup, shadOw (ShadowOptions) parameter type fill(boolean): true
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1620 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent162");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1620"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1620 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1400
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1400
     * @tc.desc      Verify CustomPopupOptions for Popup, radius parameter type Resource(PX): reference 30px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1400 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent140");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1400"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1400 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0770
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0770
     * @tc.desc      Card Popup backgroundBlurStyle. BlurStyle parameter types: BACKGROUND_ULTRA_THICK
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0770 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent077");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0770"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0770 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0230
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0230
     * @tc.desc      Verify that the messageOptions.weight parameter of Popup is FontWeight:Normal
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0230 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent023");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0230"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0230 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1130
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1130
     * @tc.desc      Verify the customPopupOptions for Popup, width parameter type Dimension(Resource): reference 30px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1130 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent113");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1130"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1130 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1640
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1640
     * @tc.desc      Verify customPopupOptions for Popup, shadow parameter type ShadowStyleOUTER_DEFAULT_XS
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1640 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent164");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1640"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1640 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0220
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0220
     * @tc.desc      Verify that Popup's messageOptionsweight parameter is of type FontWeight:Lighter
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0220 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent022");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0220"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0220 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0540
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0540
     * @tc.desc      Verify the shadow of Popup, radius parameter type Resource: reference "-30px"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0540 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent054");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0540"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0540 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0780
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0780
     * @tc.desc      Validation Popup backgroundBlurStyle. BlurStyle parameter types: NONE
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0780 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent078");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0780"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0780 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0240
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0240
     * @tc.desc      Verify that the messageOptions.weight parameter of Popup is FontWeight:Regular
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0240 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent024");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0240"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0240 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0790
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0790
     * @tc.desc      Verify the backgroundBlurStyle. BlurStyle parameter type of Popup :COMPONENT_ULTRA_THIN
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0790 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent079");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0790"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0790 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0250
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0250
     * @tc.desc      Verify that the messageOptions.weight parameter type of Popup is FontWeight:Medium
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0250 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent025");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0250"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0250 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0530
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0530
     * @tc.desc      Verify the shadow of Popup, radius parameter type Resource:r(app.media.string ") Reference "100vp"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0530 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent053");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0530"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0530 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1650
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1650
     * @tc.desc      Validation Popup CustomPopupOptions, shadow parameter types ShadowStyle OUTER_DEFAULT_SM
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1650 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent165");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1650"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1650 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1670
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1670
     * @tc.desc      Verify the Popup CustomPopupOptions. The shadow ShadowStyleOUTER_DEFAULT_LG parameter types
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1670 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent167");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1670"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1670 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0260
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0260
     * @tc.desc      Verify that Popup has the messageOptions.weight parameter type FontWeight:Bold
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0260 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent026");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0260"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0260 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0560
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0560
     * @tc.desc      Verify that the Popup shadow ShadowType parameter is of the type :COLOR
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0560 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent056");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0560"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0560 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1690
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1690
     * @tc.desc      Verify CustompopupOptions for Popup, shadow parameter type ShadowStyle:OUTER_FLOATING_MD
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1690 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent169");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1690"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1690 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0270
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0270
     * @tc.desc      Verify that the messageOptions weight parameter of Popup is FontWeight:Bolder
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0270 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent027");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0270"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0270 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1420
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1420
     * @tc.desc      Validation Popup CustomPopupOptions. Shadow (ShadowOptions) parameter types radius (number) : 30px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1420 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent142");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1420"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1420 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0800
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0800
     * @tc.desc      Verify that the backgroundBlurStyle. BlurStyle parameter type of Popup is :COMPONENT_THIN
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0800 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent080");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0800"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0800 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0570
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0570
     * @tc.desc      Verify that the shadow.ShadowType parameter of Popup is of type BLUR
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0570 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent057");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0570"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0570 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1660
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1660
     * @tc.desc      Verify CustomPopupOptions for Popup, shadow parameter type ShadowStyle OUTER_DEFAULT_MD
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1660 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent166");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1660"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1660 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1680
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1680
     * @tc.desc      Verify CustomPopupOptionS of Popup, Shadow parameter types ShadowStyle, OUTER_FLOATING_SM
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1680 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent168");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1680"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1680 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0590
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0590
     * @tc.desc      Verify the shadow,color parameter type string: "ee4508de"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0590 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent059");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0590"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0590 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1730
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1730
     * @tc.desc      Validation Popup CustomPopupOptions. BlurStyle backgroundBlurStyle parameter types: Thick
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1730 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent173");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1730"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1730 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0320
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0320
     * @tc.desc      Verify the messageOptions.family parameter type of Popup string:"HarmonyOS Sans"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0320 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent032");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0320"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0320 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1440
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1440
     * @tc.desc      Validation Popup CustomPopupOptions, shadow (ShadowOptions) parameter types radius (Resource) : reference "-30 px
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1440 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent144");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1440"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1440 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1720
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1720
     * @tc.desc      Validation Popup CustomPopupOptions, backgroundBlurStyle parameter types BlurStyle: Regular
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1720 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent172");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1720"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1720 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1430
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1430
     * @tc.desc      Validation Popup CustomPopupOptions. Shadow (ShadowOptions) parameter types radius (Resource) : refer to "100 vp"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1430 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent143");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1430"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1430 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1740
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1740
     * @tc.desc      Validation Popup CustomPopupOptions, backgroundBlurStyle BlurStyle parameter types: BACKGROUND_THIN
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1740 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent174");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1740"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1740 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0350
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0350
     * @tc.desc      Verify the Popup messageOptions,style parameter type FontStyle:Normal
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0350 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent035");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0350"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0350 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1460
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1460
     * @tc.desc      set autoCancel:false;showinSubWindow:true;onWillDismiss: true, Click empty and do not exit
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1460 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent146");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1460"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1460 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1710
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1710
     * @tc.desc      Validation Popup CustomPopupOptions, backgroundBlurStyle BlurStyle parameter types: Thin
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1710 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent171");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1710"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1710 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0340
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0340
     * @tc.desc      Verify the messageOptions family parameter type of Popup. Resource: references HarmonyOS Sans
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0340 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent034");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0340"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0340 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1490
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1490
     * @tc.desc      Validation Popup CustomPopupOptions, shadow (ShadowOptions) parameter types color (color) : color, Pink
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1490 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent149");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1490"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1490 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0810
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0810
     * @tc.desc      Verify that the type of the backgroundBlurStyle. BlurStyle parameter of Popup is COMPONENT_REGULAR
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0810 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent081");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0810"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0810 finish.`);
      done();
    })

    /*
      * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0290
      * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0290
      * @tc.desc      Verify that the messageOptions weight parameter of Popup is of type number:400
      */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0290 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent029");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0290"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0290 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0300
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0300
     * @tc.desc      Verify that the messageOptions.weight parameter type of Popup is string: 30px.
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0300 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent030");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0300"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0300 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0400
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0400
     * @tc.desc      Verify Popup's targetSpaceLength parameter type Resource: "15%"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent040");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0400"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0400 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1030
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1030
     * @tc.desc      Validation Popup CustomPopupOptions. TargetSpace parameter type string: 15%"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1030 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent103");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1030"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1030 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1050
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1050
     * @tc.desc      Validation Popup CustomPopupOptions targetSpace parameter types Resource: "15%"
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1050 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent105");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1050"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1050 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1160
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1160
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowPointPosition parameter types: START and placement: Right
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1160 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent116");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1160"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1160 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1190
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1190
     * @tc.desc      Validation Popup CustomPopupOptions. ArrowPointPosition parameter types: the END
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1190 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent119");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1190"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1190 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1320
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1320
     * @tc.desc      Verify that the CustomPopupOptions.arrowHeight parameter type Dimension (Percentage):10% for Popup
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1320 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent132");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent1320"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_1320 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0380
     * @tc.name      SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0380
     * @tc.desc      Verify Popup's targetSpace.Length parameter type string: "15%
     */
    it('SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentSpecialComponentsFormComponentTransparent/UIComponentSpecialComponentsFormComponentTransparent038");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentSpecialComponentsFormComponentTransparent0380"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_SPECIALCOMPONENTS_FORMCOMPONENT_TRANSPARENT_0380 finish.`);
      done();
    })
  })
}
