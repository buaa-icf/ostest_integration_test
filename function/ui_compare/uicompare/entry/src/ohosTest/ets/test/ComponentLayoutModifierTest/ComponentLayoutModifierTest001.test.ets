  /*
 * Copyright (c) 2024 Shenzhen Kaihong Digital Industry Development Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { describe, beforeAll, beforeEach, afterEach, afterAll, it, expect } from '@ohos/hypium'
import Settings from '../model/Settings'
import windowSnap from '../model/snapShot'
import Logger from '../model/Logger'
import Utils from '../model/Utils'

export default function ComponentLayoutModifierTest001() {

  describe('ComponentLayoutModifierTest001', () => {
    afterEach(async (done: Function) => {
      if (Settings.windowClass == undefined) {
        return
      }

      Settings.windowClass.destroyWindow((err) => {
        if (err.code) {
          Logger.error('TEST', `Failed to destroy the window. Cause : ${JSON.stringify(err)}`)
          return;
        }
        Logger.info('TEST', `Succeeded in destroy the window.`);
      })
      await Utils.sleep(1000);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0010
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom Modifier to a component, and the corresponding properties of the component will take effect (span and gridCOOffset)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0010', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0010 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier001")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0010 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0020
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom modifier to a component, and the corresponding properties of the component will take effect (span xs and gridCOOffset xs)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0020 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier002")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0020 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0030
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom modifier to a component, and the corresponding properties of the component will take effect (span sm and gridCOOffset sm)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0030 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier003")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0030 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0040
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom modifier to a component, and the corresponding properties of the component will take effect (span md and gridCOOffset md)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0040 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier004")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0040 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0050
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom modifier to a component, and the corresponding properties of the component will take effect (span lg and gridCOOffset lg)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0050 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier005")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0050 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0060
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom modifier to a component, and the corresponding properties of the component will take effect (span xl and gridCOOffset xl)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0060 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier006")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0060 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0070
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom modifier to a component, and the corresponding properties of the component will take effect (span xxl and gridCOOffset xxl)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0070 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier007")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0070 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0080
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom modifier to a component, and the corresponding properties of the component will take effect (span xxl and gridCOOffset xxl)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0080', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0080 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier008")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0080 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0090
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom Modifier to a component, and the corresponding property of the component takes effect (order sm)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0090', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0090 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier009")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0090 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0100
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom Modifier to a component, and the corresponding property of the component takes effect (order sm)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0100', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0100 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier010")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0100 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0110
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set a custom Modifier to a component, and the corresponding properties of the component will take effect (span xs and gridCOOffset). Set a custom Modifier to two components, and when the Modifier properties change, both components will take effect simultaneously
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0110', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0110 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier011")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0110 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0120
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier, new MyModifier(). span ({xs: xx}) dynamically switches without perception
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0120', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0120 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier012")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0120 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0130
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Setting attributiModifier twice is the union of attributes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0130', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0130 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier013")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0130 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0140
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Simultaneously set AttributiModifier (myModifierl class) and AttributeModifier (AttributeModifier<XXXAttribute>interface)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0140 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier014")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0140 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0150
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      GridColModifier， Set two setGroups in the same attributiModifier (myModifierl class)
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0150 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier015")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0150 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      NavDestinationModifier， Set a custom Modifier to a component, and the corresponding properties of the component will take effect
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier016")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0160 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      NavDestinationModifier， Custom modifier attribute value changes, component corresponding attribute takes effect
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier017")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0170 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      NavDestinationModifier， A custom modifier for two components
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier018")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0180 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      NavDestination Modifier, new MyModifier(). hideTitleBar (xx) dynamically switches without perception
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier019")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0190 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      NavDestinationModifier， Setting attributiModifier twice is the union of attributes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier020")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0200 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      NavDestinationModifier， Mixed settings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier021")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0210 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220
     * @tc.name      LAYOUT_MODIFIER
     * @tc.desc      NavDestinationModifier， Mixed settings
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutModifier/ComponentLayoutModifier022")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_MODIFIER_0220 finish.`);
      done()
    })
  })
}
