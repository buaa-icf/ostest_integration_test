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
import { HotBoardClass, HotBoardItem } from '../viewmodel/HotBoard';
import { HotBoardItemList } from '../../mock/HotBoardData';


/* 定义通用无底色、无按压效果按钮样式 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}


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
  @State isPrivacyModeOn: boolean = false

  build() {
    Column() {
      /* 顶栏：搜索框+按钮 */
      TopBar()

      /* 除顶栏和底部无痕开关栏外，其他组件需添加左右padding */
      Column() {
        Scroll() {
          Column({ space: 14 }) {
            /* 顶栏下方的推荐词条 */
            TrendingNews()
            Divider()
              .strokeWidth(1)
              .color($r('app.color.light_border'))

            if (this.isPrivacyModeOn) {
              /* 无痕模式提示信息 */
              PrivacyModeHint()
              Divider()
                .strokeWidth(1)
                .color($r('app.color.light_border'))
              /* 热榜 */
              HotBoard()
            }
            else {
              /* 搜索历史 */
              History()
              Divider()
                .strokeWidth(1)
                .color($r('app.color.light_border'))
              /* 其他推荐内容 */
              Recommendation()
            }

            /* 反馈按钮 */
            Button({ type: ButtonType.Capsule, stateEffect: false }) {
              Row({ space: 5 }) {
                Image($r('app.media.ic_public_fail'))
                  .size({ width: 10, height: 10 })
                Text('反馈')
                  .fontSize(10)
              }
              .padding({ left: 8, right: 8, top: 4, bottom: 4 })
            }
            .margin({ top: 20, bottom: 20 })
            .backgroundColor(Color.Transparent)
            .borderWidth(1)
            .borderColor($r('app.color.light_border'))
          }
          .width('100%')
        }
        .width('100%')
        .height(0)
        .flexGrow(1)
        .padding({ top: 14 })
        .align(Alignment.Top)
        .scrollBar(BarState.Off)
        .edgeEffect(this.isPrivacyModeOn ? EdgeEffect.Spring : EdgeEffect.None)
      }
      .width('100%')
      .height(0)
      .flexGrow(1)
      .padding({ left: 14, right: 14 })

      /* 无痕搜索模式开关栏 */
      PrivacyModeToggleBar({ isPrivacyModeOn: this.isPrivacyModeOn })
    }
    .id('searchPage')
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
    Row() {
      /* 返回按钮 */
      Button() {
        Image($r('app.media.ic_public_arrow_left'))
          .size({ width: 30, height: 30 })
          .fillColor($r('app.color.light_fg'))
      }
      .id('searchPageReturnBtn')
      .commonBtnStyle(() => {
        router.back()
      })

      /* 搜索框 */
      Search({ placeholder: '示例热搜词条' })
        .width(0)
        .height('100%')
        .flexGrow(1)
        .textFont({ size: 13 })
        .placeholderFont({ size: 13 })
        .borderRadius(999)
        .backgroundColor($r('app.color.index_tab_bg'))

      /* 搜索按钮 */
      Button() {
        Text('搜索')
          .margin({ left: 10 })
          .fontSize(14)
          .fontColor($r('app.color.primary'))
      }
      .id('searchPageSearchBtn')
      .commonBtnStyle(() => {
        // TODO: 用户输入内容->搜索该内容 or 无输入->搜索当前词条
      })
    }
    .width('100%')
    .height(60)
    .padding({ left: 6, right: 14, top: 18, bottom: 10 })
  }
}


/**
 * 顶栏下方的热搜词条
 */
@Component
struct TrendingNews {
  build() {
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
        .color($r('app.color.light_border'))
        .strokeWidth(1)
      Text('示例热搜词条2')
        .width('45%')
        .fontSize(14)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
    }
    .width('100%')
  }
}


/* 无痕模式提示信息 */
@Component
struct PrivacyModeHint {
  build() {
    Column({ space: 8 }) {
      Row({ space: 3 }) {
        Image($r('app.media.ic_gallery_privacy_statement'))
          .size({ width: 16, height: 16 })
        Text('你已进入无痕浏览模式')
          .fontSize(15)
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)

      Text('在无痕模式下，搜索及浏览历史不会被记录，推荐词不涉及信息收集')
        .width('84%')
        .textAlign(TextAlign.Center)
        .fontSize(10)
        .fontColor($r('app.color.light_fg_shallow'))
    }
    .width('100%')
  }
}


/* 热榜 */
@Component
struct HotBoard {
  hotBoard: HotBoardClass = new HotBoardClass(HotBoardItemList)

  build() {
    Column({ space: 18 }) {
      /* 标题 */
      Row() {
        Text('头条热榜')
          .fontSize(14)
          .fontWeight(FontWeight.Medium)
        Image($r('app.media.ic_controlcenter_eyeconfort_filled'))
          .size({ width: 14, height: 14 })
          .fillColor($r('app.color.light_fg_shallow'))
          .onClick(() => {
            // TODO: 点击隐藏该列表
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      /* 内容 */
      ForEach(this.hotBoard.sortItemList(), (item: HotBoardItem, index: number) => {
        Row() {
          Text(String(index + 1))
            .width(20)
            .fontSize(14)
            .fontColor(index < 3 ? $r('app.color.primary') : $r('app.color.light_fg_shallow'))
          Text(item.title)
            .fontSize(14)
        }
        .width('100%')
      })
      /* 查看更多按钮 */
      Row({ space: 2 }) {
        Text('查看更多')
          .fontSize(12)
          .fontWeight(FontWeight.Medium)
        Image($r('app.media.ic_public_arrow_right_filled'))
          .size({ width: 12, height: 12 })
      }
      .width('100%')
      .height(38)
      .justifyContent(FlexAlign.Center)
      .backgroundColor($r('app.color.light_border'))
      .borderRadius(5)
    }
    .width('100%')
  }
}


/* 搜索历史 */
@Component
struct History {
  build() {
    Column({ space: 12 }) {
      /* 标题 */
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

      /* 内容 */
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
          .color($r('app.color.light_border'))
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
          .color($r('app.color.light_border'))
          .strokeWidth(1)
      }
      .width('100%')
    }
    .width('100%')
  }
}

/**
 * 其他推荐内容
 */
@Component
struct Recommendation {
  @State curIdx: number = 0

  build() {
    Column({ space: 12 }) {
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
          .color($r('app.color.light_border'))
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
          .color($r('app.color.light_border'))
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
          .color($r('app.color.light_border'))
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


/**
 * 无痕搜索模式开关栏
 */
@Component
struct PrivacyModeToggleBar {
  @Link isPrivacyModeOn: boolean

  build() {
    Column() {
      Divider().strokeWidth(1).color($r('app.color.light_border'))
      Row() {
        Text('无痕搜索模式').fontSize(12)
        // FIXME: 切换按钮的阴影范围超出边框
        Toggle({ type: ToggleType.Switch, isOn: $$this.isPrivacyModeOn })
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
}
