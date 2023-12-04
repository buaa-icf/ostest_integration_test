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

export default function patternLockToScrollBarTest() {
  describe('ActsPatternLockToScrollBarTest', () => {
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
     * 点击首页PatternLock
     */
    it(`PatternLockBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('PatternLock');
      //创建PatternLock组件
      await checkButtonAndClickWithID('PatternLockCreate');
      await driver.delayMs(1000);
      await pressBack();
      //改变SideLength
      await checkButtonAndClickWithID('PatternLockSideLength');
      await checkButtonAndClickWithID('PatternLockChangeSideLength');
      await pressBack();
      //改变CircleRadius
      await checkButtonAndClickWithID('PatternLockCircleRadius');
      await checkButtonAndClickWithID('PatternLockChangeCircleRadius');
      await pressBack();
      //改变RegularColor
      await checkButtonAndClickWithID('PatternLockRegularColor');
      await checkButtonAndClickWithID('PatternLockChangeRegularColor');
      await pressBack();
      //改变SelectedColor
      await checkButtonAndClickWithID('PatternLockSelectedColor');
      await checkButtonAndClickWithID('PatternLockChangeSelectedColor');
      await pressBack();
      //改变ActiveColor
      await checkButtonAndClickWithID('PatternLockActiveColor');
      await checkButtonAndClickWithID('PatternLockChangeActiveColor');
      await pressBack();
      //改变PathColor
      await checkButtonAndClickWithID('PatternLockPathColor');
      await checkButtonAndClickWithID('PatternLockChangePathColor');
      await pressBack();
      //改变PathStrokeWidth
      await checkButtonAndClickWithID('PatternLockPathStrokeWidth');
      await checkButtonAndClickWithID('PatternLockChangePathStrokeWidth');
      await pressBack();
      await pressBack(); //返回首页
    })

    /**
     * 点击首页Shape
     */
    it(`ShapeBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Shape');
      //创建Shape组件
      await checkButtonAndClickWithID('ShapeCreate');
      await pressBack();
      //改变Fill
      await checkButtonAndClickWithID('ShapeFill');
      await checkButtonAndClickWithID('ShapeChangeFill');
      await pressBack();
      //改变FillOpacity
      await checkButtonAndClickWithID('ShapeFillOpacity');
      await checkButtonAndClickWithID('ShapeChangeFillOpacity');
      await pressBack();
      //改变stroke
      await checkButtonAndClickWithID('ShapeStroke');
      await checkButtonAndClickWithID('ShapeChangeStroke');
      await pressBack();
      //改变StrokeDashArray
      await checkButtonAndClickWithID('ShapeStrokeDashArray');
      await checkButtonAndClickWithID('ShapeChangeStrokeDashArray');
      await pressBack();
      //改变StrokeDashOffset
      await checkButtonAndClickWithID('ShapeStrokeDashOffset');
      await checkButtonAndClickWithID('ShapeChangeStrokeDashOffset');
      await pressBack();
      //改变StrokeWidth
      await checkButtonAndClickWithID('ShapeStrokeWidth');
      await checkButtonAndClickWithID('ShapeChangeStrokeWidth');
      await pressBack();
      //改变Width
      await checkButtonAndClickWithID('ShapeWidth');
      await checkButtonAndClickWithID('ShapeChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('ShapeHeight');
      await checkButtonAndClickWithID('ShapeChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('ShapePadding');
      await checkButtonAndClickWithID('ShapeChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('ShapeMargin');
      await checkButtonAndClickWithID('ShapeChangeMargin');
      await pressBack();

      await pressBack(); //返回首页
    })

    /**
     * 点击首页Path
     */
    it(`PathBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Path');
      //创建Path组件
      await checkButtonAndClickWithID('PathCreate');
      await pressBack();
      //改变Fill
      await checkButtonAndClickWithID('PathFill');
      await checkButtonAndClickWithID('PathChangeFill');
      await pressBack();
      // 改变FillOpacity
      await checkButtonAndClickWithID('PathFillOpacity');
      await checkButtonAndClickWithID('PathChangeFillOpacity');
      await pressBack();
      //改变Stroke
      await checkButtonAndClickWithID('PathStroke');
      await checkButtonAndClickWithID('PathChangeStroke');
      await pressBack();
      //改变StrokeDashArray
      await checkButtonAndClickWithID('PathStrokeDashArray');
      await checkButtonAndClickWithID('PathChangeStrokeDashArray');
      await pressBack();
      //改变StrokeDashOffset
      await checkButtonAndClickWithID('PathStrokeDashOffset');
      await checkButtonAndClickWithID('PathChangeStrokeDashOffset');
      await pressBack();
      //改变StrokeWidth
      await checkButtonAndClickWithID('PathStrokeWidth');
      await checkButtonAndClickWithID('PathChangeStrokeWidth');
      await pressBack();
      //改变Width
      await checkButtonAndClickWithID('PathWidth');
      await checkButtonAndClickWithID('PathChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('PathHeight');
      await checkButtonAndClickWithID('PathChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('PathPadding');
      await checkButtonAndClickWithID('PathChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('PathMargin');
      await checkButtonAndClickWithID('PathChangeMargin');
      await pressBack();

      await pressBack(); //返回首页
    })

    /**
     * 点击首页Line
     */
    it(`LineBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Line');
      //创建Line组件
      await checkButtonAndClickWithID('LineCreate');
      await pressBack();
      //改变Fill
      await checkButtonAndClickWithID('LineFill');
      await checkButtonAndClickWithID('LineChangeFill');
      await pressBack();
      // 改变FillOpacity
      await checkButtonAndClickWithID('LineFillOpacity');
      await checkButtonAndClickWithID('LineChangeFillOpacity');
      await pressBack();
      //改变Stroke
      await checkButtonAndClickWithID('LineStroke');
      await checkButtonAndClickWithID('LineChangeStroke');
      await pressBack();
      //改变StrokeDashArray
      await checkButtonAndClickWithID('LineStrokeDashArray');
      await checkButtonAndClickWithID('LineChangeStrokeDashArray');
      await pressBack();
      //改变StrokeDashOffset
      await checkButtonAndClickWithID('LineStrokeDashOffset');
      await checkButtonAndClickWithID('LineChangeStrokeDashOffset');
      await pressBack();
      //改变StrokeWidth
      await checkButtonAndClickWithID('LineStrokeWidth');
      await checkButtonAndClickWithID('LineChangeStrokeWidth');
      await pressBack();
      //改变Width
      await checkButtonAndClickWithID('LineWidth');
      await checkButtonAndClickWithID('LineChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('LineHeight');
      await checkButtonAndClickWithID('LineChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('LinePadding');
      await checkButtonAndClickWithID('LineChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('LineMargin');
      await checkButtonAndClickWithID('LineChangeMargin');
      await pressBack();

      await pressBack(); //返回首页
    })

    /**
     * 点击首页Circle
     */
    it(`CircleBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Circle');
      await checkButtonAndClickWithID('CircleCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('CircleFillSample');
      await checkButtonAndClickWithID('change fill');
      await pressBack();
      await checkButtonAndClickWithID('CircleFillOpacitySample');
      await checkButtonAndClickWithID('change fillOpacity');
      await pressBack();
      await checkButtonAndClickWithID('CircleStrokeSample');
      await checkButtonAndClickWithID('change stroke');
      await pressBack();
      await checkButtonAndClickWithID('CircleStrokeDashArraySample');
      await checkButtonAndClickWithID('change strokeDashArray');
      await pressBack();
      await checkButtonAndClickWithID('CircleStrokeDashOffsetSample');
      await checkButtonAndClickWithID('change strokeDashOffset');
      await pressBack();
      await checkButtonAndClickWithID('CircleStrokeWidthSample');
      await checkButtonAndClickWithID('change strokeWidth');
      await pressBack();
      await checkButtonAndClickWithID('CircleWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('CircleHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('CirclePaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('CircleMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页Polyline
     */
    it(`PolylineBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Polyline');
      await checkButtonAndClickWithID('PolylineCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('PolylineFillSample');
      await checkButtonAndClickWithID('change fill');
      await pressBack();
      await checkButtonAndClickWithID('PolylineFillOpacitySample');
      await checkButtonAndClickWithID('change fillOpacity');
      await pressBack();
      await checkButtonAndClickWithID('PolylineStrokeSample');
      await checkButtonAndClickWithID('change stroke');
      await pressBack();
      await checkButtonAndClickWithID('PolylineStrokeDashArraySample');
      await checkButtonAndClickWithID('change strokeDashArray');
      await pressBack();
      await checkButtonAndClickWithID('PolylineStrokeDashOffsetSample');
      await checkButtonAndClickWithID('change strokeDashOffset');
      await pressBack();
      await checkButtonAndClickWithID('PolylineStrokeWidthSample');
      await checkButtonAndClickWithID('change strokeWidth');
      await pressBack();
      await checkButtonAndClickWithID('PolylineWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('PolylineHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('PolylinePaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('PolylineMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页SideBarContainer
     */
    it(`SideBarContainerBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('SideBarContainer');
      await checkButtonAndClickWithID('SideBarContainerCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerShowSideBarSample');
      await checkButtonAndClickWithID('change showSideBar');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerControlButtonSample');
      await checkButtonAndClickWithID('change controlButton');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerShowControlButtonSample');
      await checkButtonAndClickWithID('change showControlButton');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerSideBarWidthSample');
      await checkButtonAndClickWithID('change sideBarWidth');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerAutoHideSample');
      await checkButtonAndClickWithID('change autoHide');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerSideBarPositionSample');
      await checkButtonAndClickWithID('change sideBarPosition');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerDividerSample');
      await checkButtonAndClickWithID('change divider');
      await pressBack();
      await driver.swipe(540, 1000, 540, 500);
      await checkButtonAndClickWithID('SideBarContainerMinContentWidthSample');
      await checkButtonAndClickWithID('change minContentWidth');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerMinSideBarWidthSample');
      await checkButtonAndClickWithID('change minSideBarWidth');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerMaxSideBarWidthSample');
      await checkButtonAndClickWithID('change maxSideBarWidth');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerDragSideBarSample');
      await driver.delayMs(1000);
      await driver.swipe(300, 500, 100, 500);
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerDragContentSample');
      await driver.delayMs(1000);
      await driver.drag(300, 500, 500, 500);
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页ImageAnimator
     */
    it(`ImageAnimatorBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ImageAnimator');
      await checkButtonAndClickWithID('ImageAnimatorCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorWidthSample');
      await checkButtonAndClickWithID('change width 80% to 100%');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorHeightSample');
      await checkButtonAndClickWithID('change height 300 to 400');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorImagesSample');
      await checkButtonAndClickWithID('change images');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorStateSample');
      await checkButtonAndClickWithID('change state');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorDurationSample');
      await checkButtonAndClickWithID('change duration');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorReverseSample');
      await checkButtonAndClickWithID('change reverse');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorFixedSizeSample');
      await checkButtonAndClickWithID('change fixedSize');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorFillModeSample');
      await checkButtonAndClickWithID('change fillMode');
      await pressBack();
      await checkButtonAndClickWithID('ImageAnimatorIterationsSample');
      await checkButtonAndClickWithID('change iterations');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页LoadingProgress
     */
    it(`LoadingProgressBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('LoadingProgress');
      await checkButtonAndClickWithID('LoadingProgressCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('LoadingProgressWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('LoadingProgressHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('LoadingProgressPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('LoadingProgressMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('LoadingProgressEnableLoadingSample');
      await checkButtonAndClickWithID('change enableLoading');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页TextTimer
     */
    it(`TextTimerBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('TextTimer');
      await checkButtonAndClickWithID('TextTimerCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('TextTimerWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('TextTimerHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('TextTimerPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('TextTimerMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('TextTimerControllerSample');
      await checkButtonAndClickWithID('change controller to start');
      await checkButtonAndClickWithID('change controller to pause');
      await checkButtonAndClickWithID('change controller to reset');
      await pressBack();
      await checkButtonAndClickWithID('TextTimerFormatSample');
      await checkButtonAndClickWithID('change format');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页Blank
     */
    it(`BlankBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Blank');
      await checkButtonAndClickWithID('BlankCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('BlankWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('BlankHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('BlankPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('BlankMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('BlankMinSample');
      await checkButtonAndClickWithID('change min 0 to 60');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页Radio
     */
    it(`RadioBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Radio');
      await checkButtonAndClickWithID('RadioCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('RadioWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('RadioHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('RadioPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('RadioMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await pressBack();
    })

    /**
     * 点击首页ScrollBar
     */
    it(`ScrollBarBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ScrollBar');
      await checkButtonAndClickWithID('ScrollBarCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('ScrollBarWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('ScrollBarHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('ScrollBarPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ScrollBarMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ScrollBarDirectionSample');
      await checkButtonAndClickWithID('change direction');
      await pressBack();
      await checkButtonAndClickWithID('ScrollBarStateSample');
      await checkButtonAndClickWithID('change state to On');
      await checkButtonAndClickWithID('change state to Auto');
      await pressBack();
      await pressBack();
    })

  })
}