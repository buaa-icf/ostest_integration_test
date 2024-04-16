/*
 * Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import VideoMVItemData from '../viewmodel/VideoMVItemData'
import VideoMVDataSource from './VideoMVDataSource'

@Component
export default struct VideoMV {
  private dataSource: VideoMVDataSource = new VideoMVDataSource()

  aboutToAppear() {
  }

  build() {
    Column({ space: 2 }) {
      WaterFlow() {
        LazyForEach(this.dataSource, (item: VideoMVItemData) => {
          FlowItem() {
            Column() {
              Stack() {
                Image(item.img)
                  .objectFit(ImageFit.Fill)
                  .width('100%')
                  .height('100%')
                  .borderRadius({ topLeft: '12vp', topRight: '12vp' })
                Image($r('app.media.ic_public_play_white'))
                  .borderRadius('20vp')
                  .backgroundColor('#55303030')
                  .padding('6vp')
                  .width('32vp')
                  .height('32vp')
                  .margin('12vp')
              }
              .borderRadius({ topLeft: '12vp', topRight: '12vp' })
              .alignContent(Alignment.TopEnd)
              .width('100%')
              .height('140vp')

              Text(item.title)
                .fontSize(18)
                .maxLines(2)
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .width('90%')
                .margin('12vp')
              Row() {
                Image(item.logo)
                  .width('24vp')
                  .height('24vp')
                  .borderRadius('18vp')
                Text(item.subTitle)
                  .fontSize(14)
                  .fontColor('#909090')
                  .maxLines(1)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
                Blank()
                Image($r('app.media.ic_public_thumbsup'))
                  .width('20vp')
                  .height('20vp')
                  .margin('8vp')
                Text(item.thumbs)
                  .fontSize(14)
                  .fontColor('#909090')
              }.width('90%')
              .alignItems(VerticalAlign.Center)
              .justifyContent(FlexAlign.SpaceBetween)
            }.alignItems(HorizontalAlign.Center)
          }
          .onAppear(() => {
            // 即将触底时提前增加数据
            if (item.index + 20 == this.dataSource.totalCount()) {
              for (let i = 0; i < 50; i++) {
                this.dataSource.addLastItem()
              }
            }
          })
          .width('100%')
          .backgroundColor(Color.White)
          .borderRadius('12vp')
        }, (item: string) => item)
      }
      .columnsTemplate("1fr 1fr")
      .columnsGap(10)
      .rowsGap(5)
      .width('90%')
      .height('100%')
    }
  }
}
