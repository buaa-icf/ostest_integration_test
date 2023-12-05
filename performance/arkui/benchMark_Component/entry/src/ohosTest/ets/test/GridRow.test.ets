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

import hilog from '@ohos.hilog';
import { afterAll, afterEach, beforeAll, beforeEach, describe, it } from '@ohos/hypium';
import AbilityDelegatorRegistry from '@ohos.app.ability.abilityDelegatorRegistry';
import { Driver, ON } from '@ohos.UiTest';

const driver = Driver.create();
let abilityDelegatorRegistry = AbilityDelegatorRegistry.getAbilityDelegator();

//通过id验证有没有这个组件 有的话点击一下
async function checkButtonAndClickWithID(text: string, delayTime: number = 1000) {
  let idName = text;
  await driver.assertComponentExist(ON.id(idName));
  let button = await driver.findComponent(ON.id(idName));
  await button.click();
  if (delayTime > 0) {
    await driver.delayMs(delayTime);
  }
}

async function pressBack() {
  await driver.pressBack();
  await driver.delayMs(1000);
}

export default function gridRowTest() {
  describe('ActsGridRowTest', () => {
    beforeAll(() => {

    })
    beforeEach(() => {

    })
    afterEach(() => {

    })
    afterAll(() => {

    })
    /**
     * 拉起应用
     */
    it(`Benchmark_StartAbility_001`, 0, async (done: Function) => {
      hilog.info(0xF811, 'testTag', 'StartAbility_001 begin');
      try {
        await abilityDelegatorRegistry.startAbility({
          bundleName: 'cn.openharmony.benchmarksample',
          abilityName: 'EntryAbility'
        });
        done();
      } catch (err) {
        done();
      }
      hilog.info(0xF811, 'testTag', 'StartAbility_001 end');
    })

    /**
     * 点击首页GridRow
     */
    it(`GridRowBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('GridRow');

      await checkButtonAndClickWithID('GridRowCreate');
      await pressBack();

      await checkButtonAndClickWithID('GridRowWidth');
      await checkButtonAndClickWithID('GridRowWidth');
      await pressBack();

      await checkButtonAndClickWithID('GridRowHeight');
      await checkButtonAndClickWithID('GridRowHeight');
      await pressBack();

      await checkButtonAndClickWithID('GridRowPadding');
      await checkButtonAndClickWithID('GridRowPadding');
      await pressBack();

      await checkButtonAndClickWithID('GridRowMargin');
      await checkButtonAndClickWithID('GridRowMargin');
      await pressBack();

      await checkButtonAndClickWithID('GridRowColumns');
      await checkButtonAndClickWithID('GridRowColumns');
      await pressBack();

      await checkButtonAndClickWithID('GridRowGutter');
      await checkButtonAndClickWithID('GridRowGutter');
      await pressBack();

      await checkButtonAndClickWithID('GridRowDirection');
      await checkButtonAndClickWithID('GridRowDirection');
      await pressBack();

      await checkButtonAndClickWithID('GridRowBreakpoints');
      await checkButtonAndClickWithID('GridRowBreakpoints');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页GridCol
     */
    it(`GridColBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('GridCol');

      await checkButtonAndClickWithID('GridColCreate');
      await pressBack();

      await checkButtonAndClickWithID('GridColOptionSpan');
      await checkButtonAndClickWithID('GridColOptionSpan');
      await pressBack();

      await checkButtonAndClickWithID('GridColOptionOffset');
      await checkButtonAndClickWithID('GridColOptionOffset');
      await pressBack();

      await checkButtonAndClickWithID('GridColOptionOrder');
      await checkButtonAndClickWithID('GridColOptionOrder');
      await pressBack();

      await checkButtonAndClickWithID('GridColSpan');
      await checkButtonAndClickWithID('GridColSpan');
      await pressBack();

      await checkButtonAndClickWithID('GridColOffset');
      await checkButtonAndClickWithID('GridColOffset');
      await pressBack();

      await checkButtonAndClickWithID('GridColOrder');
      await checkButtonAndClickWithID('GridColOrder');
      await pressBack();

      await checkButtonAndClickWithID('GridColWidth');
      await checkButtonAndClickWithID('GridColWidth');
      await pressBack();

      await checkButtonAndClickWithID('GridColHeight');
      await checkButtonAndClickWithID('GridColHeight');
      await pressBack();

      await checkButtonAndClickWithID('GridColPadding');
      await checkButtonAndClickWithID('GridColPadding');
      await pressBack();

      await checkButtonAndClickWithID('GridColMargin');
      await checkButtonAndClickWithID('GridColMargin');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页Scroll
     */
    it(`ScrollBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Scroll');
      //创建Scroll组件
      await checkButtonAndClickWithID('ScrollCreate');
      await pressBack();

      //改变width
      await checkButtonAndClickWithID('ScrollWidth');
      await checkButtonAndClickWithID('ScrollWidth');
      await pressBack();

      //改变height
      await checkButtonAndClickWithID('ScrollHeight');
      await checkButtonAndClickWithID('ScrollHeight');
      await pressBack();

      //改变Padding
      await checkButtonAndClickWithID('ScrollPadding');
      await checkButtonAndClickWithID('ScrollPadding');
      await pressBack();

      //改变Margin
      await checkButtonAndClickWithID('ScrollMargin');
      await checkButtonAndClickWithID('ScrollMargin');
      await pressBack();


      //改变EnableScrollInteraction
      await checkButtonAndClickWithID('ScrollEnableScrollInteractionTrueToFalse');
      await checkButtonAndClickWithID('ScrollEnableScrollInteractionTrueToFalse');
      await pressBack();

      await checkButtonAndClickWithID('ScrollEnableScrollInteractionFalseToTrue');
      await checkButtonAndClickWithID('ScrollEnableScrollInteractionFalseToTrue');
      await pressBack();

      //拖动场景下Scroll组件更新布局耗时
      await checkButtonAndClickWithID('ScrollDrag');
      await driver.fling({
        x: 100, y: 1100
      }, {
        x: 100, y: 500
      }, 100, 100)
      await pressBack();

      //抛滑场景下Scroll组件更新布局耗时
      await checkButtonAndClickWithID('ScrollSlippage');
      await driver.fling({
        x: 100, y: 1100
      }, {
        x: 100, y: 500
      }, 100, 600)
      await pressBack();
      //Scroll组件调用scrollTo触发页面跳转布局
      await checkButtonAndClickWithID('ScrollScrollTo');
      await checkButtonAndClickWithID('ScrollScrollTo');
      await pressBack();
      //Scroll组件调用scrollEdge触发页面跳转布局
      await checkButtonAndClickWithID('ScrollScrollEdge');
      await checkButtonAndClickWithID('ScrollScrollEdge');
      await pressBack();
      //Scroll组件edgeEffect属性更新布局耗时
      await checkButtonAndClickWithID('ScrollEdgeEffectSpring');
      await checkButtonAndClickWithID('ScrollEdgeEffectSpring');
      await driver.swipe(100, 1100, 100, 500, 200)
      await pressBack();


      await checkButtonAndClickWithID('ScrollEdgeEffectFade');
      await checkButtonAndClickWithID('ScrollEdgeEffectFade');
      await driver.swipe(100, 1100, 100, 500, 200)
      await pressBack();

      await checkButtonAndClickWithID('ScrollEdgeEffectNone');
      await checkButtonAndClickWithID('ScrollEdgeEffectNone');
      await driver.swipe(100, 1100, 100, 500, 200)
      await pressBack();

      //Scroll组件调用scrollBy触发页面跳转布局
      await checkButtonAndClickWithID('ScrollScrollBy');
      await checkButtonAndClickWithID('ScrollScrollBy');
      await pressBack();

      await pressBack(); //返回首页
    })

    /**
     * 点击首页Tab
     */
    it(`TabsBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Tabs');
      //创建Tab组件
      await checkButtonAndClickWithID('TabsCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('TabsWidth');
      await checkButtonAndClickWithID('TabChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('TabsHeight');
      await checkButtonAndClickWithID('TabsChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('TabsPadding');
      await checkButtonAndClickWithID('TabsChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('TabsMargin');
      await checkButtonAndClickWithID('TabsChangeMargin');
      await pressBack();
      //改变Vertical
      await checkButtonAndClickWithID('TabsVertical');
      await checkButtonAndClickWithID('TabsChangeVertical');
      await pressBack();
      //改变TabsBarMode
      await checkButtonAndClickWithID('TabsBarMode');
      await checkButtonAndClickWithID('TabsChangeTabsBarMode');
      await pressBack();
      //改变Divider
      await checkButtonAndClickWithID('TabsDivider');
      await checkButtonAndClickWithID('TabsChangeDivider');
      await pressBack();
      //改变BarPosition
      await checkButtonAndClickWithID('TabsBarPosition');
      await checkButtonAndClickWithID('TabsChangeBarPosition');
      await pressBack();
      await driver.delayMs(1000);
      //改变tabIndex
      await checkButtonAndClickWithID('TabsIndex');
      await driver.delayMs(2000);
      await checkButtonAndClickWithID('TabsChangeIndex');
      await pressBack();
      //改变BarWidth
      await checkButtonAndClickWithID('TabsBarWidth');
      await checkButtonAndClickWithID('TabChangeBarWidth');
      await pressBack();
      //改变BarHeight
      await checkButtonAndClickWithID('TabsBarHeight');
      await checkButtonAndClickWithID('TabChangeBarHeight');
      await pressBack();
      //抛滑Fling
      await checkButtonAndClickWithID('TabsFling');
      await driver.fling({
        x: 100, y: 500
      }, {
        x: 700, y: 500
      }, 100, 100)
      await pressBack();
      //抛滑Drag
      await checkButtonAndClickWithID('TabsDrag');
      await driver.fling({
        x: 700, y: 500
      }, {
        x: 100, y: 500
      }, 100, 100)
      await pressBack();
      //点击页签ClickTab
      await checkButtonAndClickWithID('TabsClickTab');
      await checkButtonAndClickWithID('TabsChangeIndex');
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页Navigation
     */
    it(`NavigationBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Navigation');
      await checkButtonAndClickWithID('NavigationCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('NavigationWidthSample');
      await checkButtonAndClickWithID('change width 500 to 600');
      await pressBack();
      await checkButtonAndClickWithID('NavigationHeightSample');
      await checkButtonAndClickWithID('change height 300 to 400');
      await pressBack();
      await checkButtonAndClickWithID('NavigationPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('NavigationMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('NavigationTitleModeSample');
      await checkButtonAndClickWithID('change titleMode to Free');
      await checkButtonAndClickWithID('change titleMode to Full');
      await checkButtonAndClickWithID('change titleMode to Mini');
      await pressBack();
      await checkButtonAndClickWithID('NavigationHideToolBarSample');
      await checkButtonAndClickWithID('change hideToolBar true to false');
      await pressBack();
      await checkButtonAndClickWithID('NavigationHideTitleBarSample');
      await checkButtonAndClickWithID('change hideTitleBar true to false');
      await pressBack();
      await checkButtonAndClickWithID('NavigationHideBackButtonSample');
      await checkButtonAndClickWithID('change hideBackButton true to false');
      await pressBack();
      await checkButtonAndClickWithID('NavigationNavBarWidthSample');
      await checkButtonAndClickWithID('change navBarWidth 240 to 400');
      await pressBack();
      await checkButtonAndClickWithID('NavigationModeSample');
      await checkButtonAndClickWithID('change navigationMode Stack to Split');
      await pressBack();
      await checkButtonAndClickWithID('NavigationNavBarPositionSample');
      await checkButtonAndClickWithID('change navBarPosition Start to End');
      await pressBack();
      await checkButtonAndClickWithID('NavigationHideNavBarSample');
      await checkButtonAndClickWithID('change hideNavBar Stack to Split');
      await pressBack();
      await checkButtonAndClickWithID('NavigationStackJumpSample');
      await checkButtonAndClickWithID('Stack jump to next page');
      await pressBack();
      await pressBack();
      await checkButtonAndClickWithID('NavigationSplitJumpSample');
      await checkButtonAndClickWithID('Split jump to next page');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页Flex
     */
    it(`FlexBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Flex');
      await checkButtonAndClickWithID('FlexCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('FlexWidthSample');
      await checkButtonAndClickWithID('change width 80% to 100%');
      await pressBack();
      await checkButtonAndClickWithID('FlexHeightSample');
      await checkButtonAndClickWithID('change height 300 to 400');
      await pressBack();
      await checkButtonAndClickWithID('FlexPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('FlexMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('FlexValueDirectionSample');
      await checkButtonAndClickWithID('change value direction to FlexDirection.Row');
      await checkButtonAndClickWithID('change value direction to FlexDirection.RowReverse');
      await checkButtonAndClickWithID('change value direction to FlexDirection.Column');
      await checkButtonAndClickWithID('change value direction to FlexDirection.ColumnReverse');
      await pressBack();
      await checkButtonAndClickWithID('FlexValueWrapSample');
      await checkButtonAndClickWithID('change value wrap to FlexWrap.NoWrap');
      await checkButtonAndClickWithID('change value wrap to FlexWrap.Wrap');
      await checkButtonAndClickWithID('change value wrap to FlexWrap.WrapReverse');
      await pressBack();
      await checkButtonAndClickWithID('FlexValueJustifyContentSample');
      await checkButtonAndClickWithID('change value justifyContent to FlexAlign.Start');
      await checkButtonAndClickWithID('change value justifyContent to FlexAlign.Center');
      await checkButtonAndClickWithID('change value justifyContent to FlexAlign.End');
      await checkButtonAndClickWithID('change value justifyContent to FlexAlign.SpaceBetween');
      await checkButtonAndClickWithID('change value justifyContent to FlexAlign.SpaceAround');
      await checkButtonAndClickWithID('change value justifyContent to FlexAlign.SpaceEvenly');
      await pressBack();
      await checkButtonAndClickWithID('FlexValueAlignItemsSample');
      await checkButtonAndClickWithID('change value alignItems to ItemAlign.Auto');
      await checkButtonAndClickWithID('change value alignItems to ItemAlign.Start');
      await checkButtonAndClickWithID('change value alignItems to ItemAlign.Center');
      await checkButtonAndClickWithID('change value alignItems to ItemAlign.End');
      await checkButtonAndClickWithID('change value alignItems to ItemAlign.Stretch');
      await checkButtonAndClickWithID('change value alignItems to ItemAlign.Baseline');
      await pressBack();
      await checkButtonAndClickWithID('FlexValueAlignContentSample');
      await checkButtonAndClickWithID('change value alignContent to FlexAlign.Start');
      await checkButtonAndClickWithID('change value alignContent to FlexAlign.Center');
      await checkButtonAndClickWithID('change value alignContent to FlexAlign.End');
      await checkButtonAndClickWithID('change value alignContent to FlexAlign.SpaceBetween');
      await checkButtonAndClickWithID('change value alignContent to FlexAlign.SpaceAround');
      await checkButtonAndClickWithID('change value alignContent to FlexAlign.SpaceEvenly');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页Select
     */
    it(`SelectBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Select');
      //创建Select组件
      await checkButtonAndClickWithID('SelectCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('SelectWidth');
      await checkButtonAndClickWithID('SelectChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('SelectHeight');
      await checkButtonAndClickWithID('SelectChangeHeight');
      await pressBack();
      //改变Size
      await checkButtonAndClickWithID('SelectSize');
      await checkButtonAndClickWithID('SelectChangeSize');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('SelectPadding');
      await checkButtonAndClickWithID('SelectChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('SelectMargin');
      await checkButtonAndClickWithID('SelectChangeMargin');
      await pressBack();
      //改变Space
      await checkButtonAndClickWithID('SelectSpace');
      await checkButtonAndClickWithID('SelectChangeSpace');
      await pressBack();
      //改变ArrowPosition
      await checkButtonAndClickWithID('SelectArrowPosition');
      await checkButtonAndClickWithID('SelectChangeArrowPosition');
      await pressBack();
      //首次展开
      await checkButtonAndClickWithID('SelectFirstExpand');
      await checkButtonAndClickWithID('SelectFirstExpand');
      await pressBack();
      await pressBack();
      //再次展开
      await checkButtonAndClickWithID('SelectSecondExpand');
      await checkButtonAndClickWithID('SelectSecondExpand');
      await checkButtonAndClickWithID('SelectSecondExpand');
      await checkButtonAndClickWithID('SelectSecondExpand');
      await pressBack();
      await pressBack();
      //首次展开后收起
      await checkButtonAndClickWithID('SelectFirstExpandCollapse');
      await checkButtonAndClickWithID('SelectFirstExpandCollapse');
      await checkButtonAndClickWithID('SelectFirstExpandCollapse');
      await pressBack();
      //多次展开后收起
      await checkButtonAndClickWithID('SelectSecondExpandCollapse');
      await checkButtonAndClickWithID('SelectSecondExpandCollapse');
      await checkButtonAndClickWithID('SelectSecondExpandCollapse');
      await checkButtonAndClickWithID('SelectSecondExpandCollapse');
      await checkButtonAndClickWithID('SelectSecondExpandCollapse');
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页Slider
     */
    it(`SliderBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Slider');
      //创建Slider组件
      await checkButtonAndClickWithID('SliderCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('SliderWidth');
      await checkButtonAndClickWithID('SliderChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('SliderHeight');
      await checkButtonAndClickWithID('SliderChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('SliderPadding');
      await checkButtonAndClickWithID('SliderChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('SliderMargin');
      await checkButtonAndClickWithID('SliderChangeMargin');
      await pressBack();
      //改变Step
      await checkButtonAndClickWithID('SliderStep');
      await checkButtonAndClickWithID('SliderChangeStep');
      await pressBack();
      //改变Direction
      await checkButtonAndClickWithID('SliderDirection');
      await checkButtonAndClickWithID('SliderChangeDirection');
      await pressBack();
      //改变reverse
      await checkButtonAndClickWithID('SliderReverse');
      await checkButtonAndClickWithID('SliderChangeReverse');
      await pressBack();
      //改变Style
      await checkButtonAndClickWithID('SliderStyle');
      await checkButtonAndClickWithID('SliderChangeStyle');
      await pressBack();
      //改变TrackThickness
      await checkButtonAndClickWithID('SliderTrackThickness');
      await checkButtonAndClickWithID('SliderChangeTrackThickness');
      await pressBack();
      //改变BlockSize
      await checkButtonAndClickWithID('SliderBlockSize');
      await checkButtonAndClickWithID('SliderChangeBlockSize');
      await pressBack();
      //手指滑动
      await checkButtonAndClickWithID('SliderFingerSliding');
      await driver.swipe(13, 296, 383, 296, 200);
      await pressBack();
      //手指点击滑轨
      await checkButtonAndClickWithID('SliderClick');
      await driver.click(383, 296);
      await pressBack();
      // 鼠标滚轮调节滑块位置
      await checkButtonAndClickWithID('SliderMouseScroll');
      await driver.mouseScroll({
        x: 163, y: 339
      }, true, 20);
      await pressBack();
      // 外接键盘调节滑块位置
      await checkButtonAndClickWithID('SliderKeyboardScroll');
      // await driver.triggerKey(KeyCode.KEYCODE_DPAD_RIGHT);
      await driver.swipe(13, 296, 383, 296, 200);
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页Divider
     */
    it(`DividerBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Divider');
      //创建Divider组件
      await checkButtonAndClickWithID('DividerCreate');
      await pressBack();
      //更改StrokeWidth
      await checkButtonAndClickWithID('DividerStrokeWidth');
      await checkButtonAndClickWithID('DividerChangeStrokeWidth');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('DividerWidth');
      await checkButtonAndClickWithID('DividerChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('DividerHeight');
      await checkButtonAndClickWithID('DividerChangeHeight');
      await pressBack();
      //改变Size
      await checkButtonAndClickWithID('DividerSize');
      await checkButtonAndClickWithID('DividerChangeSize');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('DividerPadding');
      await checkButtonAndClickWithID('DividerChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('DividerMargin');
      await checkButtonAndClickWithID('DividerChangeMargin');
      await pressBack();
      //改变Color
      await checkButtonAndClickWithID('DividerColor');
      await checkButtonAndClickWithID('DividerChangeColor');
      await pressBack();
      //改变Vertical
      await checkButtonAndClickWithID('DividerVertical');
      await checkButtonAndClickWithID('DividerChangeVerticalTrue');
      await checkButtonAndClickWithID('DividerChangeVerticalFalse');
      await pressBack();
      //改变LineCap
      await checkButtonAndClickWithID('DividerLineCap');
      await checkButtonAndClickWithID('DividerChangeLineCapButt');
      await checkButtonAndClickWithID('DividerChangeLineCapRound');
      await checkButtonAndClickWithID('DividerChangeLineCapSquare');
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页Refresh
     */
    it(`RefreshBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Refresh');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshCreateSample');
      await driver.delayMs(1000);
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshWidthSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change width 100 to 200');
      await driver.delayMs(1000);
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshHeightSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change height 100 to 200');
      await driver.delayMs(1000);
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshSizeSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change size');
      await driver.delayMs(1000);
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshPaddingSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change padding 20 to 30');
      await driver.delayMs(1000);
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshMarginSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change margin 20 to 30');
      await driver.delayMs(1000);
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshPullSample');
      await driver.delayMs(1000);
      await driver.swipe(360, 200, 360, 500, 600)
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshOffsetSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change offset 20 to 30');
      await driver.swipe(360, 200, 360, 500, 600)
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshFrictionSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change friction 60 to 80');
      await driver.swipe(360, 200, 360, 500, 600)
      await pressBack();
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('RefreshOnStateChangeSample');
      await driver.swipe(360, 200, 360, 500, 600)
      await pressBack();
      await driver.delayMs(1000);
      await pressBack();
    })

    /**
     * 点击首页Progress
     */
    it(`ProgressBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Progress');
      await checkButtonAndClickWithID('ProgressCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('ProgressWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('ProgressHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('ProgressPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ProgressMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ProgressProgressTypeSample');
      await checkButtonAndClickWithID('change progressType to Linear');
      await checkButtonAndClickWithID('change progressType to Ring');
      await checkButtonAndClickWithID('change progressType to Eclipse');
      await checkButtonAndClickWithID('change progressType to ScaleRing');
      await checkButtonAndClickWithID('change progressType to Capsule');
      await pressBack();
      await checkButtonAndClickWithID('ProgressProgressStyleSample');
      await checkButtonAndClickWithID('change strokeWidth 4 to 20');
      await pressBack();
      await checkButtonAndClickWithID('ProgressLinearSample');
      await checkButtonAndClickWithID('change strokeWidth(4-20) add strokeRadius(0-10)');
      await pressBack();
      await checkButtonAndClickWithID('ProgressRingSample');
      await checkButtonAndClickWithID('change strokeWidth 4 to 20');
      await pressBack();
      await checkButtonAndClickWithID('ProgressScaleRingSample');
      await checkButtonAndClickWithID('change strokeWidth 4 to 20');
      await pressBack();
      await pressBack();
    })

  })
}