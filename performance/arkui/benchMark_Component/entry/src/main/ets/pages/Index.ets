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

import { ArrEntity } from '../entity/ArrEntity';
import { CommonButton } from '../util/CommonButton';

@Entry
@Component
struct Index {
  aboutToAppear() {
    ArrEntity.pushData(5);
  }

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('BenchmarkSample')
          .padding('15vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({ buttonName: 'Text', buttonUrl: 'pages/base/text/TextHome' });
        CommonButton({ buttonName: 'GridRow', buttonUrl: 'pages/container/gridRow/GridRowHome' });
        CommonButton({ buttonName: 'GridCol', buttonUrl: 'pages/container/gridCol/GridColHome' });
        CommonButton({ buttonName: 'TextInput', buttonUrl: 'pages/base/textInput/TextInputHome' });
        CommonButton({ buttonName: 'Image', buttonUrl: 'pages/base/image/ImageHome' });
        CommonButton({ buttonName: 'Row', buttonUrl: 'pages/container/row/RowHome' });
        CommonButton({ buttonName: 'Column', buttonUrl: 'pages/container/column/ColumnHome' });
        CommonButton({ buttonName: 'List', buttonUrl: 'pages/container/list/ListHome' });
        CommonButton({ buttonName: 'Scroll', buttonUrl: 'pages/container/scroll/ScrollHome' });
        CommonButton({ buttonName: 'Tabs', buttonUrl: 'pages/container/tabs/TabsHome' });
        CommonButton({ buttonName: 'Swiper', buttonUrl: 'pages/container/swiper/SwiperHome' });
        CommonButton({ buttonName: 'Navigation', buttonUrl: 'pages/base/navigation/NavigationHome' });
        CommonButton({ buttonName: 'Grid', buttonUrl: 'pages/container/grid/GridHome' });
        CommonButton({ buttonName: 'Video', buttonUrl: 'pages/other/video/VideoHome' });
        CommonButton({ buttonName: 'Flex', buttonUrl: 'pages/container/flex/FlexHome' });
        CommonButton({ buttonName: 'Button', buttonUrl: 'pages/base/button/ButtonHome' });
        CommonButton({ buttonName: 'Select', buttonUrl: 'pages/base/select/SelectHome' });
        CommonButton({ buttonName: 'CheckBox', buttonUrl: 'pages/base/checkbox/CheckBoxHome' });
        CommonButton({ buttonName: 'Span', buttonUrl: 'pages/base/span/SpanHome' });
        CommonButton({ buttonName: 'Slider', buttonUrl: 'pages/base/slider/SliderHome' });
        CommonButton({ buttonName: 'Divider', buttonUrl: 'pages/base/divider/DividerHome' });
        CommonButton({ buttonName: 'Toggle', buttonUrl: 'pages/base/toggle/ToggleHome' });
        CommonButton({ buttonName: 'Refresh', buttonUrl: 'pages/container/refresh/RefreshHome' });
        CommonButton({ buttonName: 'TextArea', buttonUrl: 'pages/base/textArea/TextAreaHome' });
        CommonButton({ buttonName: 'Search', buttonUrl: 'pages/base/search/SearchHome' });
        CommonButton({ buttonName: 'Progress', buttonUrl: 'pages/base/progress/ProgressHome' });
        CommonButton({ buttonName: 'Marquee', buttonUrl: 'pages/base/marquee/MarqueeHome' });
        CommonButton({ buttonName: 'DataPanel', buttonUrl: 'pages/base/dataPanel/DataPanelHome' });
        CommonButton({ buttonName: 'Rating', buttonUrl: 'pages/base/rating/RatingHome' });
        CommonButton({ buttonName: 'TextClock', buttonUrl: 'pages/base/textClock/TextClockHome' });
        CommonButton({ buttonName: 'Hyperlink', buttonUrl: 'pages/container/hyperlink/HyperlinkHome' });
        CommonButton({ buttonName: 'QRCode', buttonUrl: 'pages/base/qRCode/QRCodeHome' });
        CommonButton({ buttonName: 'Gauge', buttonUrl: 'pages/base/gauge/GaugeHome' });
        CommonButton({ buttonName: 'Badge', buttonUrl: 'pages/container/badge/BadgeHome' });
        CommonButton({ buttonName: 'AlphabetIndexer', buttonUrl: 'pages/base/alphabetIndexer/AlphabetIndexerHome' });
        CommonButton({ buttonName: 'Menu', buttonUrl: 'pages/base/menu/MenuHome' });
        CommonButton({ buttonName: 'TextPicker', buttonUrl: 'pages/base/textPicker/TextPickerHome' });
        CommonButton({ buttonName: 'Counter', buttonUrl: 'pages/container/counter/CounterHome' });
        CommonButton({ buttonName: 'XComponent', buttonUrl: 'pages/base/xComponent/XComponentHome' });
        CommonButton({ buttonName: 'PatternLock', buttonUrl: 'pages/base/patternLock/PatternLockHome' });
        CommonButton({ buttonName: 'Shape', buttonUrl: 'pages/other/shape/ShapeHome' });
        CommonButton({ buttonName: 'Path', buttonUrl: 'pages/other/path/PathHome' });
        CommonButton({ buttonName: 'Line', buttonUrl: 'pages/other/line/LineHome' });
        CommonButton({ buttonName: 'Circle', buttonUrl: 'pages/other/circle/CircleHome' });
        CommonButton({ buttonName: 'Polyline', buttonUrl: 'pages/other/polyline/PolylineHome' });
        CommonButton({ buttonName: 'SideBarContainer', buttonUrl: 'pages/container/sideBarContainer/SideBarContainerHome' });
        CommonButton({ buttonName: 'ImageAnimator', buttonUrl: 'pages/base/imageAnimator/ImageAnimatorHome' });
        CommonButton({ buttonName: 'LoadingProgress', buttonUrl: 'pages/base/loadingProgress/LoadingProgressHome' });
        CommonButton({ buttonName: 'TextTimer', buttonUrl: 'pages/base/textTimer/TextTimerHome' });
        CommonButton({ buttonName: 'Blank', buttonUrl: 'pages/base/blank/BlankHome' });
        CommonButton({ buttonName: 'Radio', buttonUrl: 'pages/base/radio/RadioHome' });
        CommonButton({ buttonName: 'ScrollBar', buttonUrl: 'pages/base/scrollBar/ScrollBarHome' });

        CommonButton({ buttonName: '@LocalStorageLink', buttonUrl: 'pages/stateManagement/localStorageLink/LocalStorageLinkHome' });
        CommonButton({ buttonName: '@StorageLink', buttonUrl: 'pages/stateManagement/storageLink/StorageLinkHome' });
        CommonButton({ buttonName: '@LocalStorageProp', buttonUrl: 'pages/stateManagement/localStorageProp/LocalStoragePropHome' });
        CommonButton({ buttonName: '@StorageProp', buttonUrl: 'pages/stateManagement/storageProp/StoragePropHome' });
        CommonButton({ buttonName: '@Consume', buttonUrl: 'pages/stateManagement/consume/ConsumeHome' });
        CommonButton({ buttonName: '@Provide', buttonUrl: 'pages/stateManagement/provide/ProvideHome' });
        CommonButton({ buttonName: '@Observed', buttonUrl: 'pages/stateManagement/observed/ObservedHome' });
        CommonButton({ buttonName: '@ObjectLink', buttonUrl: 'pages/stateManagement/objectLink/ObjectLinkHome' });
        CommonButton({ buttonName: '@Watch', buttonUrl: 'pages/stateManagement/watch/WatchHome' });
      }
      .padding('20vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}