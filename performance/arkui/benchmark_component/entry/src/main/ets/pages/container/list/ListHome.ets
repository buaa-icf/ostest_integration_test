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

import { ArrEntity } from '../../../entity/ArrEntity';
import { CommonButton } from '../../../util/CommonButton';

@Entry
@Component
struct ListHome {
  @State messageTenLength: string = 'Hello-Text';
  @State message: string = 'Hello-Text';

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Text('ListBenchmark')
          .padding('10vp')
          .width('100%')
          .fontSize('25fp')
          .textAlign(TextAlign.Center)

        CommonButton({
          buttonName: 'ListCreate',
          buttonUrl: 'pages/container/list/ListCreateSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListWidth',
          buttonUrl: 'pages/container/list/ListWidthSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListHeight',
          buttonUrl: 'pages/container/list/ListHeightSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListPadding',
          buttonUrl: 'pages/container/list/ListPaddingSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListMargin',
          buttonUrl: 'pages/container/list/ListMarginSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListItemWidth',
          buttonUrl: 'pages/container/list/ListItemWidthSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListItemHeight',
          buttonUrl: 'pages/container/list/ListItemHeightSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListItemPadding',
          buttonUrl: 'pages/container/list/ListItemPaddingSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListItemMargin',
          buttonUrl: 'pages/container/list/ListItemMarginSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListItemGroupDivider',
          buttonUrl: 'pages/container/list/ListItemGroupDividerSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListItemGroupSpace',
          buttonUrl: 'pages/container/list/ListItemGroupSpaceSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListSpace',
          buttonUrl: 'pages/container/list/ListSpaceSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListListDirection',
          buttonUrl: 'pages/container/list/ListListDirectionSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListAlignListItem',
          buttonUrl: 'pages/container/list/ListAlignListItemSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListLanes',
          buttonUrl: 'pages/container/list/ListLanesSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListCachedCount',
          buttonUrl: 'pages/container/list/ListCachedCountSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListDivider',
          buttonUrl: 'pages/container/list/ListDividerSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListScrollBar',
          buttonUrl: 'pages/container/list/ListScrollBarSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListRemoveItem',
          buttonUrl: 'pages/container/list/ListRemoveItemSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListAddItem',
          buttonUrl: 'pages/container/list/ListAddItemSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListEdgeEffect',
          buttonUrl: 'pages/container/list/ListEdgeEffectSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListChainAnimation',
          buttonUrl: 'pages/container/list/ListChainAnimationSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListFriction',
          buttonUrl: 'pages/container/list/ListFrictionSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListEnableScrollInteraction',
          buttonUrl: 'pages/container/list/ListEnableScrollInteractionSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListScrollSnapAlign',
          buttonUrl: 'pages/container/list/ListScrollSnapAlignSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListChainAnimationOptions',
          buttonUrl: 'pages/container/list/ListChainAnimationOptionsSample',
          data: ArrEntity.textOneHundredHuLength
        });

        CommonButton({
          buttonName: 'ListSticky',
          buttonUrl: 'pages/container/list/ListStickySample',
          data: ArrEntity.textOneHundredHuLength
        });


      }
      .padding('10vp')
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')
  }
}