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
import UIAttributeFontSupportStageAttrs from  './UIAttributeFontSupportStageTest/UIAttributeFontSupportStageAttrs.test'
import UIAttributeFontSupportStageComponent from './UIAttributeFontSupportStageTest/UIAttributeFontSupportStageComponent.test'
import UIComponentDividerBlankInterfaceColor from  './UIComponentDividerBlankInterfaceTest/UIComponentDividerBlankInterfaceColor.test'
import UIComponentDividerBlankInterfaceMin from  './UIComponentDividerBlankInterfaceTest/UIComponentDividerBlankInterfaceMin.test'
import UIComponentTextCommonTextStyleTextArea from './UIComponentTextCommonTextStyleTest/UIComponentTextCommonTextStyleTextArea.test'
import UIComponentTextCommonTextStyleText from './UIComponentTextCommonTextStyleTest/UIComponentTextCommonTextStyleText.test'
import UIComponentTextCommonTextStyleSpan from './UIComponentTextCommonTextStyleTest/UIComponentTextCommonTextStyleSpan.test'
import UIComponentLayoutColumnInterface from './UIComponentLayoutColumnInterfaceTest/UIComponentLayoutColumnInterface.test'
export default function testsuite() {
  demoTest();
  UIAttributeFontInterface001();
  UIAttributeFontInterfaceColor();
  UIAttributeFontInterfaceFontFamily();
  UIAttributeFontInterfaceSize();
  UIAttributeFontInterfaceStyle();
  UIAttributeFontInterfaceWeight();
  UIAttributeFontSupportStageAttrs();
  UIAttributeFontSupportStageComponent();
  UIComponentDividerBlankInterfaceColor();
  UIComponentDividerBlankInterfaceMin();
  UIComponentTextCommonTextStyleTextArea();
  UIComponentTextCommonTextStyleText();
  UIComponentTextCommonTextStyleSpan();
  UIComponentLayoutColumnInterface();
}