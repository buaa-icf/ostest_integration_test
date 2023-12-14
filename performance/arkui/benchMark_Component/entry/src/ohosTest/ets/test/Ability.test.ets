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
async function checkButtonAndClickWithID(text: string, delayTime: number = 3000) {
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
  await driver.delayMs(3000);
}

export default function abilityTest() {
  describe('ActsAbilityTest', () => {
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

    //点击首页Text
    it(`TextBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Text');
      //创建Text组件
      await checkButtonAndClickWithID('TextCreate10Char');
      await driver.delayMs(1000);
      await pressBack();
      // await checkButtonAndClickWithID('TextCreate100Char');
      // await driver.delayMs(1000);
      // await pressBack();
      //改变Align
      await checkButtonAndClickWithID('TextAlign10char');
      await checkButtonAndClickWithID('TextAlign.Start');
      await checkButtonAndClickWithID('TextAlign.Center');
      await checkButtonAndClickWithID('TextAlign.End');
      await pressBack();
      // await checkButtonAndClickWithID('TextAlign100Char');
      // await checkButtonAndClickWithID('TextAlign.Start');
      // await checkButtonAndClickWithID('TextAlign.Center');
      // await checkButtonAndClickWithID('TextAlign.End');
      // await pressBack();
      //改变width
      await checkButtonAndClickWithID('TextWidth10Char');
      await checkButtonAndClickWithID('TextChangeWidth');
      await pressBack();
      // await checkButtonAndClickWithID('TextWidth100Char');
      // await checkButtonAndClickWithID('TextChangeWidth');
      // await pressBack();
      //改变height
      await checkButtonAndClickWithID('TextHeight10Char');
      await checkButtonAndClickWithID('TextChangeHeight');
      await pressBack();
      // await checkButtonAndClickWithID('TextHeight100Char');
      // await checkButtonAndClickWithID('TextChangeHeight');
      // await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('TextPadding10Char');
      await checkButtonAndClickWithID('TextChangePadding');
      await pressBack();
      // await checkButtonAndClickWithID('TextPadding100Char');
      // await checkButtonAndClickWithID('TextChangePadding');
      // await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('TextMargin10Char');
      await checkButtonAndClickWithID('TextChangeMargin');
      await pressBack();
      // await checkButtonAndClickWithID('TextMargin100Char');
      // await checkButtonAndClickWithID('TextChangeMargin');
      // await pressBack();
      //改变Font
      await checkButtonAndClickWithID('TextFont10Char');
      await checkButtonAndClickWithID('TextChangeFont');
      await pressBack();
      // await checkButtonAndClickWithID('TextFont100Char');
      // await checkButtonAndClickWithID('TextChangeFont');
      // await pressBack();
      //改变Text文本长度
      await checkButtonAndClickWithID('TextContent10Char');
      await checkButtonAndClickWithID('TextChangeContent');
      await pressBack();
      // await checkButtonAndClickWithID('TextContent100Char');
      // await checkButtonAndClickWithID('TextChangeContent');
      // await pressBack();
      //改变TextIndent
      await checkButtonAndClickWithID('TextTextIndent10Char');
      await checkButtonAndClickWithID('TextChangeTextIndent');
      await pressBack();
      // await checkButtonAndClickWithID('TextTextIndent100Char');
      // await checkButtonAndClickWithID('TextChangeTextIndent');
      // await pressBack();
      //改变TextCase
      await checkButtonAndClickWithID('TextTextCase10Char');
      await checkButtonAndClickWithID('TextChangeTextCase');
      await pressBack();
      // await checkButtonAndClickWithID('TextTextCase100Char');
      // await checkButtonAndClickWithID('TextChangeTextCase');
      // await pressBack();
      //改变LetterSpacing
      await checkButtonAndClickWithID('TextLetterSpacing10Char');
      await checkButtonAndClickWithID('TextChangeTextLetterSpacing');
      await pressBack();
      // await checkButtonAndClickWithID('TextLetterSpacing100Char');
      // await checkButtonAndClickWithID('TextChangeTextLetterSpacing');
      // await pressBack();
      //改变BaselineOffset
      await checkButtonAndClickWithID('TextBaselineOffset10Char');
      await checkButtonAndClickWithID('TextChangeTextBaselineOffset');
      await pressBack();
      // await checkButtonAndClickWithID('TextBaselineOffset100Char');
      // await checkButtonAndClickWithID('TextChangeTextBaselineOffset');
      // await pressBack();
      await driver.swipe(360, 1100, 360, 300, 40000)
      // 改变TextBaselineOffset
      await checkButtonAndClickWithID('TextLineHeight10Char');
      await checkButtonAndClickWithID('TextChangeTextBaselineOffset');
      await pressBack();
      // await checkButtonAndClickWithID('TextLineHeight100Char');
      // await checkButtonAndClickWithID('TextChangeTextBaselineOffset');
      // await pressBack();
      // await driver.swipe(360, 1100, 360, 500, 200)
      //改变TextChangeMaxLines
      await checkButtonAndClickWithID('TextMaxLines10Char');
      await checkButtonAndClickWithID('TextChangeMaxLines');
      await pressBack();
      // await checkButtonAndClickWithID('TextMaxLines100Char');
      // await checkButtonAndClickWithID('TextChangeMaxLines');
      // await pressBack();
      //改变Overflow
      await checkButtonAndClickWithID('TextOverflow10Char');
      await checkButtonAndClickWithID('TextChangeOverflow');
      await pressBack();
      // await checkButtonAndClickWithID('TextOverflow100Char');
      // await checkButtonAndClickWithID('TextChangeOverflow');
      // await pressBack();
      //改变heightAdaptivePolicy maxLine
      await checkButtonAndClickWithID('heightAdaptivePolicyOne10Char');
      await checkButtonAndClickWithID('TextChangeheightAdaptivePolicyOne');
      await pressBack();
      // await checkButtonAndClickWithID('heightAdaptivePolicyOne100Char');
      // await checkButtonAndClickWithID('TextChangeheightAdaptivePolicyOne');
      // await pressBack();
      //改变heightAdaptivePolicy minfontSize
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('heightAdaptivePolicyTwo10Char');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('TextChangeheightAdaptivePolicyTwo');
      await driver.delayMs(1000);
      await pressBack();
      // await checkButtonAndClickWithID('heightAdaptivePolicyTwo100Char');
      // await checkButtonAndClickWithID('TextChangeheightAdaptivePolicyTwo');
      // await pressBack();
      //改变heightAdaptivePolicy content
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('heightAdaptivePolicyThree10Char');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('TextChangeheightAdaptivePolicyThree');
      await driver.delayMs(3000);
      await pressBack();
      // await checkButtonAndClickWithID('heightAdaptivePolicyThree100Char');
      // await checkButtonAndClickWithID('TextChangeheightAdaptivePolicyThree');
      // await pressBack();
      await driver.delayMs(3000);
      await pressBack(); //返回首页
    })

    //点击首页GridRow
    it(`GridRowBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页GridCol
    it(`GridColBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页TextInput
    it(`TextInputBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('TextInput');
      //创建TextInput组件
      await checkButtonAndClickWithID('TextInputCreate10Char');
      await driver.delayMs(1000);
      await pressBack();
      // await driver.delayMs(1000);
      // await checkButtonAndClickWithID('TextInputCreate100Char');
      // await driver.delayMs(1000);
      // await pressBack();

      //改变width
      await checkButtonAndClickWithID('TextInputWidth10Char');
      await checkButtonAndClickWithID('TextInputChangeWidth');
      await pressBack();
      // await checkButtonAndClickWithID('TextInputWidth100Char');
      // await checkButtonAndClickWithID('TextInputChangeWidth');
      // await pressBack();

      //改变height
      await checkButtonAndClickWithID('TextInputHeight10Char');
      await checkButtonAndClickWithID('TextInputChangeHeight');
      await pressBack();
      // await checkButtonAndClickWithID('TextInputHeight100Char');
      // await checkButtonAndClickWithID('TextInputChangeHeight');
      // await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('TextInputPadding10Char');
      await checkButtonAndClickWithID('TextInputChangePadding');
      await pressBack();
      // await checkButtonAndClickWithID('TextInputPadding100Char');
      // await checkButtonAndClickWithID('TextInputChangePadding');
      // await pressBack();

      //改变Margin
      await checkButtonAndClickWithID('TextInputMargin10Char');
      await checkButtonAndClickWithID('TextInputChangeMargin');
      await pressBack();
      // await checkButtonAndClickWithID('TextInputMargin100Char');
      // await checkButtonAndClickWithID('TextInputChangeMargin');
      // await pressBack();

      //改变Align
      await checkButtonAndClickWithID('TextInputAlign10Char');
      await checkButtonAndClickWithID('TextInputAlign.Start');
      await checkButtonAndClickWithID('TextInputAlign.Center');
      await checkButtonAndClickWithID('TextInputAlign.End');
      await pressBack();
      // await checkButtonAndClickWithID('TextInputAlign100Char');
      // await checkButtonAndClickWithID('TextInputAlign.Start');
      // await checkButtonAndClickWithID('TextInputAlign.Center');
      // await checkButtonAndClickWithID('TextInputAlign.End');
      // await pressBack();

      //改变InputType
      await checkButtonAndClickWithID('TextInputType10Char');
      await checkButtonAndClickWithID('TextInputType.Norma');
      await checkButtonAndClickWithID('TextInputType.Password');
      await checkButtonAndClickWithID('TextInputType.Email');
      await checkButtonAndClickWithID('TextInputType.Number');
      await checkButtonAndClickWithID('TextInputType.PhoneNumber');
      await pressBack();
      // await checkButtonAndClickWithID('TextInputType100Char');
      // await checkButtonAndClickWithID('TextInputType.Norma');
      // await checkButtonAndClickWithID('TextInputType.Password');
      // await checkButtonAndClickWithID('TextInputType.Email');
      // await checkButtonAndClickWithID('TextInputType.Number');
      // await checkButtonAndClickWithID('TextInputType.PhoneNumber');
      // await pressBack();

      await pressBack(); //返回首页
    })

    //点击首页Image
    it(`ImageBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Image');
      await checkButtonAndClickWithID('ImageCreate');
      await pressBack();
      await checkButtonAndClickWithID('ImageWidth');
      await checkButtonAndClickWithID('ImageWidth');
      await pressBack();
      await checkButtonAndClickWithID('ImageHeight');
      await checkButtonAndClickWithID('ImageHeight');
      await pressBack();
      await checkButtonAndClickWithID('ImagePadding');
      await checkButtonAndClickWithID('ImagePadding');
      await pressBack();
      await checkButtonAndClickWithID('ImageMargin');
      await checkButtonAndClickWithID('ImageMargin');
      await pressBack();
      await checkButtonAndClickWithID('ImageObjectFit');
      await checkButtonAndClickWithID('ImageObjectFit_Contain');
      await checkButtonAndClickWithID('ImageObjectFit_Cover');
      await checkButtonAndClickWithID('ImageObjectFit_Auto');
      await checkButtonAndClickWithID('ImageObjectFit_Fill');
      await checkButtonAndClickWithID('ImageObjectFit_ScaleDown');
      await checkButtonAndClickWithID('ImageObjectFit_None');
      await pressBack();
      await checkButtonAndClickWithID('ImageObjectRepeat');
      await checkButtonAndClickWithID('ImageObjectRepeat_X');
      await checkButtonAndClickWithID('ImageObjectRepeat_Y');
      await checkButtonAndClickWithID('ImageObjectRepeat_XY');
      await checkButtonAndClickWithID('ImageObjectRepeat_NoRepeat');
      await pressBack();
      await checkButtonAndClickWithID('ImageAutoResize');
      await checkButtonAndClickWithID('ImageAutoResize');
      await pressBack();
      await checkButtonAndClickWithID('ImageInterpolation');
      await checkButtonAndClickWithID('ImageInterpolation_None');
      await checkButtonAndClickWithID('ImageInterpolation_High');
      await checkButtonAndClickWithID('ImageInterpolation_Medium');
      await checkButtonAndClickWithID('ImageInterpolation_Low');
      await pressBack();
      await checkButtonAndClickWithID('ImageFitOriginalSize');
      await checkButtonAndClickWithID('ImageFitOriginalSize');
      await pressBack();
      await pressBack();
    })

    //点击首页Row
    it(`RowBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Row');
      //创建Row组件
      await checkButtonAndClickWithID('RowCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('RowWidth');
      await checkButtonAndClickWithID('RowChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('RowHeight');
      await checkButtonAndClickWithID('RowChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('RowPadding');
      await checkButtonAndClickWithID('RowChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('RowMargin');
      await checkButtonAndClickWithID('RowChangeMargin');
      await pressBack();
      //改变space
      await checkButtonAndClickWithID('RowSpace');
      await checkButtonAndClickWithID('RowChangeSpace');
      await pressBack();
      //改变magin space
      await checkButtonAndClickWithID('RowMarginSpace');
      await checkButtonAndClickWithID('RowChangeMarginSpace');
      await pressBack();
      //改变Aligin
      await checkButtonAndClickWithID('RowAlign');
      await checkButtonAndClickWithID('VerticalAlign.Top');
      await checkButtonAndClickWithID('VerticalAlign.Center');
      await checkButtonAndClickWithID('VerticalAlign.Bottom');
      await pressBack();
      //改变JustifyContent
      await checkButtonAndClickWithID('RowJustify');
      await checkButtonAndClickWithID('FlexAlign.Start');
      await checkButtonAndClickWithID('FlexAlign.Center');
      await checkButtonAndClickWithID('FlexAlign.End');
      await checkButtonAndClickWithID('FlexAlign.SpaceBetween');
      await checkButtonAndClickWithID('FlexAlign.SpaceAround');
      await checkButtonAndClickWithID('FlexAlign.SpaceEvenly');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页Column
    it(`ColumnBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Column');
      //创建Column组件
      await checkButtonAndClickWithID('ColumnCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('ColumnWidth');
      await checkButtonAndClickWithID('ColumnChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('ColumnHeight');
      await checkButtonAndClickWithID('ColumnChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('ColumnPadding');
      await checkButtonAndClickWithID('ColumnChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('ColumnMargin');
      await checkButtonAndClickWithID('ColumnChangeMargin');
      await pressBack();
      //改变space
      await checkButtonAndClickWithID('ColumnSpace');
      await checkButtonAndClickWithID('ColumnChangeSpace');
      await pressBack();
      //改变magin space
      await checkButtonAndClickWithID('ColumnMarginSpace');
      await checkButtonAndClickWithID('ColumnChangeMarginSpace');
      await pressBack();
      //改变Aligin
      await checkButtonAndClickWithID('ColumnAlign');
      await checkButtonAndClickWithID('HorizontalAlign.Start');
      await checkButtonAndClickWithID('HorizontalAlign.Center');
      await checkButtonAndClickWithID('HorizontalAlign.End');
      await pressBack();
      //改变JustifyContent
      await checkButtonAndClickWithID('ColumnJustify');
      await checkButtonAndClickWithID('FlexAlign.Start');
      await checkButtonAndClickWithID('FlexAlign.Center');
      await checkButtonAndClickWithID('FlexAlign.End');
      await checkButtonAndClickWithID('FlexAlign.SpaceBetween');
      await checkButtonAndClickWithID('FlexAlign.SpaceAround');
      await checkButtonAndClickWithID('FlexAlign.SpaceEvenly');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页List
    it(`ListBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('List');

      await checkButtonAndClickWithID('ListCreate');
      await pressBack();

      await checkButtonAndClickWithID('ListWidth');
      await checkButtonAndClickWithID('ListWidth');
      await pressBack();

      await checkButtonAndClickWithID('ListHeight');
      await checkButtonAndClickWithID('ListHeight');
      await pressBack();

      await checkButtonAndClickWithID('ListPadding');
      await checkButtonAndClickWithID('ListPadding');
      await pressBack();

      await checkButtonAndClickWithID('ListMargin');
      await checkButtonAndClickWithID('ListMargin');
      await pressBack();

      await checkButtonAndClickWithID('ListItemWidth');
      await checkButtonAndClickWithID('ListItemWidth');
      await pressBack();

      await checkButtonAndClickWithID('ListItemHeight');
      await checkButtonAndClickWithID('ListItemHeight');
      await pressBack();

      await checkButtonAndClickWithID('ListItemPadding');
      await checkButtonAndClickWithID('ListItemPadding');
      await pressBack();

      await checkButtonAndClickWithID('ListItemMargin');
      await checkButtonAndClickWithID('ListItemMargin');
      await pressBack();

      await checkButtonAndClickWithID('ListItemGroupDivider');
      await checkButtonAndClickWithID('ListItemGroupDivider');
      await pressBack();

      await checkButtonAndClickWithID('ListItemGroupSpace');
      await checkButtonAndClickWithID('ListItemGroupSpace');
      await pressBack();

      await checkButtonAndClickWithID('ListSpace');
      await checkButtonAndClickWithID('ListSpace');
      await pressBack();

      await checkButtonAndClickWithID('ListListDirection');
      await checkButtonAndClickWithID('ListListDirection');
      await pressBack();

      await checkButtonAndClickWithID('ListAlignListItem');
      await checkButtonAndClickWithID('ListAlignListItem_Start');
      await checkButtonAndClickWithID('ListAlignListItem_Center');
      await checkButtonAndClickWithID('ListAlignListItem_End');
      await pressBack();

      await checkButtonAndClickWithID('ListLanes');
      await checkButtonAndClickWithID('ListLanes');
      await pressBack();

      await checkButtonAndClickWithID('ListCachedCount');
      await checkButtonAndClickWithID('ListCachedCount');
      await pressBack();

      await checkButtonAndClickWithID('ListDivider');
      await checkButtonAndClickWithID('ListDivider');
      await pressBack();

      await checkButtonAndClickWithID('ListScrollBar');
      await checkButtonAndClickWithID('ListScrollBar_Off');
      await checkButtonAndClickWithID('ListScrollBar_On');
      await checkButtonAndClickWithID('ListScrollBar_Auto');
      await pressBack();

      await checkButtonAndClickWithID('ListRemoveItem');
      await checkButtonAndClickWithID('ListChangeRemoveItem');
      await pressBack();

      await checkButtonAndClickWithID('ListAddItem');
      await checkButtonAndClickWithID('ListAddItem');
      await pressBack();

      await checkButtonAndClickWithID('ListEdgeEffect');
      await checkButtonAndClickWithID('ListEdgeEffect_Spring');
      await driver.swipe(600, 900, 600, 100);
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ListEdgeEffect_Fade');
      await driver.swipe(100, 300, 100, 900);
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ListEdgeEffect_None');
      await driver.swipe(600, 900, 600, 100);
      await driver.delayMs(1000);
      await pressBack();

      await checkButtonAndClickWithID('ListChainAnimation');
      await checkButtonAndClickWithID('ListChainAnimation');
      await driver.swipe(600, 900, 600, 100);
      await driver.delayMs(1000);
      await pressBack();

      await checkButtonAndClickWithID('ListFriction');
      await checkButtonAndClickWithID('ListFriction');
      await driver.swipe(600, 900, 600, 100);
      await driver.delayMs(1000);
      await pressBack();

      await checkButtonAndClickWithID('ListEnableScrollInteraction');
      await checkButtonAndClickWithID('ListEnableScrollInteraction_true');
      await checkButtonAndClickWithID('ListEnableScrollInteraction_Scroller');
      await driver.delayMs(500);
      await checkButtonAndClickWithID('ListEnableScrollInteraction_false');
      await checkButtonAndClickWithID('ListEnableScrollInteraction_Scroller');
      await driver.delayMs(500);
      await pressBack();

      await checkButtonAndClickWithID('ListScrollSnapAlign');
      await checkButtonAndClickWithID('ListScrollSnapAlign_NONE');
      await driver.swipe(600, 1080, 600, 300);
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ListScrollSnapAlign_START');
      await driver.swipe(100, 500, 100, 1080);
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ListScrollSnapAlign_CENTER');
      await driver.swipe(600, 1080, 600, 100);
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ListScrollSnapAlign_END');
      await driver.swipe(100, 500, 100, 1080);
      await driver.delayMs(1000);
      await pressBack();

      await checkButtonAndClickWithID('ListChainAnimationOptions');
      await checkButtonAndClickWithID('ListChainAnimationOptions');
      await driver.swipe(600, 1080, 600, 300);
      await driver.delayMs(1000);
      await pressBack();

      await checkButtonAndClickWithID('ListSticky');
      await checkButtonAndClickWithID('ListSticky_None');
      await driver.swipe(600, 1080, 600, 300);
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ListSticky_Header');
      await driver.swipe(100, 500, 100, 1080);
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('ListSticky_Footer');
      await driver.swipe(600, 1080, 600, 100);
      await driver.delayMs(1000);
      await pressBack();

      await pressBack();
    })

    //点击首页Scroll
    it(`ScrollBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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
      await checkButtonAndClickWithID('ScrollEnableScrollInteraction');
      await checkButtonAndClickWithID('ScrollEnableScrollInteractionFalseToTrue');
      await checkButtonAndClickWithID('ScrollEnableScrollInteractionTrueToFalse');
      // await pressBack();
      // await checkButtonAndClickWithID('ScrollEnableScrollInteractionFalseToTrue');
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
      await checkButtonAndClickWithID('ScrollEdgeEffect');
      await checkButtonAndClickWithID('ScrollEdgeEffectSpring');
      await driver.swipe(100, 1100, 100, 500, 200)
      await checkButtonAndClickWithID('ScrollEdgeEffectFade');
      await driver.swipe(100, 500, 100, 1100, 200)
      await checkButtonAndClickWithID('ScrollEdgeEffectNone');
      await driver.swipe(100, 1100, 100, 500, 200)
      await pressBack();

      //Scroll组件调用scrollBy触发页面跳转布局
      await checkButtonAndClickWithID('ScrollScrollBy');
      await checkButtonAndClickWithID('ScrollScrollBy');
      await pressBack();

      await pressBack(); //返回首页
    })

    //点击首页Tab
    it(`TabsBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页Swiper
    it(`SwiperBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Swiper');
      await checkButtonAndClickWithID('SwiperCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('SwiperWidthSample');
      await checkButtonAndClickWithID('change width 80% to 100%');
      await pressBack();
      await checkButtonAndClickWithID('SwiperHeightSample');
      await checkButtonAndClickWithID('change height 300 to 400');
      await pressBack();
      await checkButtonAndClickWithID('SwiperPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('SwiperMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('SwiperIndexSample');
      await checkButtonAndClickWithID('change index 5 to 20');
      await pressBack();
      await checkButtonAndClickWithID('SwiperVerticalSample');
      await checkButtonAndClickWithID('change Vertical false to true');
      await pressBack();
      await checkButtonAndClickWithID('SwiperItemSpaceSample');
      await checkButtonAndClickWithID('change itemSpace 0 to 20');
      await pressBack();
      await checkButtonAndClickWithID('SwiperDisplayModeSample');
      await checkButtonAndClickWithID('change displayMode to STRETCH');
      await checkButtonAndClickWithID('change displayMode to AUTO_LINEAR');
      await pressBack();
      await checkButtonAndClickWithID('SwiperDisplayCountSample');
      await checkButtonAndClickWithID('change displayCount 1 to 3');
      await pressBack();
      await checkButtonAndClickWithID('SwiperNextMarginSample');
      await checkButtonAndClickWithID('change nextMargin 0 to 20');
      await pressBack();
      await checkButtonAndClickWithID('SwiperPrevMarginSample');
      await checkButtonAndClickWithID('change prevMargin 0 to 20');
      await pressBack();
      await checkButtonAndClickWithID('SwiperCurveSample');
      await checkButtonAndClickWithID('change curve to Linear');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to Ease');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to EaseIn');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to EaseOut');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to EaseInOut');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to FastOutSlowIn');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to LinearOutSlowIn');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to FastOutLinearIn');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to ExtremeDeceleration');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to Sharp');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to Rhythm');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to Smooth');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change curve to Friction');
      await driver.swipe(500, 800, 100, 800);
      await pressBack();
      await checkButtonAndClickWithID('SwiperControllerShowNextSample');
      await checkButtonAndClickWithID('swiperController showNext');
      await pressBack();
      await checkButtonAndClickWithID('SwiperManualSlidingSample');
      await driver.swipe(500, 800, 100, 800);
      await pressBack();
      await checkButtonAndClickWithID('SwiperLoopSample');
      await checkButtonAndClickWithID('change loop false to true');
      await driver.swipe(500, 800, 100, 800);
      await pressBack();
      await checkButtonAndClickWithID('SwiperEffectModeSample');
      await checkButtonAndClickWithID('change effectMode to Spring');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change effectMode to Fade');
      await driver.swipe(500, 800, 100, 800);
      await checkButtonAndClickWithID('change effectMode to None');
      await driver.swipe(500, 800, 100, 800);
      await pressBack();
      await checkButtonAndClickWithID('SwiperDurationSample');
      await checkButtonAndClickWithID('change duration 200 to 500');
      await driver.swipe(500, 800, 100, 800);
      await pressBack();
      await pressBack();
    })

    //点击首页Navigation
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

    //点击首页Grid
    it(`GridBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Grid');
      await checkButtonAndClickWithID('GridCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('GridWidthSample');
      await checkButtonAndClickWithID('change width 80% to 100%');
      await pressBack();
      await checkButtonAndClickWithID('GridHeightSample');
      await checkButtonAndClickWithID('change height 300 to 400');
      await pressBack();
      await checkButtonAndClickWithID('GridPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('GridMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('GridSetRCColumnsTemplateSample');
      await checkButtonAndClickWithID('change columnsTemplate 1fr 1fr to 1fr 1fr 2fr');
      await pressBack();
      await checkButtonAndClickWithID('GridSetRCRowsTemplateSample');
      await checkButtonAndClickWithID('change rowsTemplate 1fr 1fr to 1fr 1fr 2fr');
      await pressBack();
      await checkButtonAndClickWithID('GridSetRCRowsGapSample');
      await checkButtonAndClickWithID('change rowsGap 5 to 10');
      await pressBack();
      await checkButtonAndClickWithID('GridSetRCColumnsGapSample');
      await checkButtonAndClickWithID('change columnGap 5 to 10');
      await pressBack();
      await checkButtonAndClickWithID('GridSetCColumnsGapSample');
      await checkButtonAndClickWithID('change columnGap 5 to 10');
      await pressBack();
      await checkButtonAndClickWithID('GridSetRRowsGapSample');
      await checkButtonAndClickWithID('change rowsGap 5 to 10');
      await pressBack();
      await checkButtonAndClickWithID('GridSetRColumnsGapSample');
      await checkButtonAndClickWithID('change columnGap 5 to 10');
      await pressBack();
      await checkButtonAndClickWithID('GridSetRRowsGapSample');
      await checkButtonAndClickWithID('change rowsGap 5 to 10');
      await pressBack();
      await checkButtonAndClickWithID('GridMinCountSample');
      await checkButtonAndClickWithID('change minCount 0 to 5');
      await pressBack();
      await checkButtonAndClickWithID('GridMaxCountSample');
      await checkButtonAndClickWithID('change maxCount 10 to 5');
      await pressBack();
      await checkButtonAndClickWithID('GridNotSetRCColumnsGapSample');
      await checkButtonAndClickWithID('change columnGap 0 to 10');
      await pressBack();

      await driver.swipe(540, 1100, 540, 300, 200);

      await checkButtonAndClickWithID('GridNotSetRCLayoutDirectionSample');
      await checkButtonAndClickWithID('change layoutDirection to GridDirection.Row');
      await checkButtonAndClickWithID('change layoutDirection to GridDirection.RowReverse');
      await checkButtonAndClickWithID('change layoutDirection to GridDirection.Row');
      await checkButtonAndClickWithID('change layoutDirection to GridDirection.ColumnReverse');
      await pressBack();
      await checkButtonAndClickWithID('GridNotSetRCCellLengthSample');
      await checkButtonAndClickWithID('change cellLength 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('GridManualScrollingSample');
      await driver.swipe(540, 1000, 540, 500, 200);
      await pressBack();
      await checkButtonAndClickWithID('GridScrollToSample');
      await checkButtonAndClickWithID('change scrollTo to 100');
      await pressBack();
      await checkButtonAndClickWithID('GridScrollEdgeSample');
      await checkButtonAndClickWithID('change scrollEdge to Edge.Bottom');
      await pressBack();
      await checkButtonAndClickWithID('GridScrollBySample');
      await checkButtonAndClickWithID('change scrollBy to 100');
      await pressBack();
      await checkButtonAndClickWithID('GridEdgeEffectSample');
      await checkButtonAndClickWithID('change edgeEffect to EdgeEffect.Spring');
      await checkButtonAndClickWithID('change edgeEffect to EdgeEffect.Fade');
      await checkButtonAndClickWithID('change edgeEffect to EdgeEffect.None');
      await pressBack();
      await pressBack();
    })

    //点击首页Video
    it(`VideoBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('Video');
      await checkButtonAndClickWithID('VideoCreateSample');
      await driver.delayMs(2000);
      await pressBack();
      await checkButtonAndClickWithID('VideoWidthSample');
      await driver.delayMs(2000);
      await checkButtonAndClickWithID('change width 80% to 100%');
      await pressBack();
      await checkButtonAndClickWithID('VideoHeightSample');
      await driver.delayMs(2000);
      await checkButtonAndClickWithID('change height 300 to 400');
      await pressBack();
      await checkButtonAndClickWithID('VideoPaddingSample');
      await driver.delayMs(2000);
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('VideoMarginSample');
      await driver.delayMs(2000);
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await pressBack();
    })

    //点击首页Flex
    it(`FlexBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页Button
    it(`ButtonBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Button');
      await checkButtonAndClickWithID('ButtonCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('ButtonWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('ButtonHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('ButtonPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ButtonMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ButtonOptionTypeSample');
      await checkButtonAndClickWithID('change Option type to Circle');
      await checkButtonAndClickWithID('change Option type to Normal');
      await checkButtonAndClickWithID('change Option type to Capsule');
      await pressBack();
      await checkButtonAndClickWithID('ButtonTypeSample');
      await checkButtonAndClickWithID('change Option type to Circle');
      await checkButtonAndClickWithID('change Option type to Normal');
      await checkButtonAndClickWithID('change Option type to Capsule');
      await pressBack();
      await pressBack();
    })

    //点击首页Select
    it(`SelectBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页CheckBox
    it(`CheckboxBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('CheckBox');
      //创建CheckBox组件
      await checkButtonAndClickWithID('CheckBoxCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('CheckBoxWidth');
      await checkButtonAndClickWithID('CheckBoxChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('CheckBoxHeight');
      await checkButtonAndClickWithID('CheckBoxChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('CheckBoxPadding');
      await checkButtonAndClickWithID('CheckBoxChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('CheckBoxMargin');
      await checkButtonAndClickWithID('CheckBoxChangeMargin');
      await pressBack();
      //改变Size
      await checkButtonAndClickWithID('CheckBoxSize');
      await checkButtonAndClickWithID('CheckBoxChangeSize');
      await pressBack();
      //改变Select
      await checkButtonAndClickWithID('CheckBoxSelect');
      await checkButtonAndClickWithID('CheckBoxChangeSelect');
      await pressBack();
      //改变MarkStyle
      await checkButtonAndClickWithID('CheckBoxMarkStyle');
      await checkButtonAndClickWithID('CheckBoxChangeMarkStyle');
      await pressBack();
      //GroupSelect
      await checkButtonAndClickWithID('CheckBoxGroupSelect');
      await checkButtonAndClickWithID('CheckBoxChangeSelect');
      await pressBack();
      //GroupCancelSelect
      await checkButtonAndClickWithID('CheckBoxGroupCancelSelect');
      await checkButtonAndClickWithID('CheckBoxChangeCancelSelect');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页Span
    it(`SpanBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Span');
      //Text内创建Span组件
      await checkButtonAndClickWithID('SpanCreateInText');
      await driver.delayMs(1000);
      await pressBack();
      //RichEditor内创建Span组件
      await checkButtonAndClickWithID('SpanCreateInRichEditor');
      await pressBack();
      //Text内改变value
      await checkButtonAndClickWithID('SpanValueInText');
      await checkButtonAndClickWithID('SpanChangeValueInText');
      await pressBack();
      //RichEditor内改变value
      await checkButtonAndClickWithID('SpanValueInRichEditor');
      await checkButtonAndClickWithID('SpanChangeValueInRichEditor');
      await pressBack();
      //Text内改变LetterSpacing
      await checkButtonAndClickWithID('SpanLetterSpacingInText');
      await checkButtonAndClickWithID('SpanChangeLetterSpacingInText');
      await pressBack();
      //RichEditor内改变LetterSpacing
      await checkButtonAndClickWithID('SpanLetterSpacingInRichEditor');
      await checkButtonAndClickWithID('SpanChangeLetterSpacingInRichEditor');
      await pressBack();
      // Text内改变LetterSpacing
      await checkButtonAndClickWithID('SpanTextCaseInText');
      await checkButtonAndClickWithID('TextCase.Normal.Text');
      await checkButtonAndClickWithID('TextCase.LowerCase.Text');
      await checkButtonAndClickWithID('TextCase.UpperCase.Text');
      await pressBack();
      //RichEditor内改变LetterSpacing
      await checkButtonAndClickWithID('SpanTextCaseInRichEditor');
      await checkButtonAndClickWithID('TextCase.Normal.RichEditor');
      await checkButtonAndClickWithID('TextCase.LowerCase.RichEditor');
      await checkButtonAndClickWithID('TextCase.UpperCase.RichEditor');
      await pressBack();
      //Text内改变font
      await checkButtonAndClickWithID('SpanFontInText');
      await checkButtonAndClickWithID('SpanChangeFontInText');
      await pressBack();
      //RichEditor内改变Font
      await checkButtonAndClickWithID('SpanFontInRichEditor');
      await checkButtonAndClickWithID('SpanChangeFontInRichEditor');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页Slider
    it(`SliderBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页Divider
    it(`DividerBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页Toggle
    it(`ToggleBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Toggle');
      await checkButtonAndClickWithID('ToggleCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('ToggleSelectedColorSample');
      await checkButtonAndClickWithID('change selectedColor');
      await pressBack();
      await checkButtonAndClickWithID('ToggleSwitchPointColorSample');
      await checkButtonAndClickWithID('change switchPointColor');
      await pressBack();
      await checkButtonAndClickWithID('ToggleWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('ToggleHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('ToggleSizeSample');
      await checkButtonAndClickWithID('change size');
      await pressBack();
      await checkButtonAndClickWithID('TogglePaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ToggleMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('ToggleSwitchSample');
      await checkButtonAndClickWithID('change toggleIsOn');
      await checkButtonAndClickWithID('change toggleIsOn');
      await pressBack();
      await checkButtonAndClickWithID('ToggleCheckboxSelectSample');
      await checkButtonAndClickWithID('change select');
      await pressBack();
      await checkButtonAndClickWithID('ToggleCheckboxCancelSample');
      await checkButtonAndClickWithID('change cancel');
      await pressBack();
      await pressBack();
    })

    //点击首页Refresh
    it(`RefreshBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页TextArea
    it(`TextAreaBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('TextArea');
      await checkButtonAndClickWithID('TextAreaCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('TextAreaTextAlignSample');
      await checkButtonAndClickWithID('change textAlign to Start');
      await checkButtonAndClickWithID('change textAlign to Center');
      await checkButtonAndClickWithID('change textAlign to End');
      await pressBack();
      await checkButtonAndClickWithID('TextAreaWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('TextAreaHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('TextAreaPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('TextAreaMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('TextAreaFontSample');
      await checkButtonAndClickWithID('change font');
      await pressBack();
      await checkButtonAndClickWithID('TextAreaTextSample');
      await checkButtonAndClickWithID('change textAreaTextLength 10 to 100');
      await pressBack();
      await checkButtonAndClickWithID('TextAreaMaxLinesSample');
      await checkButtonAndClickWithID('change maxLines 1 to 3');
      await pressBack();
      await pressBack();
    })

    //点击首页Search
    it(`SearchBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Search');
      await checkButtonAndClickWithID('SearchCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('SearchValueSample');
      await checkButtonAndClickWithID('change searchValueLength 10 to 100');
      await pressBack();
      await checkButtonAndClickWithID('SearchTextAlignSample');
      await checkButtonAndClickWithID('change textAlign to Start');
      await checkButtonAndClickWithID('change textAlign to Center');
      await checkButtonAndClickWithID('change textAlign to End');
      await pressBack();
      await checkButtonAndClickWithID('SearchWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('SearchHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('SearchPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('SearchMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('SearchTextFontSample');
      await checkButtonAndClickWithID('change textFont');
      await pressBack();
      await checkButtonAndClickWithID('SearchPlaceholderFontSample');
      await checkButtonAndClickWithID('change placeholderFont');
      await pressBack();
      await pressBack();
    })

    //点击首页Progress
    it(`ProgressBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页Marquee
    it(`MarqueeBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Marquee');
      //创建Marquee组件
      await checkButtonAndClickWithID('MarqueeCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('MarqueeWidth');
      await checkButtonAndClickWithID('MarqueeChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('MarqueeHeight');
      await checkButtonAndClickWithID('MarqueeChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('MarqueePadding');
      await checkButtonAndClickWithID('MarqueeChangePadding');
      await pressBack();
      // 改变Margin
      await checkButtonAndClickWithID('MarqueeMargin');
      await checkButtonAndClickWithID('MarqueeChangeMargin');
      await pressBack();
      // 改变Src
      await checkButtonAndClickWithID('MarqueeSrc');
      await checkButtonAndClickWithID('MarqueeChangeSrc');
      await pressBack();
      // 改变Step
      await checkButtonAndClickWithID('MarqueeStep');
      await checkButtonAndClickWithID('MarqueeChangeStep');
      await pressBack();
      // 改变FromStart
      await checkButtonAndClickWithID('MarqueeFromStart');
      await checkButtonAndClickWithID('MarqueeChangeFromStart');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页DataPanel
    it(`DataPanelBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('DataPanel');
      //创建DataPanel组件
      await checkButtonAndClickWithID('DataPanelCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('DataPanelWidth');
      await checkButtonAndClickWithID('DataPanelChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('DataPanelHeight');
      await checkButtonAndClickWithID('DataPanelChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('DataPanelPadding');
      await checkButtonAndClickWithID('DataPanelChangePadding');
      await pressBack();
      // 改变Margin
      await checkButtonAndClickWithID('DataPanelMargin');
      await checkButtonAndClickWithID('DataPanelChangeMargin');
      await pressBack();
      // 改变CloseEffect
      await checkButtonAndClickWithID('DataPanelCloseEffect');
      await checkButtonAndClickWithID('DataPanelChangeCloseEffect');
      await pressBack();
      // 改变StrokeWidth
      await checkButtonAndClickWithID('DataPanelStrokeWidth');
      await checkButtonAndClickWithID('DataPanelChangeStrokeWidth');
      await pressBack();
      // 改变Radius
      await checkButtonAndClickWithID('DataPanelRadius');
      await checkButtonAndClickWithID('DataPanelChangeRadius');
      await pressBack();
      // 改变OffsetX
      await checkButtonAndClickWithID('DataPanelOffsetX');
      await checkButtonAndClickWithID('DataPanelChangeOffsetX');
      await pressBack();
      // 改变OffsetY
      await checkButtonAndClickWithID('DataPanelOffsetY');
      await checkButtonAndClickWithID('DataPanelChangeOffsetY');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页Rating
    it(`RatingBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Rating');
      //创建Rating组件
      await checkButtonAndClickWithID('RatingCreate');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('RatingWidth');
      await checkButtonAndClickWithID('RatingChangeWidth');
      await pressBack();
      //改变height
      await checkButtonAndClickWithID('RatingHeight');
      await checkButtonAndClickWithID('RatingChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('RatingPadding');
      await checkButtonAndClickWithID('RatingChangePadding');
      await pressBack();
      // 改变Margin
      await checkButtonAndClickWithID('RatingMargin');
      await checkButtonAndClickWithID('RatingChangeMargin');
      await pressBack();
      // 改变Stars
      await checkButtonAndClickWithID('RatingStars');
      await checkButtonAndClickWithID('RatingChangeStars');
      await pressBack();
      // 改变StarStyle
      await checkButtonAndClickWithID('RatingStarStyle');
      await checkButtonAndClickWithID('RatingChangeStarStyle');
      await pressBack();
      // 改变OptionsRating
      await checkButtonAndClickWithID('RatingOptionsRating');
      await checkButtonAndClickWithID('RatingChangeOptionsRating');
      await pressBack();
      // Click
      await checkButtonAndClickWithID('RatingClick');
      await checkButtonAndClickWithID('RatingClickIndex6');
      await pressBack();
      // swip
      await checkButtonAndClickWithID('RatingSwip');
      await driver.swipe(50, 600, 500, 600);
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页TextClock
    it(`TextClockBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('TextClock');
      await checkButtonAndClickWithID('TextClockCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('TextClockWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('TextClockHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('TextClockPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('TextClockMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('TextClockFormatSample');
      await checkButtonAndClickWithID('change format');
      await pressBack();
      await pressBack();
    })

    //点击首页Hyperlink
    it(`HyperlinkBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Hyperlink');
      await checkButtonAndClickWithID('HyperlinkCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('HyperlinkWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('HyperlinkHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('HyperlinkPaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('HyperlinkMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await pressBack();
    })

    //点击首页QRCode   单元测试失败
    it(`QRCodeBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('QRCode');
      await checkButtonAndClickWithID('QRCodeCreateSample');
      await driver.delayMs(1000);
      await pressBack();
      await checkButtonAndClickWithID('QRCodeWidthSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('QRCodeHeightSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('QRCodePaddingSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('QRCodeMarginSample');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await pressBack();
    })

    //点击首页Gauge
    it(`GaugeBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Gauge');
      await checkButtonAndClickWithID('GaugeCreateSample');
      await pressBack();
      await checkButtonAndClickWithID('GaugeWidthSample');
      await checkButtonAndClickWithID('change width 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('GaugeHeightSample');
      await checkButtonAndClickWithID('change height 100 to 200');
      await pressBack();
      await checkButtonAndClickWithID('GaugePaddingSample');
      await checkButtonAndClickWithID('change padding 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('GaugeMarginSample');
      await checkButtonAndClickWithID('change margin 20 to 30');
      await pressBack();
      await checkButtonAndClickWithID('GaugeStrokeWidthSample');
      await checkButtonAndClickWithID('change strokeWidth 4 to 10');
      await pressBack();
      // await checkButtonAndClickWithID('GaugeTrackShadowSample'); //trackShadow是api11的属性
      // await checkButtonAndClickWithID('change trackShadow');
      // await pressBack();
      await checkButtonAndClickWithID('GaugeAngleSample');
      await checkButtonAndClickWithID('change angle');
      await pressBack();
      await pressBack();
    })

    //点击首页Badge
    it(`BadgeBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Badge');
      //创建Badge组件
      await checkButtonAndClickWithID('BadgeCreate');
      await pressBack();
      //改变Size
      await checkButtonAndClickWithID('BadgeSize');
      await checkButtonAndClickWithID('BadgeChangeSize');
      await pressBack();
      //改变Color
      await checkButtonAndClickWithID('BadgeColor');
      await checkButtonAndClickWithID('BadgeChangeColor');
      await pressBack();
      //改变FontSize
      await checkButtonAndClickWithID('BadgeFontSize');
      await checkButtonAndClickWithID('BadgeChangeFontSize');
      await pressBack();
      //改变FontWeight
      await checkButtonAndClickWithID('BadgeFontWeight');
      await checkButtonAndClickWithID('BadgeChangeFontWeight');
      await pressBack();
      //改变BorderWidth
      await checkButtonAndClickWithID('BadgeBorderWidth');
      await checkButtonAndClickWithID('BadgeChangeBorderWidth');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页AlphabetIndexer
    it(`AlphabetIndexerBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('AlphabetIndexer');
      //创建AlphabetIndexerCreate组件
      await checkButtonAndClickWithID('AlphabetIndexerCreate');
      await driver.delayMs(1000);
      await pressBack();
      //改变SelectedColor
      await checkButtonAndClickWithID('AlphabetIndexerSelectedColor');
      await checkButtonAndClickWithID('AlphabetIndexerChangeSelectedColor');
      await pressBack();
      //改变PopupColor
      await checkButtonAndClickWithID('AlphabetIndexerPopupColor');
      await checkButtonAndClickWithID('AlphabetIndexerChangePopupColor');
      await pressBack();
      //改变SelectedBackgroundColor
      await checkButtonAndClickWithID('AlphabetIndexerSelectedBgColorSample');
      await checkButtonAndClickWithID('AlphabetIndexerChangeSelectedBackgroundColor');
      await pressBack();
      // 改变PopupBackground
      await checkButtonAndClickWithID('AlphabetIndexerPopupBackground');
      await checkButtonAndClickWithID('AlphabetIndexerChangePopupBackground');
      await pressBack();
      //改变SelectedFont
      await checkButtonAndClickWithID('AlphabetIndexerSelectedFont');
      await checkButtonAndClickWithID('AlphabetIndexerChangeSelectedFont');
      await pressBack();
      //改变popupFont
      await checkButtonAndClickWithID('AlphabetIndexerPopupFont');
      await checkButtonAndClickWithID('AlphabetIndexerChangePopupFont');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页Menu
    it(`MenuBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Menu');
      //创建Menu组件
      await checkButtonAndClickWithID('MenuCreate');
      await pressBack();
      //改变Font
      await checkButtonAndClickWithID('MenuFont');
      await checkButtonAndClickWithID('MenuChangeFont');
      await pressBack();
      //改变FontColor
      await checkButtonAndClickWithID('MenuFontColor');
      await checkButtonAndClickWithID('MenuChangeFontColor');
      await pressBack();
      //改变Width
      await checkButtonAndClickWithID('MenuWidth');
      await checkButtonAndClickWithID('MenuChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('MenuHeight');
      await checkButtonAndClickWithID('MenuChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('MenuPadding');
      await checkButtonAndClickWithID('MenuChangePadding');
      await pressBack();
      // 变Margin
      await checkButtonAndClickWithID('MenuMargin');
      await checkButtonAndClickWithID('MenuChangeMargin');
      await pressBack();
      // Menu展开菜单Expend
      await checkButtonAndClickWithID('MenuFirstExpend');
      await checkButtonAndClickWithID('MenuFirstChangeExpend');
      await checkButtonAndClickWithID('MenuFirstChangeExpendSencond');
      await checkButtonAndClickWithID('MenuFirstChangeExpendThird');
      await pressBack();
      await pressBack();
      // Menu收起后再次展开菜单Expend
      await checkButtonAndClickWithID('MenuSecondExpend');
      await checkButtonAndClickWithID('MenuSecondChangeExpend');
      await checkButtonAndClickWithID('MenuSecondChangeExpendSencond');
      await checkButtonAndClickWithID('MenuSecondChangeExpendThird');
      await pressBack();
      await checkButtonAndClickWithID('MenuSecondChangeExpend');
      await checkButtonAndClickWithID('MenuSecondChangeExpendSencond');
      await checkButtonAndClickWithID('MenuSecondChangeExpendThird');
      await pressBack();
      await pressBack();
      // Menu收起后多次关闭
      await checkButtonAndClickWithID('MenuMoreClose');
      await checkButtonAndClickWithID('MenuMoreCloseFirst');
      await checkButtonAndClickWithID('MenuMoreCloseSencond');
      await checkButtonAndClickWithID('MenuMoreCloseThird');
      await pressBack();
      await checkButtonAndClickWithID('MenuMoreCloseFirst');
      await pressBack();
      await checkButtonAndClickWithID('MenuMoreCloseFirst');
      await pressBack();
      await pressBack();
      // Group收起后再次展开
      await checkButtonAndClickWithID('MenuGroupCloseExpand');
      await checkButtonAndClickWithID('MenuChangeGroupCloseExpand');
      await pressBack();
      await checkButtonAndClickWithID('MenuChangeGroupCloseExpand');
      await pressBack();
      await pressBack();
      // Group多次关闭
      await checkButtonAndClickWithID('MenuGroupMoreClose');
      await checkButtonAndClickWithID('MenuChangeGroupMoreClose');
      await pressBack();
      await checkButtonAndClickWithID('MenuChangeGroupMoreClose');
      await pressBack();
      await checkButtonAndClickWithID('MenuChangeGroupMoreClose');
      await pressBack();
      await pressBack();

      await pressBack(); //返回首页
    })

    //点击首页TextPicker
    it(`TextPickerBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('TextPicker');
      //创建TextPicker组件
      await checkButtonAndClickWithID('TextPickerCreate');
      await pressBack();
      //改变TextStyle
      await checkButtonAndClickWithID('TextPickerTextStyle');
      await checkButtonAndClickWithID('TextPickerChangeTextStyle');
      await pressBack();
      //改变SelectedTextStyle
      await checkButtonAndClickWithID('TextPickerSelectedTextStyle');
      await checkButtonAndClickWithID('TextPickerChangeSelectedTextStyle');
      await pressBack();
      //改变DisappearTextStyle
      await checkButtonAndClickWithID('TextPickerDisappearTextStyle');
      await checkButtonAndClickWithID('TextPickerChangeDisappearTextStyle');
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('TextPickerWidth');
      await checkButtonAndClickWithID('TextPickerChangeWidth');
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('TextPickerHeight');
      await checkButtonAndClickWithID('TextPickerChangeHeight');
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('TextPickerPadding');
      await checkButtonAndClickWithID('TextPickerChangePadding');
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('TextPickerMargin');
      await checkButtonAndClickWithID('TextPickerChangeMargin');
      await pressBack();
      //手指滑动
      await checkButtonAndClickWithID('TextPickerFingerSwip');
      await driver.swipe(150, 300, 150, 150)
      await pressBack();
      //手指点击
      await checkButtonAndClickWithID('TextPickerClick');
      await driver.click(150, 150)
      await driver.delayMs(1000);
      await pressBack();
      //鼠标滚轮MouseScroll
      await checkButtonAndClickWithID('TextPickerMouseScroll');
      await driver.mouseScroll({
        x: 150, y: 200
      }, true, 5);
      await driver.delayMs(1000);
      await pressBack();
      //键盘Scroll
      await checkButtonAndClickWithID('TextPickerKeyBoardScroll');
      // await driver.triggerKey(KeyCode.KEYCODE_DPAD_DOWN);
      await driver.swipe(150, 300, 150, 150)
      await driver.delayMs(1000);
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页Counter
    it(`CounterBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
      await checkButtonAndClickWithID('Counter');
      //创建Counter组件
      await checkButtonAndClickWithID('CounterCreate');
      await driver.delayMs(1000);
      await pressBack();
      //改变width
      await checkButtonAndClickWithID('CounterWidth');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('CounterChangeWidth');
      await driver.delayMs(1000);
      await pressBack();
      //改变Height
      await checkButtonAndClickWithID('CounterHeight');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('CounterChangeHeight');
      await driver.delayMs(1000);
      await pressBack();
      //改变Padding
      await checkButtonAndClickWithID('CounterPadding');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('CounterChangePadding');
      await driver.delayMs(1000);
      await pressBack();
      //改变Margin
      await checkButtonAndClickWithID('CounterMargin');
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('CounterChangeMargin');
      await driver.delayMs(1000);
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页XComponent
    it(`XComponentBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
      await checkButtonAndClickWithID('XComponent');
      //创建XComponent组件
      await checkButtonAndClickWithID('XComponentCreate');
      await driver.delayMs(1000);
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页PatternLock
    it(`PatternLockBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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
      await checkButtonAndClickWithID('PatternLockWidth');
      await checkButtonAndClickWithID('PatternLockChangeWidth');
      await pressBack();
      await checkButtonAndClickWithID('PatternLockHeight');
      await checkButtonAndClickWithID('PatternLockChangeHeight');
      await pressBack();
      await checkButtonAndClickWithID('PatternLockPadding');
      await checkButtonAndClickWithID('PatternLockChangePadding');
      await pressBack();
      await checkButtonAndClickWithID('PatternLockMargin');
      await checkButtonAndClickWithID('PatternLockChangeMargin');
      await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页Shape
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

    //点击首页Path
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

    //点击首页Line
    it(`LineBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页Circle
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

    //点击首页Polyline
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

    //点击首页SideBarContainer
    it(`SideBarContainerBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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
      await checkButtonAndClickWithID('SideBarContainerShowSBSample');
      await checkButtonAndClickWithID('change showSideBar');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerCBSample');
      await checkButtonAndClickWithID('change controlButton');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerShowCBSample');
      await checkButtonAndClickWithID('change showControlButton');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerSideBarWSample');
      await checkButtonAndClickWithID('change sideBarWidth');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerAutoHideSample');
      await checkButtonAndClickWithID('change autoHide');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerSideBarPSample');
      await checkButtonAndClickWithID('change sideBarPosition');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerDividerSample');
      await checkButtonAndClickWithID('change divider');
      await pressBack();
      await driver.swipe(540, 1000, 540, 500);
      await checkButtonAndClickWithID('SideBarContainerMinCWSample');
      await checkButtonAndClickWithID('change minContentWidth');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerMinSBWSample');
      await checkButtonAndClickWithID('change minSideBarWidth');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerMaxSBWSample');
      await checkButtonAndClickWithID('change maxSideBarWidth');
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerDragSBSample');
      await driver.delayMs(1000);
      await driver.swipe(300, 500, 100, 500);
      await pressBack();
      await checkButtonAndClickWithID('SideBarContainerDragCoSample');
      await driver.delayMs(1000);
      await driver.drag(300, 500, 500, 500);
      await pressBack();
      await pressBack();
    })

    //点击首页ImageAnimator
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

    //点击首页LoadingProgress
    it(`LoadingProgressBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页TextTimer
    it(`TextTimerBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页Blank
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

    //点击首页Radio
    it(`RadioBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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

    //点击首页ScrollBar
    it(`ScrollBarBenchMarkTest`, 0, async () => {
      await driver.delayMs(3000);
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