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

import { describe, afterEach, it } from '@ohos/hypium';
import Settings from '../model/Settings';
import windowSnap from '../model/snapShot';
import Logger from '../model/Logger';
import Utils from '../model/Utils';
import uiAppearance from '@ohos.uiAppearance';
import { Driver ,ON } from '@ohos.UiTest'

/*
 * UIComponentUISupportColor
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

export default function UIComponentUISupportColor() {

  describe('UIComponentUISupportColor', () => {


    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1010
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1010
     * @tc.desc      Verify that the Rating component dynamically switches between dark mode and light mode
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1010 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor101");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor1011"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1010 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050
     * @tc.desc      Verify that the Rating component follows the system shade change
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor105");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor1051"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050_1
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050_1
     * @tc.desc      Verify that the Rating component follows the system shade change
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050_1', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050_1 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor105");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor1051"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1050_1 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1020
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1020
     * @tc.desc      Verify that the Rating component dynamically switches dark mode - Dark mode switches normally
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1020 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor102");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor1021"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1020 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1040
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1040
     * @tc.desc      Verify that the Rating component is fixed in dark mode
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1040 start.`);
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor104");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor1041"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1040 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1000
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1000
     * @tc.desc      Verify that the Rating component dynamically switches between light mode and dark mode
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1000', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1000 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor100");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor1001"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      await Utils.sleep(2000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1000 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1030
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1030
     * @tc.desc      Verify that the Rating component is fixed in a light-colored mode
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1030 start.`);
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor103");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor1031"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_1030 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0990
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0990
     * @tc.desc      Verify that the Rating component dynamically switches light mode - light mode switches normally
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0990', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0990 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor099");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor0991"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0990 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0940
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0940
     * @tc.desc      Verify that the Radio component dynamically switches between dark mode and light mode
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0940', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0940 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor094")
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor0940"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0940 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0930
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0930
     * @tc.desc      Verify that the Radio component dynamically switches between light mode and dark mode
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0930', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0930 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor093")
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor0930"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0930 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0970
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0970
     * @tc.desc      Verify that the Radio component is fixed in dark mode
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0970', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0970 start.`);
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor097")
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor0970"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0970 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0980
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0980
     * @tc.desc      Verify that the Radio component follows the system shade
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0980', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0980 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor098");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor0980"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentUISupportColor0980');
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot('UIComponentUISupportColor0981');
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0980 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0920
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0920
     * @tc.desc      Verify that the Radio component dynamically switches Light mode - Light mode switches normally
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0920', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0920 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor092");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor0920"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_LIGHT, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0920 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0960
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0960
     * @tc.desc      Verify that the Radio component is fixed in light mode
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0960', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0960 start.`);
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor096");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor0960"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0960 finish.`);
      done();
    })

    /*
     * @tc.number    SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0950
     * @tc.name      SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0950
     * @tc.desc      Verify that the Radio component dynamically switches to dark mode - The dark mode switches normally
     */
    it('SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0950', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0950 start.`);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      Settings.createWindow("testability/pages/UIComponentUISupportColor/UIComponentUISupportColor095");
      await Utils.sleep(2000);
      let driver: Driver = Driver.create();
      let ButtonCom = await driver.findComponent(ON.id("UIComponentUISupportColor0950"));
      let pointButtonCenter = await ButtonCom.getBoundsCenter();
      await driver.click(pointButtonCenter.x, pointButtonCenter.y);
      await uiAppearance.setDarkMode(uiAppearance.DarkMode.ALWAYS_DARK, () => {
      });
      await Utils.sleep(1000);
      windowSnap.snapShot();
      await Utils.sleep(1000);
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_UISUPPORT_COLOR_0950 finish.`);
      done();
    })
  })
}
