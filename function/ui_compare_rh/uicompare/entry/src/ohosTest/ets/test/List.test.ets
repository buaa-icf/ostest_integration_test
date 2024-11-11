/*
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import ComponentTextRicheditorFontfeatures
  from './ComponentTextRicheditorFontfeatureTest/ComponentTextRicheditorFontfeatures.test';
import ComponentTextRicheditorCustomColors
  from './ComponentTextRicheditorCustomColorsTest/ComponentTextRicheditorCustomColors.test';
import ComponentTextRicheditorWordbreaks
  from './ComponentTextRicheditorWordbreakTest/ComponentTextRicheditorWordbreaks.test';
import ComponentTextRicheditorLongPresstoselectalls
  from './ComponentTextRicheditorLongPresstoselectallTest/ComponentTextRicheditorLongPresstoselectalls.test';
import ComponentTextRicheditorPlaceholderTests
  from './ComponentTextRicheditorPlaceholderTest/ComponentTextRicheditorPlaceholderTests.test';

import ComponentTextRicheditorCustomkeyBoardAvoidAnceTests
  from './ComponentTextRicheditorCustomkeyBoardAvoidAnceTest/ComponentTextRicheditorCustomkeyBoardAvoidAnceTests.test';
import ComponentTextRicheditorKeyboardReinForcingTests
  from './ComponentTextRicheditorKeyboardReinForcingTest/ComponentTextRicheditorKeyboardReinForcingTests.test';
import ComponentTextRicheditorLineHeightLetterSpacingTests
  from './ComponentTextRicheditorLineHeightLetterSpacing/ComponentTextRicheditorLineHeightLetterSpacingTests.test';
import ComponentTextRicheditorUxConformanceTests
  from './ComponentTextRicheditorUxConformanceTest/ComponentTextRicheditorUxConformanceTests.test';
import ComponentTextRicheditorAITests from './ComponentTextRicheditorAITest/ComponentTextRicheditorAITests.test';
import ComponentTextRicheditorOnWillChangeTests
  from './ComponentTextRicheditorOnWillChangeTest/ComponentTextRicheditorOnWillChangeTests.test';
import ComponentTextRicheditorInterfaceTests
  from './ComponentTextRicheditorInterface/ComponentTextRicheditorInterfaceTests.test';
import ComponentTextRicheditorShortKcutKeysTests
  from './ComponentTextRicheditorShortKcutKeys/ComponentTextRicheditorShortKcutKeysTests.test';

import UIComponentNavTabsOnWillShow from './UIComponentNavTabsOnWillShowTest/UIComponentNavTabsOnWillShow.test';
import UIComponentNavTabsContentAdapt from './UIComponentNavTabsContentAdaptTest/UIComponentNavTabsContentAdapt.test';
import ArkUITabScrollable from './ArkUITabScrollableTest/ArkUITabScrollable.test';
import ArkUITabsLabelStylefont from './ArkUITabsLabelStylefontTest/ArkUITabsLabelStylefont.test';
import ArkUITabsLabelStyleSelectedColor from './ArkUITabsLabelStyleSelectedColorTest/ArkUITabsLabelStyleSelectedColor.test';
import ArkUITabsLabelStyleUnselectedColor from './ArkUITabsLabelStyleUnselectedColorTest/ArkUITabsLabelStyleUnselectedColor.test';
import UIComponentListAndGridWaterFlowAdd from './UIComponentListAndGridWaterFlowAddTest/UIComponentListAndGridWaterFlowAdd.test';
import UIComponentListAndGridWaterSections from './UIComponentListAndGridWaterSectionsTest/UIComponentListAndGridWaterSections.test';
import UIComponentNavModifier from './UIComponentNavModifierTest/UIComponentNavModifier.test';
import UIComponentNavTabsAction from './UIComponentNavTabsActionTest/UIComponentNavTabsAction.test';
import UIComponentNavTabsBlurStyle from './UIComponentNavTabsBlurStyleTest/UIComponentNavTabsBlurStyle.test';
import UIComponentNavTabsCachedCount from './UIComponentNavTabsCachedCountTest/UIComponentNavTabsCachedCount.test';
import UIComponentNavTabsImproTrace from './UIComponentNavTabsImproTraceTest/UIComponentNavTabsImproTrace.test';
import UIComponentNavTabsInterception from './UIComponentNavTabsInterceptionTest/UIComponentNavTabsInterception.test';
import UIComponentNavTabsInterface from './UIComponentNavTabsInterfaceTest/UIComponentNavTabsInterface.test';
import UIComponentNavTabsMirror from './UIComponentNavTabsMirrorTest/UIComponentNavTabsMirror.test';
import UIComponentTabTabBarSymbol from './UIComponentTabTabBarSymbolTest/UIComponentTabTabBarSymbol.test';
import UIComponentOtherRefreshPromptText from './UIComponentOtherRefreshPromptTextTest/UIComponentOtherRefreshPromptText.test';
import UIComponentOtherRefreshInterface from './UIComponentOtherRefreshInterfaceTest/UIComponentOtherRefreshInterface.test';
import UIComponentOtherRefreshInterAction from './UIComponentOtherRefreshInterActionTest/UIComponentOtherRefreshInterAction.test';
import UIComponentOtherRefreshAbility from './UIComponentOtherRefreshAbilityTest/UIComponentOtherRefreshAbility.test';
import FunctionJichuWaterFlow from './FunctionJichuWaterFlowTest/FunctionJichuWaterFlow.test';
import UIComponentNavTabsSubTabbarStyle from './UIComponentNavTabsSubTabbarStyleTest/UIComponentNavTabsSubTabbarStyle.test';
import ArkUITabsVertical from './ArkUITabsVerticalTest/ArkUITabsVertical.test';
import UIComponentNavTabsHeight from './UIComponentNavTabsHeightTest/UIComponentNavTabsHeight.test';
import UIComponentNavTabsWidth from './UIComponentNavTabsWidthTest/UIComponentNavTabsWidth.test';
import UIComponentNavTabsEdgeeffect from './UIComponentNavTabsEdgeeffectTest/UIComponentNavTabsEdgeeffect.test';
import UIComponentNavTabsExpandsafearea from './UIComponentNavTabsExpandsafeareaTest/UIComponentNavTabsExpandsafearea.test';
import ArkUITabsIconStyleSelectedColor from './ArkUITabsIconStyleSelectedColorTest/ArkUITabsIconStyleSelectedColor.test';
import ArkUITabsIconStyleUnselectedColor from './ArkUITabsIconStyleUnselectedColorTest/ArkUITabsIconStyleUnselectedColor.test';
import ArkUITabsSingleSelectedcolor from './ArkUITabsSingleSelectedcolorTest/ArkUITabsSingleSelectedcolor.test';
import ArkUITabsSingleUnselectedcolor from './ArkUITabsSingleUnselectedcolorTest/ArkUITabsSingleUnselectedcolor.test';

export default function testsuite() {
  ComponentTextRicheditorFontfeatures();
  ComponentTextRicheditorCustomColors();
  ComponentTextRicheditorWordbreaks();
  ComponentTextRicheditorLongPresstoselectalls();
  ComponentTextRicheditorPlaceholderTests();
  ComponentTextRicheditorCustomkeyBoardAvoidAnceTests();
  ComponentTextRicheditorKeyboardReinForcingTests();
  ComponentTextRicheditorLineHeightLetterSpacingTests();
  ComponentTextRicheditorUxConformanceTests();
  ComponentTextRicheditorAITests();
  ComponentTextRicheditorOnWillChangeTests();
  ComponentTextRicheditorInterfaceTests();
  ComponentTextRicheditorShortKcutKeysTests();
  
  UIComponentNavTabsOnWillShow();
  UIComponentNavTabsContentAdapt();
  ArkUITabScrollable();
  ArkUITabsLabelStylefont();
  ArkUITabsLabelStyleSelectedColor();
  ArkUITabsLabelStyleUnselectedColor();
  UIComponentListAndGridWaterFlowAdd();
  UIComponentListAndGridWaterSections();
  UIComponentNavModifier();
  UIComponentNavTabsAction();
  UIComponentNavTabsBlurStyle();
  UIComponentNavTabsCachedCount();
  UIComponentNavTabsImproTrace();
  UIComponentNavTabsInterception();
  UIComponentNavTabsInterface();
  UIComponentNavTabsMirror();
  UIComponentTabTabBarSymbol();
  UIComponentOtherRefreshPromptText();
  UIComponentOtherRefreshInterface();
  UIComponentOtherRefreshInterAction();
  UIComponentOtherRefreshAbility();
  FunctionJichuWaterFlow();
  UIComponentNavTabsSubTabbarStyle();
  ArkUITabsVertical();
  UIComponentNavTabsHeight();
  UIComponentNavTabsWidth();
  UIComponentNavTabsEdgeeffect();
  UIComponentNavTabsExpandsafearea();
  ArkUITabsIconStyleSelectedColor();
  ArkUITabsIconStyleUnselectedColor();
  ArkUITabsSingleSelectedcolor();
  ArkUITabsSingleUnselectedcolor();
  
}