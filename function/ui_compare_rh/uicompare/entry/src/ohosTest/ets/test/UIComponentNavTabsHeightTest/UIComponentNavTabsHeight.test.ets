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
import { Component, Driver ,ON } from '@ohos.UiTest'

export default function UIComponentNavTabsHeight() {

  describe('UIComponentNavTabsHeight', () => {

    /*
* @tc.number  SUB_ACE_UI_COMPONENT_NAV_TABS_HEIGHT_0010
* @tc.name    SUB_ACE_UI_COMPONENT_NAV_TABS_HEIGHT_0010
* @tc.desc    1、创建tabs组件，设置tabs组件height为auto
              2、动态切换观察效果
*/
    it('SUB_ACE_UI_COMPONENT_NAV_TABS_HEIGHT_0010', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_HEIGHT_0010 start.`);
      Settings.createWindow("testability/pages/UIComponentNavTabsHeight/UIComponentNavTabsHeight001")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_NAV_TABS_HEIGHT_0010 finish.`);
      done()
    })

  })
}
