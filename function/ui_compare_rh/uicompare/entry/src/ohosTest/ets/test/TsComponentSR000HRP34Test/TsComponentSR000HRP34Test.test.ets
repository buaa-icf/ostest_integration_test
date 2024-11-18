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

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'
import { Driver, ON } from '@kit.TestKit'
import { KeyCode } from '@kit.InputKit'

/*
 * TsComponentSR000HRP34
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

export default function TsComponentSR000HRP34() {

  describe('TsComponentSR000HRP34', () => {


    /*
     * @tc.number    SUB_ACE_TS_COMPONENT_SR000HRP34_124
     * @tc.name      SUB_ACE_TS_COMPONENT_SR000HRP34_124
     * @tc.desc      Regular call: DatePickerDialog-textStyle-PickerTextStyle-color-Color.Blue
     */
    it('SUB_ACE_TS_COMPONENT_SR000HRP34_124', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TS_COMPONENT_SR000HRP34_124 start.`);
      Settings.createWindow("testability/pages/TsComponentSR000HRP34Test/TsComponentSR000HRP34Test124")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('TsComponentSR000HRP34_124_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_TS_COMPONENT_SR000HRP34_124 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_TS_COMPONENT_SR000HRP34_125
     * @tc.name      SUB_ACE_TS_COMPONENT_SR000HRP34_125
     * @tc.desc      Regular call: DatePickerDialog-textStyle-PickerTextStyle-color-0x0000ff
     */
    it('SUB_ACE_TS_COMPONENT_SR000HRP34_125', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TS_COMPONENT_SR000HRP34_125 start.`);
      Settings.createWindow("testability/pages/TsComponentSR000HRP34Test/TsComponentSR000HRP34Test125")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('TsComponentSR000HRP34_125_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_TS_COMPONENT_SR000HRP34_125 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_TS_COMPONENT_SR000HRP34_126
     * @tc.name      SUB_ACE_TS_COMPONENT_SR000HRP34_126
     * @tc.desc      Regular call: DatePickerDialog-textStyle-PickerTextStyle-color-"rgb(255,0,0)"
     */
    it('SUB_ACE_TS_COMPONENT_SR000HRP34_126', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TS_COMPONENT_SR000HRP34_126 start.`);
      Settings.createWindow("testability/pages/TsComponentSR000HRP34Test/TsComponentSR000HRP34Test126")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('TsComponentSR000HRP34_126_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_TS_COMPONENT_SR000HRP34_126 finish.`);
      done()
    })

    /*
     * @tc.number    SUB_ACE_TS_COMPONENT_SR000HRP34_127
     * @tc.name      SUB_ACE_TS_COMPONENT_SR000HRP34_127
     * @tc.desc      Regular call: DatePickerDialog-textStyle-PickerTextStyle-color-$r(app.color blue)
     */
    it('SUB_ACE_TS_COMPONENT_SR000HRP34_127', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_TS_COMPONENT_SR000HRP34_127 start.`);
      Settings.createWindow("testability/pages/TsComponentSR000HRP34Test/TsComponentSR000HRP34Test127")
      await Utils.sleep(1000)
      let driver: Driver = Driver.create();
      let datePickerButton = await driver.findComponent(ON.id('TsComponentSR000HRP34_127_001'));
      await datePickerButton.click();
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.info('TEST', `SUB_ACE_TS_COMPONENT_SR000HRP34_127 finish.`);
      done()
    })
  })
}
