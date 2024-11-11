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
@Entry
@Component
struct UIComponentOtherRefreshAbility0090 {
  @State isRefreshing: boolean = false;
  @State promptText: string = "Refreshing...";
  @State arr: String[] = ['0', '1', '2', '3', '4','5','6','7','8','9','10'];

  build() {
    Column() {
      Text("Refresh test")
      Refresh({ refreshing: $$this.isRefreshing, promptText: this.promptText}) {
        List() {
          ForEach(this.arr, (item: string) => {
            ListItem() {
              Text('' + item)
                .width('70%').height(499).fontSize(16).id('' + item).margin({bottom:10})
                .textAlign(TextAlign.Center).borderRadius(10).backgroundColor(0xFF0000);
            }
          }, (item: string) => item)
        }
        .onScrollIndex((first: number) => {
          console.info(first.toString())
        })
        .width('100%')
        .height('100%')
        .alignListItem(ListItemAlign.Center)
        .scrollBar(BarState.Off);
      }
      .backgroundColor(0x89CFF0)
      .pullToRefresh(true)
      .refreshOffset(500)
      .pullDownRatio(1)
      .onStateChange((refreshStatus: RefreshStatus) => {
        console.info('Refresh onStatueChange state is ' + refreshStatus);
      })
      .onOffsetChange((value: number) => {
        console.info('Refresh onOffsetChange offset:' + value);
      })
      .onRefreshing(() => {
        setTimeout(() => {
          this.isRefreshing = false;
        }, 2000)
        console.log('onRefreshing test');
      });
    }
  }
}