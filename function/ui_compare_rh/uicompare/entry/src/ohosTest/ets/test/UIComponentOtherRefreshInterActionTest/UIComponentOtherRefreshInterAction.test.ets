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

export default function UIComponentOtherRefreshInterAction() {

  describe('UIComponentOtherRefreshInterAction', () => {




    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0380
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0380
     * @tc.desc    1、进入list builder不设置宽高页面
              2、下拉组件刷新
    */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0380', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0380 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterAction/UIComponentOtherRefreshInterAction0380")
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
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0380 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0400
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0400
     * @tc.desc    1、进入list设置高度大于刷新区域页面
                   2、下拉组件刷新
 */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0400', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0400 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterAction/UIComponentOtherRefreshInterAction0400")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+400)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0400 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0390
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0390
     * @tc.desc    1、进入list固定高度页面
                    2、下拉组件刷新
   */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0390', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0390 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterAction/UIComponentOtherRefreshInterAction0390")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+400)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0390 finish.`);
      done()
    })

    /*
     * @tc.number  SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0410
     * @tc.name    SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0410
     * @tc.desc    1、进入list builder宽高设置百分比
                   2、下拉组件刷新
     */
    it('SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0410', 0, async (done: Function) => {
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0410 start.`);
      Settings.createWindow("testability/pages/UIComponentOtherRefreshInterAction/UIComponentOtherRefreshInterAction0410")
      await Utils.sleep(1000)
      let driver : Driver = Driver.create();
      await driver.delayMs(1000)
      let refreshListItem0 :Component = await driver.findComponent(ON.id('0'))
      await Utils.sleep(200)
      let pos = await refreshListItem0.getBoundsCenter()
      await Utils.sleep(100)
      await driver.swipe(pos.x,pos.y,pos.x,pos.y+400)
      await Utils.sleep(3000)
      windowSnap.snapShot()
      await Utils.sleep(2000)
      Logger.error('TEST', `SUB_ACE_UI_COMPONENT_OTHER_REFRESH_INTERACTION_0410 finish.`);
      done()
    })
  })
}
