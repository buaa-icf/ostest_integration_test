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
import AppConstants from "../constants/AppConstants";
import AllSingerDataSource from "../model/AllSingerDataSource";
import PlayListData from "../model/PlayListData";
import emitter from '@ohos.events.emitter';
import HttpManager from "../manager/HttpManager";
import PlayListItem from "./PlayListItem";
import prompt from '@ohos.promptAction';

@Component
export default struct AllSinger {
  @Link isShowSingerList: boolean;
  @State count:number = 0
  private  aAllSingerDataSource: AllSingerDataSource = new AllSingerDataSource();
  private currentIndex: number = 0;
  private step: number = 50;

  aboutToAppear() {
    HttpManager.getInstance().getAllSinger(0, this.step);
    emitter.on(AppConstants.UPDATE_ALL_SINGER_LIST, (eventData: emitter.EventData) => {
      if (eventData.data !== undefined && eventData.data.item !== undefined) {
        let list = eventData.data.item as PlayListData[];
        if (list.length === 0) {
          prompt.showToast({ message: AppConstants.NO_MORE_SINGER });
          return;
        }
        console.info('UPDATE_ALL_SINGER_LIST size:' + list.length);
        for (let index = 0; index < list.length; index++) {
          this.aAllSingerDataSource.addLastItem(list[index])
        }
        this.currentIndex += this.step;
        this.count = this.aAllSingerDataSource.totalCount();
      }
    });
  }

  aboutToDisappear(): void {
    emitter.off(AppConstants.UPDATE_ALL_SINGER_LIST);
  }

  build() {
    Column({ space: 2 }) {
      Row() {
        Image($r('app.media.xmark'))
          .width(42)
          .height(42)
          .padding(6)
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowSingerList = false;
          })
        Text($r('app.string.all_singer_list'))
          .fontSize(24)
          .maxLines(1)
        Text(this.count.toString())
          .fontSize(18)
          .maxLines(1)
      }
      .width('90%')
      .margin(4)
      .justifyContent(FlexAlign.SpaceBetween)

      WaterFlow() {
        LazyForEach(this.aAllSingerDataSource, (item: PlayListData, index) => {
          FlowItem() {
            PlayListItem({ item })
          }
          .onAppear(() => {
            if (index + 10 == this.aAllSingerDataSource.totalCount()) {
              HttpManager.getInstance().getAllSinger(this.currentIndex, this.currentIndex + this.step);
            }
          })
          .width('100%')
          .backgroundColor(Color.White)
          .borderRadius(12)
        }, (item: string) => item)
      }
      .columnsTemplate("1fr 1fr 1fr")
      .columnsGap(10)
      .rowsGap(5)
      .margin({ bottom: 36 })
    }
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }
}
