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
import PlayListData from "../model/PlayListData";
import emitter from '@ohos.events.emitter';
import HttpManager from "../manager/HttpManager";
import SingerItem from "./SingerItem";
import Logger from "../utils/Logger";
import AllSingerDataSource from "../model/AllSingerDataSource";

@Component
export default struct AllSinger {
  private tag = 'AllSinger';
  private currentIndex: number = 0;
  private step: number = 100;
  private scroller: Scroller = new Scroller();
  private totalData: PlayListData[] = [];
  private currentAlphabet: string = '全';
  @State count: number = 0;
  @State isLoading: boolean = false;
  @Link isShowSingerList: boolean;
  @State alphabetIndexerHead: string[] =
    ['全', '#', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
      'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
      'U', 'V', 'W', 'X', 'Y', 'Z'];
  private aAllSingerDataSource: AllSingerDataSource = new AllSingerDataSource();

  aboutToAppear() {
    HttpManager.getInstance().getAllSinger(0, this.step);
    emitter.on(AppConstants.UPDATE_ALL_SINGER_LIST, (eventData: emitter.EventData) => {
      this.isLoading = true;
      if (eventData.data !== undefined && eventData.data.item !== undefined) {
        let list = eventData.data.item as PlayListData[];
        if (list.length === 0) {
          this.isLoading = false;
          return;
        }
        this.aAllSingerDataSource.addItems(list);
        this.totalData = this.totalData.concat(list);
        this.currentIndex += this.step;
        this.count = this.aAllSingerDataSource.totalCount();
        HttpManager.getInstance().getAllSinger(this.currentIndex, this.currentIndex + this.step);
      }
    });
  }

  aboutToDisappear(): void {
    emitter.off(AppConstants.UPDATE_ALL_SINGER_LIST);
  }

  build() {
    Column({ space: 2 }) {
      Stack({ alignContent: Alignment.Start }) {
        Image($r('app.media.chevron_down'))
          .width(48)
          .height(60)
          .padding({ bottom: 6, top: 6 })
          .rotate({ angle: 90 })
          .clickEffect(AppConstants.CLICK_EFFECT)
          .onClick(() => {
            this.isShowSingerList = false;
          })
          .alignSelf(ItemAlign.Start)
        Row() {
          Text($r('app.string.all_singer_list'))
            .fontSize(24)
            .maxLines(1)
            .alignSelf(ItemAlign.Center)
          Text('(' + this.count + ')')
            .fontSize(16)
            .fontColor(Color.Gray)
            .maxLines(1)
        }.width('100%')
        .justifyContent(FlexAlign.Center)
      }
      .width('100%')
      .margin(4)

      Stack({ alignContent: Alignment.TopStart }) {
        WaterFlow({ scroller: this.scroller }) {
          LazyForEach(this.aAllSingerDataSource, (item: PlayListData, index) => {
            FlowItem() {
              SingerItem({ item })
            }.backgroundColor(Color.White)
            .borderRadius(12)
          })
        }
        .columnsTemplate("1fr 1fr 1fr 1fr")
        .columnsGap(8)
        .rowsGap(16)
        .padding({ left: '10%', right: 8 })
        .margin({ bottom: 64 })
        .scrollBar(BarState.On)
        .scrollBarWidth(10)

        AlphabetIndexer({ arrayValue: this.alphabetIndexerHead, selected: 0 })
          .autoCollapse(false)
          .itemSize(20)
          .selectedFont({ size: 20 })
          .font({ size: 16 })
          .onSelect((index: number) => {
            if (!this.isLoading) {
              this.updateDataBySelect(this.alphabetIndexerHead[index]);
            }
          })
          .enabled(!this.isLoading)
          .width('10%')
      }
    }
    .alignItems(HorizontalAlign.Center)
    .height('100%')
    .width('100%')
  }

  updateDataBySelect(indexer: string) {
    if (indexer === this.currentAlphabet) {
      return;
    }
    this.currentAlphabet = indexer;
    this.aAllSingerDataSource.clear();
    let newData: PlayListData[] = []
    if (indexer === '全') {
      newData = this.totalData;
    } else {
      this.totalData.forEach(aSinger => {
        if (aSinger.indexer === indexer) {
          newData.push(aSinger);
        }
      })
    }
    setTimeout(() => {
      animateTo({ duration: 500 }, () => {
        this.aAllSingerDataSource.setData(newData);
        this.count = this.aAllSingerDataSource.totalCount();
      })
    }, 100)
  }
}
