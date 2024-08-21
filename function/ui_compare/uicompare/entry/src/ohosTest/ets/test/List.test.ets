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

import demoTest from  './Demo.test'
import UIAttributeFontInterface001 from  './UIAttributeFontInterfaceTest/UIAttributeFontInterface001.test'
import UIAttributeFontInterfaceColor from  './UIAttributeFontInterfaceTest/UIAttributeFontInterfaceColor.test'
import UIAttributeFontInterfaceFontFamily from  './UIAttributeFontInterfaceTest/UIAttributeFontInterfaceFontFamily.test'
import UIAttributeFontInterfaceSize from  './UIAttributeFontInterfaceTest/UIAttributeFontInterfaceSize.test'
import UIAttributeFontInterfaceStyle from  './UIAttributeFontInterfaceTest/UIAttributeFontInterfaceStyle.test'
import UIAttributeFontInterfaceWeight from  './UIAttributeFontInterfaceTest/UIAttributeFontInterfaceWeight.test'
import UIComponentDividerBlankInterfaceColor from  './UIComponentDividerBlankInterfaceTest/UIComponentDividerBlankInterfaceColor.test'
import UIComponentDividerBlankInterfaceMin from  './UIComponentDividerBlankInterfaceTest/UIComponentDividerBlankInterfaceMin.test'
import UIComponentTextCommonTextStyleTextArea from './UIComponentTextCommonTextStyleTest/UIComponentTextCommonTextStyleTextArea.test'
import UIComponentTextCommonTextStyleText from './UIComponentTextCommonTextStyleTest/UIComponentTextCommonTextStyleText.test'
import UIComponentTextCommonTextStyleSpan from './UIComponentTextCommonTextStyleTest/UIComponentTextCommonTextStyleSpan.test'
import UIComponentLayoutColumnInterface from './UIComponentLayoutColumnInterfaceTest/UIComponentLayoutColumnInterface.test'
import UIVisibilityInterface001 from './UIAttributePositionVisibilityTest/UIAttributePositionVisibility001.test'
import UiComponentTextCommonTextstyle from './UiComponentTextCommonTextstyleTest/UiComponentTextCommonTextstyle.test'
import UiComponentTextTextareaInterface from './UiComponentTextTextareaInterfaceTest/UiComponentTextTextareaInterface.test'
import UIAttributePositionSizeLayoutTest from './UIAttributePositionSizeLayoutTest/UIAttributePositionSizeLayoutTest.test'
import UIAttributePositionInterfaceTest from './UIAttributePositionInterfaceTest/UIAttributePositionInterfaceTest.test'
import ComponentAttributeStringModifyingStyle001 from './ComponentAttributeStringModifyingStyleTest/ComponentAttributeStringModifyingStyle001.test'
import ComponentAttributeStringModifyingStyleText001 from './ComponentAttributeStringModifyingStyleTextTest/ComponentAttributeStringModifyingStyleText001.test'
import ComponentAttributeStringModifyingText001 from './ComponentAttributeStringModifyingTextTest/ComponentAttributeStringModifyingText001.test'
import ComponentTextAttributeString001 from './ComponentTextAttributeStringTest/ComponentTextAttributeStringTest001.test'
import ComponentTextAttributeStringConstructs001 from './ComponentTextAttributeStringConstructsTest/ComponentTextAttributeStringConstructsTest001.test'
import ComponentLayoutCommonPixelTest001 from './ComponentLayoutCommonPixelTest/ComponentLayoutCommonPixelTest001.test'
import UiTextBrightenTest001 from './UiTextBrightenTest/UiTextBrightenTest001.test'
import UiTextShadowTest001 from './UiTextShadowTest/UiTextShadowTest001.test'
import UiComponentDividerStyle from './UiComponentDividerStyleTest/UiComponentDividerStyle.test'
import UiComponentLayoutCommonPixel from './UiComponentLayoutCommonPixelTest/UiComponentLayoutCommonPixel.test'
import UiComponentRowcolumnSidebarcontainerInterface from './UiComponentRowcolumnSidebarcontainerInterfaceTest/UiComponentRowcolumnSidebarcontainerInterface.test'
import UiComponentTextCommonTextstyle from './UiComponentTextCommonTextstyleTest/UiComponentTextCommonTextstyle.test'
import UiComponentTextModifier from './UiComponentTextModifierTest/UiComponentTextModifier.test'
import UiComponentWordbreak from './UiComponentWordbreakTest/UiComponentWordbreak.test'

import UIComponentCreateColor from './UIComponentCreateColorTest/UIComponentCreateColor.test'
export default function testsuite() {
  demoTest();
  UIAttributeFontInterface001();
  UIAttributeFontInterfaceColor();
  UIAttributeFontInterfaceFontFamily();
  UIAttributeFontInterfaceSize();
  UIAttributeFontInterfaceStyle();
  UIAttributeFontInterfaceWeight();
  UIComponentDividerBlankInterfaceColor();
  UIComponentDividerBlankInterfaceMin();
  UIComponentTextCommonTextStyleTextArea();
  UIComponentTextCommonTextStyleText();
  UIComponentTextCommonTextStyleSpan();
  UIComponentLayoutColumnInterface();
  UIVisibilityInterface001();
  UiComponentTextCommonTextstyle();
  UiComponentTextTextareaInterface();
  UIAttributePositionSizeLayoutTest();
  UIAttributePositionInterfaceTest();
  ComponentAttributeStringModifyingStyle001();
  ComponentAttributeStringModifyingStyleText001();
  ComponentAttributeStringModifyingText001();
  ComponentTextAttributeString001();
  ComponentTextAttributeStringConstructs001();
  ComponentLayoutCommonPixelTest001();
  UiTextBrightenTest001();
  UiTextShadowTest001();
  UiComponentDividerStyle();
  UiComponentLayoutCommonPixel();
  UiComponentRowcolumnSidebarcontainerInterface();
  UiComponentTextCommonTextstyle();
  UiComponentTextModifier();
  UIComponentCreateColor();
  UiComponentWordbreak();
}