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
import UIComponentListAndGridListFadingEdgeTest from './UIComponentListAndGridListFadingEdgeTest/UIComponentListAndGridListFadingEdge.test'
import UIComponentListAndGridGridMirrorTest from './UIComponentListAndGridGridMirrorTest/UIComponentListAndGridGridMirror.test'
import UIComponentListAndGridListClipContentTest from './UIComponentListAndGridListClipContentTest/UIComponentListAndGridListClipContent.test'
import UIComponentListAndGridListLeftSwipDeleteBuilderComponentTest from './UIComponentListAndGridListLeftSwipDeleteBuilderComponentTest/UIComponentListAndGridListLeftSwipDeleteBuilderComponent.test'
import UIComponentListAndGridListInterfaceCachedCountShowTest from './UIComponentListAndGridListInterfaceCachedCountShowTest/UIComponentListAndGridListInterfaceCachedCountShow.test'
import UIComponentListAndGridListComponentTest from './UIComponentListAndGridListComponentTest/UIComponentListAndGridListComponent.test'
import UIComponentListAndGridListScrollPageTest from './UIComponentListAndGridListScrollPageTest/UIComponentListAndGridListScrollPage.test'
import StateRepeatArrayLikeTest from './StateRepeatArrayLikeTest/StateRepeatArrayLike.test'
import UIComponentMediaCounterLargeFontTest from './UIComponentMediaCounterLargeFontTest/UIComponentMediaCounterLargeFont.test'
import UIImportComponentContentTest from './UIImportComponentContentTest/UIImportComponentContent.test'
import ActionEventCommonEventKeyEventDispatchTest from './ActionEventCommonEventKeyEventDispatchTest/ActionEventCommonEventKeyEventDispatch.test'
import ActionEventCommonEventAreaChangeApproximateChangeTest from './ActionEventCommonEventAreaChangeApproximateChangeTest/ActionEventCommonEventAreaChangeApproximateChange.test'

export default function testsuite() {
  demoTest();
  UIComponentListAndGridListFadingEdgeTest();
  UIComponentListAndGridGridMirrorTest();
  UIComponentListAndGridListClipContentTest();
  UIComponentListAndGridListLeftSwipDeleteBuilderComponentTest();
  UIComponentListAndGridListInterfaceCachedCountShowTest();
  UIComponentListAndGridListComponentTest();
  UIComponentListAndGridListScrollPageTest();
  StateRepeatArrayLikeTest();
  UIComponentMediaCounterLargeFontTest();
  UIImportComponentContentTest();
  ActionEventCommonEventKeyEventDispatchTest();
  ActionEventCommonEventAreaChangeApproximateChangeTest();
}