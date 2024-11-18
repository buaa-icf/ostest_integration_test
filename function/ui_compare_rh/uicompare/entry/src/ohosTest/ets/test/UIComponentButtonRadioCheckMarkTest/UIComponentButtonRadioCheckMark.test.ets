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

export default function UIComponentButtonRadioCheckMark() {

  describe('UIComponentButtonRadioCheckMark', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0030
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0030
     * @tc.desc      Radio Indicates the selected type and the press state
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0030 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark003");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCheckMark0030"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.longClick(pointButtonCenter.x, pointButtonCenter.y)
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0030 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0010
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0010
     * @tc.desc      Radio is selected for the selected type
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark001");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0010 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0080
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0080
     * @tc.desc      Radio Indicates the selected type and the press state
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0080 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark008");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCheckMark0080"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.longClick(pointButtonCenter.x, pointButtonCenter.y)
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0080 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0060
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0060
     * @tc.desc      Radio is selected for the selected type
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0060 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark006");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0060 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0050
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0050
     * @tc.desc      Radio is selected for the selected type
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0050 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark005");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0050 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0100
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0100
     * @tc.desc      Radio is selected for the selected type
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0100 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark010");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0100 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0130
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0130
     * @tc.desc      Radio is selected for the selected type
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0130 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark013");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let backgroundColorButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCheckMark0130"));
      let borderColorButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCheckMark0131"));
      let indicatorColorButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCheckMark0132"));
      let backgroundColorButtonCenter = await backgroundColorButtonCom.getBoundsCenter();
      let borderColorButtonCenter = await borderColorButtonCom.getBoundsCenter();
      let indicatorColorButtonCenter = await indicatorColorButtonCom.getBoundsCenter();
      await driver.click(backgroundColorButtonCenter.x, backgroundColorButtonCenter.y)
      await Utils.sleep(1000);
      await driver.click(borderColorButtonCenter.x, borderColorButtonCenter.y)
      await Utils.sleep(1000);
      await driver.click(indicatorColorButtonCenter.x, indicatorColorButtonCenter.y)
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0130 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0140
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0140
     * @tc.desc      Radio Left unchecked for check type, non-select status Stroke color
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark014");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let backgroundColorButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCheckMark0140"));
      let borderColorButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCheckMark0141"));
      let indicatorColorButtonCom = await driver.findComponent(ON.id("UIComponentButtonRadioCheckMark0142"));
      let backgroundColorButtonCenter = await backgroundColorButtonCom.getBoundsCenter();
      let borderColorButtonCenter = await borderColorButtonCom.getBoundsCenter();
      let indicatorColorButtonCenter = await indicatorColorButtonCom.getBoundsCenter();
      await driver.click(backgroundColorButtonCenter.x, backgroundColorButtonCenter.y)
      await Utils.sleep(1000);
      await driver.click(borderColorButtonCenter.x, borderColorButtonCenter.y)
      await Utils.sleep(1000);
      await driver.click(indicatorColorButtonCenter.x, indicatorColorButtonCenter.y)
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0140 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0110
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0110
     * @tc.desc      Radio component. Set the checked property to true
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0110 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark011");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0110 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0120
     * @tc.name      SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0120
     * @tc.desc      Radio component. Set the checked property to false
     */
    it('SUB_ACE_UI_COMPONENT_BUTTON_RADIO_CHECKMARK_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0120 start.`);
      Settings.createWindow("testability/pages/UIComponentButtonRadioCheckMark/UIComponentButtonRadioCheckMark012");
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_BUTTON_RADI0_CHECKMARK_0120 finish.`);
      done();
    })
  })
}
