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
 * Navigation组件hideToolBar属性更新布局耗时
 */

import { ArrEntity } from '../../../entity/ArrEntity'
import { TimeHelper } from '../../../util/TimeHelper'

@Entry
@Component
struct NavigationHideToolBarSample {
  timeHelper: TimeHelper = new TimeHelper('NavigationHideToolBarSample');
  @State hideToolBar: boolean = true;

  build() {
    Scroll() {
      Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {
        Column() {
          Button('change hideToolBar true to false')
            .id('change hideToolBar true to false')
            .margin('5vp')
            .onClick(() => {
              this.hideToolBar = false;
            })
        }.width('100%')



        Navigation() {
          ForEach(ArrEntity.arr, (index: number) => {
            if (!this.hideToolBar && this.timeHelper.printTime(true)) {
            }
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            Text("" + index)
            if (!this.hideToolBar && this.timeHelper.printTime(false)) {
            }
          })
        }.hideToolBar(this.hideToolBar).toolbarConfiguration([
          {
            value: 'title1',
            icon: $r("app.media.icon")
          },
          {
            value: 'title2',
            icon: $r("app.media.icon")
          },
          {
            value: 'title3',
            icon: $r("app.media.icon")
          }
        ]).width(300).height(300)



      }
      .width('100%')
    }.margin({ bottom: 60 })
    .width('100%')

  }
}