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

export default function ComponentLayoutCommonPixelTest001() {

  describe('ComponentLayoutCommonPixelTest001', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0710
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Swiper component displays 7 components on one page
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0710', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0710 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel001")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0710 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0720
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Swiper component displays 8 components on one page
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0720', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0720 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel002")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0720 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0740
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      The Swiper component does not activate the navigation point indicator
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0740', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0740 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel003")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0740 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0750
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Do not set disabling Swipe for the Swiper component, check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0750 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel004")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0750 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0760
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Swiper component enables switch arrow
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0760 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel005")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0760 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0790
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Delete the SwiperItem sub component with index=0 and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0790', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0790 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel006")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0790 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0800
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Delete the SwiperItem sub component with index=2 and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0800', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0800 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel007")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0800 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0810
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Delete the SwiperItem sub component with index=6 and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0810', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0810 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel008")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0810 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0820
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Add a SwinerItem subcomponent with floating-point width and height values at index=0 position, and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0820', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0820 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel009")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0820 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0830
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Add a SwinerItem subcomponent with floating-point width and height values at index=2 position, and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     * @tc.type
     * @tc.size
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0830', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0830 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel010")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0830 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0840
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Add a SwinerItem subcomponent with floating-point width and height values at index=6 position, and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0840', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0840 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel011")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0840 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0870
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Set the disable Swipe property to 'ture' in the Swiper component to check if there are any pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0870', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0870 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel012")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0870 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0890
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Set the width and height of the Swiper component to floating-point numbers, and check if the layout width and height are rounded to the nearest whole
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0890', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0890 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel013")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_0890 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1020
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Delete the FlowItem sub component with index=0 and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1020', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1020 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel014")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1020 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1030
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Delete the FlowItem sub component with index=2 and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1030', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1030 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel015")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1030 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1040
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Delete the FlowItem sub component with index=6 and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1040', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1040 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel016")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1040 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1050
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Add a FlowItem subcomponent with floating-point width and height values at index=0 position, and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1050', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1050 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel017")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1050 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1060
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Add a FlowItem subcomponent with floating-point width and height values at index=2 position, and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     * @tc.type
     * @tc.size
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1060', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1060 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel018")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1060 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1070
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Add a FlowItem subcomponent with floating-point width and height values at index=6 position, and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1070', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1070 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel019")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1070 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1140
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      Set the width and height of the WaterFlow component to floating-point numbers, and check if the layout width and height are rounded to the nearest whole
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1140', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1140 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel020")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1140 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1150
     * @tc.name      LAYOUT_COMMON_PIXEL
     * @tc.desc      FlowItem: Set the width and height to floating point numbers and check if there are pixel gaps in the layout
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1150', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1150 start.`);
      Settings.createWindow("testability/pages/ComponentLayoutCommonPixel/ComponentLayoutCommonPixel021")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_LAYOUT_COMMON_PIXEL_1150 finish.`);
      done()
    })
  })
}
