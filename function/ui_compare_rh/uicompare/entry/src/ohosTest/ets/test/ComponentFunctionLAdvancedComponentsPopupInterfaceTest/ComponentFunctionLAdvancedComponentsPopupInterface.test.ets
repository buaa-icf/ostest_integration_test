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

export default function ComponentFunctionLAdvancedComponentsPopupInterface() {

  describe('ComponentFunctionLAdvancedComponentsPopupInterface', () => {


    /*
     * @tc.number    ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_0178
     * @tc.name      ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_0178
     * @tc.desc      Verify PopupOptions for Popup with the width parameter Dimension(Percentage):100%
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_0178', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_0178 start.`);
      Settings.createWindow("testability/pages/ComponentFunctionLAdvancedComponentsPopupInterface/ComponentFunctionLAdvancedComponentsPopupInterface0178");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("ComponentSpecialComponentsFormComponentTransparent0178"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_0178');
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_0178 finish.`);
      done();
    })

    /*
     * @tc.number    ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_01780
     * @tc.name      ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_01780
     * @tc.desc      Verify CustomPopupOptions for Popup. width the width parameter  Dimension(Percentage):100%
     */
    it('ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_01780', 0, async (done: Function) => {
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_01780 start.`);
      Settings.createWindow("testability/pages/ComponentFunctionLAdvancedComponentsPopupInterface/ComponentFunctionLAdvancedComponentsPopupInterface01780");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let SliderCom = await driver.findComponent(ON.id("ComponentFunctionLAdvancedComponentsPopupInterface01781"));
      let pointCenter = await SliderCom.getBoundsCenter();
      await driver.click(pointCenter.x, pointCenter.y);
      await Utils.sleep(3000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `ARKUI_COMPONENTFUNCTION_ADVANCEDCOMPONENTS_POPUP_INTERFACE_01780 finish.`);
      done();
    })
  })
}
