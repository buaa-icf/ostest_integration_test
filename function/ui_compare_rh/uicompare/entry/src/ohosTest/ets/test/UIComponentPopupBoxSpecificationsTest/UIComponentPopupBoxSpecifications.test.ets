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

export default function UIComponentPopupBoxSpecifications() {

  describe('UIComponentPopupBoxSpecifications', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0610
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0610
     * @tc.desc      Set the button size to only 50vp and snug to the right of the screen - bubble flicks down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0610 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications061");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0610"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0610 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0600
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0600
     * @tc.desc      Set the button size to only 50vp and snug to the right of the screen - bubble pops up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0600 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications060");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0600"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0600 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0590
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0590
     * @tc.desc      Set the button size to only 50vp and snug to the left of the screen - bubble flicks down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0590 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications059");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0590"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0590 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0620
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0620
     * @tc.desc      Set the button size to only 50vp and close to the top of the screen - bubble up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0620 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications062");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0620"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0620 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0690
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0690
     * @tc.desc      Set the button size to only 50vp and close to the top right of the screen - bubble flicks down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0690 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications069");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0690"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0690 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0640
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0640
     * @tc.desc      Set the button size to only 50vp and close to the bottom of the screen - the bubble pops up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0640', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0640 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications064");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0640"));
      let pointCenter = await SliderCom.getBoundsCenter();
      ;
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0640 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0650
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0650
     * @tc.desc      Set the button size to only 50vp and close to the bottom of the screen - the bubble pops down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0650', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0650 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications065");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0650"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0650 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0790
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0790
     * @tc.desc      Set the button size to only 50vp, arrowoffset set to a value of <0 and close to the top of the screen - the bubble pops down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0790 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications079");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0790"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0790 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0800
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0800
     * @tc.desc      Set the button size to only 50VP, set arrowofset to <0 and pop up against the bubble at the bottom of the screen
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0800 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications080");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0800"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0800 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0710
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0710
     * @tc.desc      Set the button size to only 50vp and snug to the bottom left of the screen - bubble pops down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0710 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications071");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0710"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0710 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0720
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0720
     * @tc.desc      Set the button size to only 50vp and snug to the bottom right of the screen - bubble pops up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0720 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications072");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0720"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0720 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0630
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0630
     * @tc.desc      Set the button size to only 50vp and close to the top of the screen - bubble flicks down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0630', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0630 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications063");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0630"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0630 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0700
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0700
     * @tc.desc      Set the button size to only 50VP and close to the bottom left of the screen - bubble pops up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0700 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications070");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0700"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0700 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0670
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0670
     * @tc.desc      Set the button size to only 50VD and close to the top left of the screen - bubble flicks down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0670 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications067");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0670"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0670 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0660
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0660
     * @tc.desc      Set the button size to only 50vP and close to the top left of the screen - bubble up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0660', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0660 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications066");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0660"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0660 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0740
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0740
     * @tc.desc      Set the button size to only 50vp, set arrowOffset to a value of <0 and stick to the left side of
     *               the screen - bubble up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0740 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications074");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0740"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0740 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0680
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0680
     * @tc.desc      Set the button size to only 50vp and close to the top right of the screen - bubble up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0680 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications068");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0680"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0680 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0730
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0730
     * @tc.desc      Set the button size to only 50vp and snug to the bottom right of the screen - bubble pops down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0730', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0730 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications073");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0730"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0730 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0830
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0830
     * @tc.desc      Set the button size to only 50vp and close to the right side of the screen, offset to {x:-100.y:0}
     *               and the bubble to the right
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0830 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications083");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0830"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0830 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0760
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0760
     * @tc.desc      Set the button size to only 50vp arrowOffset to a value of <0 and snug to the right of the screen -
     *               the bubble pops up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0760 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications076");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0760"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0760 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0750
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0750
     * @tc.desc      Set the button size to only 50vp arrowOffset set to a value of <0 and close to the left side of the
     *               screen - the bubble pops down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0750 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications075");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0750"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0750 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0780
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0780
     * @tc.desc      Set the button size to only 50VP arrowOffset set to a value of <0 and close to the top of
     *               the screen - the bubble pops up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0780 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications078");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0780"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0780 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0810
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0810
     * @tc.desc      Set the button size to only 50vp, arrowOffset to <0 and close to the bottom of the screen - bubble pops down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0810 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications081");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0810"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0810 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0770
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0770
     * @tc.desc      Set the button size to only 50 vp arrowOffset to a value of <0 and close to the right side of
     *               the screen - the bubble pops down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0770 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications077");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0770"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0770 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0840
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0840
     * @tc.desc      Set button size to only 50vp and close to the top of the screen, offset to {x:0.y:100) Bubble and up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0840 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications084");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0840"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0840 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0850
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0850
     * @tc.desc      Set button size to only 50vp and close to the bottom of the screen, offset to {x:0.y:-100} Bubble and down
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0850', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0850 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications085");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0850"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0850 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0820
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0820
     * @tc.desc      Set button size to only 50vp and close to the left of the screen, offset to {x:100.y:0} bubble and left
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0820 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications082");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0820"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0820 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0580
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0580
     * @tc.desc      Set the button size to only 50vp and snug to the left of the screen - bubble pops up
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0580 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxSpecifications/UIComponentPopupBoxSpecifications058");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("UIComponentPopupBoxSpecifications0580"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_SPECIFICATIONS_0580 finish.`);
      done();
    })
  })
}
