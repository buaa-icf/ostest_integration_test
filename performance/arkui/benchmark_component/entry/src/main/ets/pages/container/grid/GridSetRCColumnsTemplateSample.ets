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

/**
 * columnsTemplate更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct GridSetRCColumnsTemplateSample {
  timeHelper: TimeHelper = new TimeHelper('GridSetRCColumnsTemplateSample');
  @State columnsTemplateValue: string = '1fr 1fr';

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change columnsTemplate 1fr 1fr to 1fr 1fr 2fr')
            .id('change columnsTemplate 1fr 1fr to 1fr 1fr 2fr')
            .margin('5vp')
            .onClick(() => {
              this.columnsTemplateValue = '1fr 1fr 2fr';
            })
        }.width('100%')

        Grid() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (this.columnsTemplateValue != null && this.timeHelper.printTime(true)) {
            }

            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()
            GridItem()

            if (this.columnsTemplateValue != null && this.timeHelper.printTime(false)) {
            }
          })
        }
        .columnsTemplate(this.columnsTemplateValue)
        .rowsTemplate('1fr 1fr')
      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}