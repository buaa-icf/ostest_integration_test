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

import { afterEach, describe, it } from '@ohos/hypium';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';
import { Driver, ON } from '@ohos.UiTest';

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


export default function UITestCaseTest() {

  describe('UITestCaseTest', () => {


    /*
     * @tc.number    TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_1
     * @tc.name      TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_1
     * @tc.desc      indicatorBuilder add Popup component, can be accepted to click out of focus pop bubble, click the bubble cancel button can close the bubble
     */
    it('TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_1', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_1 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase001");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UITestCase0010"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_1 finish.`);
      done();
    })

    /*
     * @tc.number    TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_2
     * @tc.name      TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_2
     * @tc.desc      indicatorBuilder add Popup component, can be accepted to click out of focus pop bubble, click the bubble cancel button can close the bubble
     */
    it('TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_2', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_2 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase001");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UITestCase0010"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      let bounds = await ButtonCom.getBounds();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      await driver.click(pointButtonCenter.x, bounds.top - 20);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_6eb28b4e7e20410ea8a92fc7bb5809fc_2 finish.`);
      done();
    })

    /*
     * @tc.number    TestCase_8f7f773ecd634e0299eeaf06572766d6
     * @tc.name      TestCase_8f7f773ecd634e0299eeaf06572766d6
     * @tc.desc      indicatorBuilder value set to image Radio set to 50vp,image passed 20vp image
     */
    it('TestCase_8f7f773ecd634e0299eeaf06572766d6', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_8f7f773ecd634e0299eeaf06572766d6 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase002");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UITestCase0020"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_8f7f773ecd634e0299eeaf06572766d6 finish.`);
      done();
    })

    /*
     * @tc.number    TestCase_d087a60e6a7b48ca972deccca5b79d53
     * @tc.name      TestCase_d087a60e6a7b48ca972deccca5b79d53
     * @tc.desc      indicatorBuilder value is set to image, Radio is set to 50,image is passed 100vp image
     */
    it('TestCase_d087a60e6a7b48ca972deccca5b79d53', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_d087a60e6a7b48ca972deccca5b79d53 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase003");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UITestCase0030"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_d087a60e6a7b48ca972deccca5b79d53 finish.`);
      done();
    })

    /*
     * @tc.number    TestCase_bf3141f96575428e895b380b081b0d89
     * @tc.name      TestCase_bf3141f96575428e895b380b081b0d89
     * @tc.desc      Add Checkbox to indicatorBuilder, click Checkbox to be selected
     */
    it('TestCase_bf3141f96575428e895b380b081b0d89', 0, async (done: Function) => {
      Logger.info('TEST', `TestCase_bf3141f96575428e895b380b081b0d89 start.`);
      Settings.createWindow("testability/pages/UITestCase/UITestCase004");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UITestCase0041"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `TestCase_bf3141f96575428e895b380b081b0d89 finish.`);
      done();
    })
  })
}
