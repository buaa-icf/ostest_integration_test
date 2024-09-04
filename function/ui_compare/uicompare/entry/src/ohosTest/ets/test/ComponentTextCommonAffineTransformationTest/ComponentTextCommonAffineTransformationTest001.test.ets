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

export default function ComponentTextCommonAffineTransformationTest001() {

  describe('ComponentTextCommonAffineTransformationTest001', () => {
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
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0550
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea/search Set zoom+rotation+translation properties, input type to Number, long press/double-click text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0550', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0550 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation001")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0550 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0560
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea/search Set zoom+rotation+translation properties, input type to Number, long press/double-click text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0560', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0560 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation002")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0560 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0570
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea/search Set zoom+rotation+translation properties, input type set to PhoneNumber, long press/double-click text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0570', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0570 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation003")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0570 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0580
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea/search Set zoom+rotation+translation properties, input type set to PhoneNumber, click on text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0580', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0580 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation004")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0580 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0670
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea/search Set zoom+rotation+translation properties, input type set to PhoneNumber, click on text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0670', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0670 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation005")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0670 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0680
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea/search Set zoom+rotation+translation properties, default cursor width and font size, click on text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0680', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0680 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation006")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0680 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0690
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea/search Set zoom+rotation+translation properties, change cursor width and font size, long press/double-click text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0690', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0690 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation007")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0690 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0700
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea/search Set zoom+rotation+translation properties, change cursor width and font size, long press/double-click text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0700', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0700 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation008")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0700 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0750
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea: Set zoom+rotation+translation+transformation matrix properties, set inline mode, long press/double-click text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0750', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0750 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation009")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0750 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0760
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea: Set zoom+rotation+translation+transformation matrix properties, set inline mode, long press/double-click text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0760', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0760 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation010")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0760 finish.`);
      done()
    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0770
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea Set zoom+rotation+translation+transformation matrix properties, set normal mode, long press/double-click text content, observe cursor menu changes
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0770', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0770 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation011")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0770 finish.`);
      done()

    })

    /**
     * @tc.number    SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE-TRANSFORMATION_0780
     * @tc.name      ROWCOLUMN_SIDEBARCONTAINER_BLURSTLYE
     * @tc.desc      TextInput/textarea: Set the properties of the zoom+rotation+translation+transformation matrix, set the normal mode, click on the text content, and observe the changes in the cursor menu
     * @tc.level     Level 3
     */
    it('SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0780', 0, async (done: Function) => {
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0780 start.`);
      Settings.createWindow("testability/pages/ComponentTextCommonAffineTransformation/ComponentTextCommonAffineTransformation012")
      await Utils.sleep(2000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.info('TEST', `SUB_ACE_UI_COMPONENT_TEXT_COMMON_AFFINE_TRANSFORMATION_0780 finish.`);
      done()
    })
  })
}
