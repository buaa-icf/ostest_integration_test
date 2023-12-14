/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

import { describe, it, expect } from '@ohos/hypium'
import abilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry'
import Want from '@ohos.app.ability.Want'
import { Driver, ON } from '@ohos.UiTest'

// 启动APP
async function startApp() {
  let want: Want = {
    bundleName: abilityDelegatorRegistry.getArguments().bundleName,
    abilityName: 'EntryAbility'
  }
  await abilityDelegatorRegistry.getAbilityDelegator().startAbility(want)
}

function sleep(time: number) {
  return new Promise<void>((resolve: Function) => setTimeout(resolve, time));
}

// 通用测试case
async function commonTestCase(pageBtnId: string, compId: string) {
  // 启动App
  await startApp()
  // 创建驱动器
  let driver = Driver.create()
  await driver.delayMs(5000) // 延迟1s
  // 点击跳转用例页面
  let bk = await driver.findComponent(ON.id(pageBtnId))
  while (bk == null) {
    bk = await driver.findComponent(ON.id(pageBtnId))
  }
  await bk.click()
  // 跳转页面耗时
  await driver.delayMs(1000)
  // 如果是benchmark09和benchmark10，滑动到底部
  if (pageBtnId === 'benchmark09' || pageBtnId === 'benchmark10') {
    let scroll = await driver.findComponent(ON.id(`scroll_${pageBtnId}`))
    await scroll.scrollToBottom(40000)
  }
  // 寻找操作组件
  if (compId.length > 0) {
    let firstBtn = await driver.findComponent(ON.id(compId))
    await firstBtn.click()
  }
  // **当前页面跳转or显示有转场动画时间or按钮点击事件处理，需要延迟**
  await driver.delayMs(3000)
}

export default function IndexTest() {
  describe('IndexTest', () => {

    /**
     * @tc.desc  : Benchmark case that click the button
     * @tc.name  : benchmark01_click_button
     * @tc.number: Benchmark01
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark01_click_button', 0, async () => {
      await commonTestCase('benchmark01', 'first_btn') // 用例1-点击某一按钮
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that start app
     * @tc.name  : benchmark01_click_button
     * @tc.number: Benchmark01_0-6
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark01_start_app', 0, async () => {
      await commonTestCase('benchmark01', '') // 用例5、9-启动应用
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that click the button
     * @tc.name  : benchmark02_click_button
     * @tc.number: Benchmark02
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark02_click_button', 0, async () => {
      await commonTestCase('benchmark02', 'first_btn') // 用例2-点击某一按钮
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that start app
     * @tc.name  : benchmark02_start_app
     * @tc.number: Benchmark06_10-15
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark02_start_app', 0, async () => {
      await commonTestCase('benchmark02', '') // 用例6、10、15-启动应用
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that click the button
     * @tc.name  : benchmark03_click_button
     * @tc.number: Benchmark03
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark03_click_button', 0, async () => {
      await commonTestCase('benchmark03', 'only_btn') // 用例3-点击button
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that start app
     * @tc.name  : benchmark03_start_app
     * @tc.number: Benchmark07_11
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark03_start_app', 0, async () => {
      await commonTestCase('benchmark03', '') // 用例7、11-启动应用
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that click the button
     * @tc.name  : benchmark04_click_button
     * @tc.number: Benchmark04
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark04_click_button', 0, async () => {
      await commonTestCase('benchmark04', 'only_btn') // 用例4-点击button
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that start app
     * @tc.name  : benchmark04_start_app
     * @tc.number: Benchmark08_12
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark04_start_app', 0, async () => {
      await commonTestCase('benchmark04', '') // 用例8、12-启动应用
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that push page
     * @tc.name  : benchmark05_push_page
     * @tc.number: Benchmark13
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it("benchmark05_push_page", 0, async () => {
      await commonTestCase('benchmark05', 'id_0') // 用例13-页面1跳转页面2（有页面转场动画）
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that start app
     * @tc.name  : benchmark06_start_app
     * @tc.number: Benchmark14
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark06_start_app', 0, async () => {
      await commonTestCase('benchmark06', '') // 用例14-启动应用
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that change the title of button
     * @tc.name  : benchmark07_change_title
     * @tc.number: Benchmark15
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark07_change_title', 0, async () => {
      await commonTestCase('benchmark07', 'first_btn') // 用例15-点击button改变button文字
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that change the title of button
     * @tc.name  : benchmark08_change_title
     * @tc.number: Benchmark16
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark08_change_title', 0, async () => {
      await commonTestCase('benchmark08', 'first_btn') // 用例16-点击button改变button文字
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that scroll to bottom
     * @tc.name  : benchmark09_change_visible
     * @tc.number: Benchmark17
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it("benchmark09_change_visible", 0, async () => {
      await commonTestCase('benchmark09', '') // 用例17-滑动到底部
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that scroll to bottom
     * @tc.name  : benchmark10_change_visible
     * @tc.number: Benchmark18
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark10_change_visible', 0, async () => {
      await commonTestCase('benchmark10', '') // 用例18-滑动到底部
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that change the size of button
     * @tc.name  : benchmark11_change_size
     * @tc.number: Benchmark19
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark11_change_size', 0, async () => {
      await commonTestCase('benchmark11', 'first_btn') // 用例19-点击button改变button宽高
      expect(1).assertEqual(1) // 断言
    })

    /**
     * @tc.desc  : Benchmark case that change the size of button
     * @tc.name  : benchmark12_change_size
     * @tc.number: Benchmark20
     * @tc.level : Level 2
     * @tc.size  : MediumTest
     * @tc.type  : Function
     */
    it('benchmark12_change_size', 0, async () => {
      await commonTestCase('benchmark12', 'first_btn') // 用例20-点击button改变button宽高
      expect(1).assertEqual(1) // 断言
    })

  })
}