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

export default function firstProjectTest() {
  describe('ActsFirstProjectTest', () => {
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
      await driver.delayMs(5000);
      await checkButtonAndClickWithID('Text');
      //创建Text组件
      await checkButtonAndClickWithID('TextCreate10Char');
      await driver.delayMs(1000);
      await pressBack();
      await checkButtonAndClickWithID('TextCreate100Char');
      await driver.delayMs(1000);
      await pressBack();
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
      await driver.swipe(360, 2100, 360, 300, 40000)
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
      await driver.delayMs(1000);
      await pressBack();
      // await checkButtonAndClickWithID('heightAdaptivePolicyThree100Char');
      // await checkButtonAndClickWithID('TextChangeheightAdaptivePolicyThree');
      // await pressBack();
      await pressBack(); //返回首页
    })

    //点击首页TextInput
    it(`TextInputBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
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
      await driver.delayMs(1000);
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

    /////////////////////////

    //点击首页List
    it(`ListBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
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

    //点击首页Grid
    it(`GridBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
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

      await driver.swipe(540, 2100, 540, 300, 200);

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

    //////////////////////

    //点击首页CheckBox
    it(`CheckboxBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
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

    //点击首页Toggle
    it(`ToggleBenchMarkTest`, 0, async () => {
      await driver.delayMs(1000);
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
      await driver.delayMs(1000);
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


  })
}