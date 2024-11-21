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

import { afterEach, describe, expect, it } from '@ohos/hypium'
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

export default function UIComponentPopupBoxAttribute() {

  describe('UIComponentPopupBoxAttribute', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0510
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0510
     * @tc.desc      The custom popup set is the generic showInSubWindow=false
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0510', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0510 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxAttribute/UIComponentPopupBoxAttribute051");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxAttribute0510"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(5000);
      let textCom = await driver.findComponent(ON.id("UIComponentPopupBoxAttribute0511"));
      let cc = await textCom.getText();
      if (!JSON.stringify(cc).includes('弹框开启后已定时关闭')) {
        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0510 error.`);
        done();
      }
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0510 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0500
     * @tc.name      SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0500
     * @tc.desc      The custom popup set is the generic showInSubWindow=true
     */
    it('SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0500', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0500 start.`);
      Settings.createWindow("testability/pages/UIComponentPopupBoxAttribute/UIComponentPopupBoxAttribute050");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentPopupBoxAttribute0500"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(5000);
      let textCom = await driver.findComponent(ON.id("UIComponentPopupBoxAttribute0501"));
      let cc = await textCom.getText();
      if (!JSON.stringify(cc).includes('弹框开启后已定时关闭')) {
        Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0500 error.`);
        done();
      }
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_POPUPBOX_ATTRIBUTE_0500 finish.`);
      done();
    })
  })
}
