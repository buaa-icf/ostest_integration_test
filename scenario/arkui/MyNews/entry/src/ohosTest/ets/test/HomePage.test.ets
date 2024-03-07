/*
 * Copyright (c) 2023 Southeast University.
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


import hilog from '@ohos.hilog';
import { describe, expect, it } from '@ohos/hypium';
import abilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';
import { Component, Driver, ON } from '@ohos.UiTest';
import Want from '@ohos.app.ability.Want';

const TAG: string = '[Scenario_MyNews_HomePageTest]'
const DOMAIN: number = 0xF811
const BUNDLE: string = 'MyNews_'

let delegator: abilityDelegatorRegistry.AbilityDelegator = abilityDelegatorRegistry.getAbilityDelegator()
let driver: Driver = Driver.create()

/* 通过id验证按钮是否存在，若存在则执行一次点击操作，返回按钮对象供后续操作 */
const checkBtnIdAndClk = async (btnId: string): Promise<void> => {
  await driver.assertComponentExist(ON.type('Button').id(btnId))
  let btn: Component = await driver.findComponent(ON.type('Button').id(btnId))
  await btn.click()
  await driver.delayMs(1000)
}

export default function HomePageTest() {
  describe('HomePageTest', () => {
    /**
     * 拉起应用，进入首页
     */
    it('StartAbility_001', 0, async (done: Function) => {
      hilog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_001 begin')
      const want: Want = {
        bundleName: 'com.samples.mynews',
        abilityName: 'EntryAbility'
      }
      try {
        await delegator.startAbility(want)
        await driver.delayMs(1000)
        await checkBtnIdAndClk('indexHomePageBtn')
        await driver.assertComponentExist(ON.id('homePage'))
        hilog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_001 entered home page')
        done()
      } catch (exception) {
        hilog.info(DOMAIN, TAG, BUNDLE + `StartAbility_001 exception = ${JSON.stringify(exception)}`)
        expect().assertFail()
        done()
      }
      hilog.info(DOMAIN, TAG, BUNDLE + 'StartAbility_001 end')
    })

    /**
     * 顶栏按钮功能测试
     */
    it('HomePageTopBarBtnFunction_001', 0, async (done: Function) => {
      hilog.info(DOMAIN, TAG, BUNDLE + 'HomePageTopBarBtnFunction_001 begin')
      /* 依次测试顶栏按钮功能 */
      // [0]：待查找、点击的按钮ID；[1]：点击后用于判断按钮功能是否正常的组件ID；[2]：返回首页的按钮ID
      const btnList: string[][] = [
      // ['homePageTopBarRewardBtn', '', ''], // `阅读奖励`，暂未添加点击事件处理
        ['homePageTopBarSearchBox', 'searchPage', 'searchPageReturnBtn'], // `搜索框`
        ['homePageTopBarPublishBtn', 'publishPage', 'publishPageReturnBtn']// `发布`
      ]
      try {
        for (let i = 0; i < btnList.length; i++) {
          await checkBtnIdAndClk(btnList[i][0]) // 检查按钮是否存在并点击
          hilog.info(DOMAIN, TAG, BUNDLE + `HomePageTopBarBtnFunction_001 button ${btnList[i][0]} is found and clicked`)
          await driver.assertComponentExist(ON.id(btnList[i][1])) // 检查所跳转的页面内容是否匹配
          hilog.info(DOMAIN, TAG, BUNDLE + `HomePageTopBarBtnFunction_001 button ${btnList[i][0]} function test passed`)
          await checkBtnIdAndClk(btnList[i][2]) // 返回首页
        }
        done()
      } catch (exception) {
        hilog.info(DOMAIN, TAG, BUNDLE + `HomePageTopBarBtnFunction_001 exception = ${JSON.stringify(exception)}`)
        expect().assertFail()
        done()
      }
      hilog.info(DOMAIN, TAG, BUNDLE + 'HomePageTopBarBtnFunction_001 end')
    })

    /**
     * 选项卡栏功能测试（是否正确加载及是否可滑动）
     */
    it('HomePageTabSelectorFunction_001', 0, async (done: Function) => {
      hilog.info(DOMAIN, TAG, BUNDLE + 'HomePageTabSelectorFunction_001 begin')
      /* 检查选项卡是否正确加载，测试左右滑动功能 */
      try {
        await driver.assertComponentExist(ON.id('homePageTabSelector'))
        let tabSelector = await driver.findComponent(ON.id('homePageTabSelector')) // 获取选项卡栏对象
        hilog.info(DOMAIN, TAG, BUNDLE + `HomePageTabSelectorFunction_001 tab selector is found`)
        expect(await tabSelector.isScrollable()).assertTrue() // 检查是否可滑动（左右滑动没有提供API）
        hilog.info(DOMAIN, TAG, BUNDLE + `HomePageTabSelectorFunction_001 tab selector is scrollable`)
        done()
      } catch (exception) {
        hilog.info(DOMAIN, TAG, BUNDLE + `HomePageTabSelectorFunction_001 exception = ${JSON.stringify(exception)}`)
        expect().assertFail()
        done()
      }
      hilog.info(DOMAIN, TAG, BUNDLE + 'HomePageTabSelectorFunction_001 end')
    })

    /**
     * 选项卡栏功能测试（页面切换功能）
     */
    it('HomePageTabSelectorFunction_002', 0, async (done: Function) => {
      hilog.info(DOMAIN, TAG, BUNDLE + 'HomePageTabSelectorFunction_002 begin')
      /* 检查选项卡是否正确加载，测试下方内容切换功能 */
      try {
        await driver.assertComponentExist(ON.id('homePageTabSelector'))
        let tabSelector = await driver.findComponent(ON.id('homePageTabSelector')) // 获取选项卡栏对象
        hilog.info(DOMAIN, TAG, BUNDLE + `HomePageTabSelectorFunction_002 tab selector is found`)
        // TODO: 测试下方内容切换功能
        done()
      } catch (exception) {
        hilog.info(DOMAIN, TAG, BUNDLE + `HomePageTabSelectorFunction_002 exception = ${JSON.stringify(exception)}`)
        expect().assertFail()
        done()
      }
      hilog.info(DOMAIN, TAG, BUNDLE + 'HomePageTabSelectorFunction_002 end')
    })
  })
}
