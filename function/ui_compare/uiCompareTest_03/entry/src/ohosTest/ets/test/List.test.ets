/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import UIComponentInfomationProgressModifierColor
  from './UIComponentInfomationProgressModifierColorTest/UIComponentInfomationProgressModifierColor.test';
import UIComponentMediaTimePickerEnableCascade
  from './UIComponentMediaTimePickerEnableCascadeTest/UIComponentMediaTimePickerEnableCascade.test';
import UIComponentMediaTimePickerStartEndTime
  from './UIComponentMediaTimePickerStartEndTimeTest/UIComponentMediaTimePickerStartEndTime.test';
import UIComponentSpecialComponentsEmbeddedComponentFingerClick
  from './UIComponentSpecialComponentsEmbeddedComponentFingerClickTest/UIComponentSpecialComponentsEmbeddedComponentFingerClick.test';
import UIComponentSpecialComponentsEmbeddedComponentMouseClick
  from './UIComponentSpecialComponentsEmbeddedComponentMouseClickTest/UIComponentSpecialComponentsEmbeddedComponentMouseClick.test';
import UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingLength
  from './UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingLengthTest/UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingLength.test';
import UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingMargin
  from './UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingMarginTest/UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingMargin.test';
import UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPadding
  from './UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPaddingTest/UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPaddingTest.test';
import UIComponentSpecialComponentsEmbeddedComponentSize
  from './UIComponentSpecialComponentsEmbeddedComponentSizeTest/UIComponentSpecialComponentsEmbeddedComponentSize.test';
import UIComponentSpecialComponentsEmbeddedComponentWidthAndHeight
  from './UIComponentSpecialComponentsEmbeddedComponentWidthAndHeightTest/UIComponentSpecialComponentsEmbeddedComponentWidthAndHeight.test';
import UIComponentSpecialComponentsXComponentOnload
  from './UIComponentSpecialComponentsXComponentOnloadTest/UIComponentSpecialComponentsXComponentOnload.test';
import UIComponentSymbolGlyphFontSizeScale
  from './UIComponentSymbolGlyphFontSizeScaleTest/UIComponentSymbolGlyphFontSizeScale.test';
import UIComponentTextRichEditorAction
  from './UIComponentTextRichEditorActionTest/UIComponentTextRichEditorAction.test';
import UIComponentTextRichEditorInterface
  from './UIComponentTextRichEditorInterfaceTest/UIComponentTextRichEditorInterface.test';
import UIComponentTextRichEditorKeyboardAppearance
  from './UIComponentTextRichEditorKeyboardAppearanceTest/UIComponentTextRichEditorKeyboardAppearance.test';
import UIComponentTextRichEditorUI from './UIComponentTextRichEditorUITest/UIComponentTextRichEditorUI.test';

export default function testsuite() {
  demoTest();
  UIComponentTextRichEditorUI();
  UIComponentTextRichEditorInterface();
  UIComponentTextRichEditorKeyboardAppearance();
  UIComponentTextRichEditorAction();
  UIComponentSymbolGlyphFontSizeScale();
  UIComponentInfomationProgressModifierColor();
  UIComponentMediaTimePickerEnableCascade();
  UIComponentMediaTimePickerStartEndTime();
  UIComponentSpecialComponentsXComponentOnload();
  UIComponentSpecialComponentsEmbeddedComponentSize();
  UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingLength();
  UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingMargin();
  UIComponentSpecialComponentsEmbeddedComponentWidthAndHeight();
  UIComponentSpecialComponentsEmbeddedComponentPropertyTestCommonAttributesPaddingPadding();
  UIComponentSpecialComponentsEmbeddedComponentMouseClick();
  UIComponentSpecialComponentsEmbeddedComponentFingerClick();
}