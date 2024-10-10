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
}