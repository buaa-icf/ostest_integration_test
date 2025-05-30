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
import Settings from './model/Settings'
import windowSnap from './model/snapShot'
import Logger from './model/Logger'
import Utils from './model/Utils'
import {
  UiComponent,
  UiDriver,
  Component,
  Driver,
  UiWindow,
  ON,
  BY,
  MatchPattern,
  DisplayRotation,
  ResizeDirection,
  WindowMode,
  PointerMatrix
} from '@ohos.UiTest';

/*
 * demoTest_001:更改page路由
 * demoTest_002:更改page路由，像素密度
 * demoTest_003:更改page路由，窗口大小，位置，像素密度
 * demoTest_004:更改page路由，页面内元素属性
 * demoTest_005:更改page路由，注入点击事件
 *
 * demoTest_004:更改属性需要配合页面路由配置globalThis.value.message
 * demoTest_005:注入事件,引用'@ohos.UiTest',findComponent需要根据页面路由内组件配置情况更改
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


let TAG = 'RunTimeTest';

function sleep(ms: number) {
  return new Promise<string>(resolve => setTimeout(resolve, ms));
}

export default function demoTest() {


  describe('demoTest', () => {

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

    it('demoTest_001', 0, async (done: Function) => {
      //更改page路由
      Settings.createWindow("testability/pages/demo")
      await Utils.sleep(1000)
      windowSnap.snapShot()
      await Utils.sleep(1000)
      done()
    })

    /*
     * @tc.number  TestCase_7b95b49b1c6b41b0a17704449c409e0d
     * @tc.name    TestCase_7b95b49b1c6b41b0a17704449c409e0d
     * @tc.desc    Verify whether the soft keyboard closes after XComponent gains focus (via Tab key) when the keyboard is active by default
     * @tc.level   0
     */
    it('TestCase_7b95b49b1c6b41b0a17704449c409e0d', 0, async (done: Function) => {
      TAG = 'TestCase_7b95b49b1c6b41b0a17704449c409e0d';
      Logger.info(`[${TAG}]`, `Case start.`);
      Settings.createWindow('testability/pages/TestCase/TestCase001');
      await Utils.sleep(1000);
      expect(1).assertEqual(1);
      done();
    })

   
  })
}
