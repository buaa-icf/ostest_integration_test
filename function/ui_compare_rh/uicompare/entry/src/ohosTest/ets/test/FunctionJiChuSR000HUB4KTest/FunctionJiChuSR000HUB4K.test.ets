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

export default function FunctionJiChuSR000HUB4K() {

  describe('FunctionJiChuSR000HUB4K', () => {


    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0120
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0120
     * @tc.desc      promptAction message was set to string in the showToast
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0120 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K012");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0120"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0120 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0130
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0130
     * @tc.desc      promptAction message was set to string in the showToast
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0130 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K013");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0130"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0130 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0140
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0140
     * @tc.desc      promptAction message was set to string in the showToast
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0140 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K014");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0140"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0140 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0150
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0150
     * @tc.desc      promptAction message was set to string in the showToast
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0150 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K015");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0150"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0150 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0160
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0160
     * @tc.desc      promptAction message was set to string in the showToast
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0160 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K016");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0160"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0160 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0170
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0170
     * @tc.desc      promptAction message was set to string in the showToast
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0170 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K017");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0170"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0170 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0180
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0180
     * @tc.desc      promptAction message in the showToast command is set to the maximum length
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0180 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K018");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0180"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0180 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0190
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0190
     * @tc.desc      promptAction message was set to string in the showToast
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0190 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K019");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0190"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0190 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0250
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0250
     * @tc.desc      promptAction alignment in the showDialog is set to Default
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0250', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0250 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K025");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0250"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0250 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0200
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0200
     * @tc.desc      The non-mandatory value of the non-mandatory parameter in the options object in promptAction showDialog is verified
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0200 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K020");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0200"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0200 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0620
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0620
     * @tc.desc      promptAction showActionMenu Specifies that the color parameter under Buttons is set to the Resource type
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0620', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0620 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K062");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0620"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0620 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0260
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0260
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0260', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0260 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K026");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0260"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0260 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0610
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0610
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0610', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0610 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K061");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0610"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0610 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0230
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0230
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0230', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0230 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K023");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0230"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0230 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0210
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0210
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0210 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K021");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0210"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0210 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0220
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0220
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0220 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K022");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0220"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0220 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0240
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0240
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0240', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0240 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K024");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0240"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0240 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0270
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0270
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0270', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0270 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K027");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0270"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0270 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0280
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0280
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0280', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0280 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K028");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0280"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0280 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0290
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0290
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0290', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0290 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K029");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0290"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0290 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0320
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0320
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0320', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0320 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K032");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0320"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0320 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0310
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0310
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0310', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0310 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K031");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0310"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0310 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0300
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0300
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0300', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0300 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K030");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0300"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0300 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0330
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0330
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0330', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0330 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K033");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0330"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0330 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0370
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0370
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0370', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0370 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K037");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0370"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0370 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0380
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0380
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0380', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0380 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K038");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0380"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0380 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0340
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0340
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0340', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0340 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K034");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0340"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0340 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0360
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0360
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0360', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0360 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K036");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0360"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0360 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0350
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0350
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0350', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0350 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K035");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0350"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0350 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0560
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0560
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0560 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K056");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0560"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0560 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0390
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0390
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0390', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0390 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K039");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0390"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0390 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0400
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0400
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0400', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0400 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K040");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0400"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0400 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0420
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0420
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0420', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0420 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K042");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0420"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0420 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0410
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0410
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0410', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0410 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K041");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0410"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0410 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0430
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0430
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0430', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0430 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K043");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0430"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0430 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0450
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0450
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0450', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0450 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K045");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0450"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0450 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0440
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0440
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0440', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0440 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K044");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0440"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0440 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0470
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0470
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0470', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0470 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K047");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0470"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0470 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0480
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0480
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0480', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0480 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K048");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0480"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0480 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0460
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0460
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0460', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0460 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K046");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0460"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0460 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0490
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0490
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0490', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0490 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K049");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0490"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0490 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0500
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0500
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0500 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K050");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0500"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0500 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0520
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0520
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0520', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0520 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K052");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0520"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0520 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0510
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0510
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0510 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K051");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0510"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0510 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0530
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0530
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0530', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0530 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K053");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0530"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0530 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0540
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0540
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0540', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0540 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K054");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0540"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0540 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0550
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0550
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0550 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K055");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0550"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0550 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0580
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0580
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0580 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K058");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0580"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0580 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0570
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0570
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0570 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K057");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0570"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0570 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0590
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0590
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0590', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0590 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K059");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0590"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0590 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0600
     * @tc.name      SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0600
     * @tc.desc      promptAction alignment in the showDialog is set to Topstart
     */
    it('SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0600', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0600 start.`);
      Settings.createWindow("testability/pages/FunctionJiChuSR000HUB4K/FunctionJiChuSR000HUB4K060");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("FunctionJiChuSR000HUB4K0600"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_FUNCTION_JICHU_SR000HUB4K_0600 finish.`);
      done();
    })
  })
}
