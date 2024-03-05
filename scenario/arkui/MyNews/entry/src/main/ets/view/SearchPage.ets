/*
 * Copyright (c) 2023 Southeast University.
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


import router from '@ohos.router';


/**
 * 中部选项卡内容
 */
const tabItemList: string[] = [
  '猜你想搜',
  '头条热榜',
  '免费小说',
  '品牌榜'
]

/**
 * `搜索` 页面内容。
 */
@Entry
@Component
export struct SearchPage {
  build() {
    Column() {
      Column() {
        /* 顶栏：搜索框+按钮 */
        TopBar()

        /* 搜索榜、搜索历史等 */
        HistoryAndTrending() // TODO: 拆分
      }
      .width('100%')
      .padding({ left: 14, right: 14 })

      Column() {
        Divider().strokeWidth(1)
        Row() {
          Text('无痕搜索模式').fontSize(12)
          // FIXME: 切换按钮的阴影范围超出边框
          Toggle({ type: ToggleType.Switch, isOn: false })
            .selectedColor($r('app.color.primary'))
        }
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ left: 14, right: 14 })
      }
      .width('100%')
      .height(40)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }

  pageTransition() {
    PageTransitionEnter({ type: RouteType.None, duration: 0 })
    PageTransitionExit({ type: RouteType.None, duration: 0 })
  }
}


/**
 * 顶栏（搜索框+按钮）
 */
@Component
struct TopBar {
  build() {
    Row({ space: 10 }) {
      Image($r('app.media.ic_public_cancel'))
        .size({ width: 20, height: 20 })
        .fillColor($r('app.color.light_fg'))
        .onClick(() => {
          router.back()
        })
      Search({ placeholder: '示例热搜词条' })
        .width(0)
        .height('100%')
        .flexGrow(1)
        .borderRadius(22)
        .backgroundColor($r('app.color.index_tab_bg'))
      Text('搜索')
        .fontSize(14)
        .fontColor($r('app.color.primary'))
        .onClick(() => {
          // TODO: 用户输入内容->搜索该内容 or 无输入->搜索当前词条
        })
    }
    .width('100%')
    .height(72)
    .padding({ top: 18, bottom: 18 })
  }
}


/**
 * 搜索历史、热搜榜等
 */
@Component
struct HistoryAndTrending {
  @State curIdx: number = 0

  build() {
    Column({ space: 12 }) {
      /* 热搜（仅展示两条） */
      // TODO: 改为从列表中随机读取
      Row() {
        Text('示例热搜词条1，示例热搜词条1')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
        Divider()
          .width('10%')
          .height(14)
          .vertical(true)
          .strokeWidth(1)
        Text('示例热搜词条2')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
      }
      .width('100%')

      Divider()

      /* 搜索历史 */
      Row() {
        Text('搜索历史')
          .fontSize(12)
          .fontColor($r('app.color.light_fg_shallow'))
        Image($r('app.media.ic_public_delete'))
          .size({ width: 14, height: 14 })
          .fillColor($r('app.color.light_fg_shallow'))
          .onClick(() => {
            // TODO: 删除历史记录按钮点击事件
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Text('示例搜索历史1')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
        Divider()
          .width('10%')
          .height(14)
          .vertical(true)
          .strokeWidth(1)
        Text('示例搜索历史2，示例搜索历史2')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
      }
      .width('100%')

      Row() {
        Text('示例搜索历史3，示例搜索历史3')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
        Divider()
          .width('10%')
          .height(14)
          .vertical(true)
          .strokeWidth(1)
      }
      .width('100%')

      Divider()

      /* 其他 */
      Row() {
        Row({ space: 14 }) {
          ForEach(tabItemList, (item: string, itemIdx: number) => {
            Column({ space: 6 }) {
              Text(item)
                .fontSize(14)
                .fontColor(this.curIdx === itemIdx ? $r('app.color.light_fg') : $r('app.color.light_fg_shallow'))
              /* 文字下方线条 */
              Line()
                .startPoint([0, 0])
                .endPoint([30, 0])
                .stroke(this.curIdx === itemIdx ? $r('app.color.light_fg') : Color.Transparent)
                .strokeLineCap(LineCapStyle.Round)
                .strokeWidth(1)
            }
            .onClick(() => {
              this.curIdx = itemIdx
            })
          })
        }

        Image($r('app.media.ic_controlcenter_eyeconfort_filled'))
          .size({ width: 14, height: 14 })
          .fillColor($r('app.color.light_fg_shallow'))
          .onClick(() => {
            // TODO: 点击隐藏该列表
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row({ space: 4 }) {
          Text('示例词条1')
            .fontSize(14)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
            .maxLines(1)
          Text('热')
            .padding(1)
            .fontSize(8)
            .fontColor($r('app.color.primary'))
            .borderWidth(1)
            .borderColor($r('app.color.primary_shallow'))
        }
        .width('45%')

        Divider()
          .width('10%')
          .height(14)
          .vertical(true)
          .strokeWidth(1)
        Text('示例词条2，示例词条2，示例词条2')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
      }
      .width('100%')

      Row() {
        Text('示例词条3，示例词条3')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
        Divider()
          .width('10%')
          .height(14)
          .vertical(true)
          .strokeWidth(1)
        Text('示例词条4')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
      }
      .width('100%')


      Row() {
        Text('示例词条5')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
        Divider()
          .width('10%')
          .height(14)
          .vertical(true)
          .strokeWidth(1)
        Text('示例词条6，示例词条6，示例词条6')
          .width('45%')
          .fontSize(14)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
      }
      .width('100%')
    }
  }
}
