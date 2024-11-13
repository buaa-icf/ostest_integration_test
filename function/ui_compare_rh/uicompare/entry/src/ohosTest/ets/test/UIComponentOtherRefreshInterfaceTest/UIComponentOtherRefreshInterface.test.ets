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

export default function UIComponentOtherRefreshInterface() {

  describe('UIComponentOtherRefreshInterface', () => {




    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0140
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0140
     * @tc.desc    1、Refresh的offset参数：string :'0'设置friction:100
                   2、页面下拉
     */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0140', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0140 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterface/UIComponentOtherRefreshInterface0140")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0140 finish.`);
      done()
    })
    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0170
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0170
     * @tc.desc    1、Refresh的offset参数：nunber :-100,设置friction:100
                   2、页面下拉
    */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0170', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0170 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterface/UIComponentOtherRefreshInterface0170")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0170 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0180
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0180
     * @tc.desc   1、Refresh的offset参数：number :0 设置friction:100
                  2、页面下拉
    */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0180', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0180 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterface/UIComponentOtherRefreshInterface0180")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+200)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERFACE_0180 finish.`);
      done()
    })


  })
}
