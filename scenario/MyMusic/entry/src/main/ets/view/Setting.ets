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

import CommonConstants from '../common/constants/CommonConstants';
import ItemData from '../viewmodel/SettingItemData';
import mainViewModel from '../viewmodel/MainViewModel';

/**
 * Setting tab content
 */
@Component
export default struct Setting {
  @Builder
  settingCell(item: ItemData) {
    Row() {
      Row({ space: CommonConstants.COMMON_SPACE }) {
        Image(item.img)
          .width($r('app.float.setting_size'))
          .height($r('app.float.setting_size'))
        Text(item.title)
          .maxLines(1)
          .fontSize($r('app.float.normal_text_size'))
      }

      Blank()
      Text(item.subTitle)
        .fontSize('12vp')
        .fontColor(Color.Gray)
        .margin({ right: '12vp' })
        .maxLines(1)
      if (item.others === undefined) {
        Image($r('app.media.right_grey'))
          .width($r('app.float.setting_jump_width'))
          .height($r('app.float.setting_jump_height'))
      } else {
        Toggle({ type: ToggleType.Switch, isOn: false })
      }
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width(CommonConstants.FULL_PARENT)
    .padding({
      left: $r('app.float.setting_settingCell_left'),
      right: $r('app.float.setting_settingCell_right')
    })
  }

  build() {
    Scroll() {
      Column() {
        Row() {
          Image($r('app.media.brand'))
            .width('28vp')
            .height('28vp')
            .borderRadius('20vp')
          Text('闲潭春半')
            .fontSize('18fp')
            .margin({ left: '10vp', right: '10vp' })
          Image($r('app.media.ic_public_arrow_right'))
            .width('28vp')
            .height('28vp')
          Blank()
          Image($r('app.media.ic_public_input_scan'))
            .width('28vp')
            .height('28vp')
        }
        .backgroundColor(Color.White)
        .width('100%')
        .padding({ left: '5%', right: '5%', top: '12vp', bottom: '12vp' })
        .justifyContent(FlexAlign.SpaceBetween)

        Scroll() {
          Column({ space: CommonConstants.COMMON_SPACE }) {
            Row() {
              Column() {
                Row() {
                  Text('黑胶VIP·柒')
                    .fontSize($r('app.float.setting_account_fontSize'))
                    .fontColor('#e7c3b9')
                  Text('已满级')
                    .fontSize($r('app.float.little_text_size'))
                    .margin({ top: $r('app.float.setting_name_margin') })
                    .fontColor('#675d5b')
                }

                Row() {
                  Text('会员权益 | 圣诞节APP图标新上线')
                    .fontSize('12vp')
                    .fontColor('#675b5c')
                  Image($r('app.media.ic_message_emoji'))
                    .width('16vp')
                    .height('16vp')
                }
                .padding({ top: '12vp', bottom: '24vp' })

                Row() {
                  Text('元旦会员特惠！ 仅￥0.32/天！')
                    .fontColor('#675b5c')
                    .fontSize('12vp')
                }
              }
              .width('60%')
              .alignItems(HorizontalAlign.Start)
              .padding({ left: $r('app.float.setting_account_margin') })

              Column() {
                Text('会员中心')
                  .fontSize('18fp')
                  .fontColor('#ceb6b4')
                  .borderRadius('12vp')
                  .borderWidth(1)
                  .borderColor('#766868')
                  .padding('8vp')
                Blank()
                Image($r('app.media.ic_public_appstore_filled_red'))
                  .width('28vp')
                  .height('28vp')
              }
              .width('40%')
              .height('96vp')
              .alignItems(HorizontalAlign.End)
              .justifyContent(FlexAlign.SpaceBetween)
              .padding({ right: $r('app.float.setting_account_margin') })
            }
            .backgroundColor('#191514')
            .margin({ top: '12vp' })
            .alignItems(VerticalAlign.Center)
            .borderRadius($r('app.float.setting_account_borderRadius'))
            .padding({ top: '12vp', bottom: '12vp' })

            List() {
              ForEach(mainViewModel.getSettingListData1(), (item: ItemData) => {
                ListItem() {
                  this.settingCell(item)
                }
                .height($r('app.float.setting_list_height'))
              })
            }
            .backgroundColor(Color.White)
            .divider({
              strokeWidth: $r('app.float.setting_list_strokeWidth'),
              color: Color.Grey,
              startMargin: $r('app.float.setting_list_startMargin'),
              endMargin: $r('app.float.setting_list_endMargin')
            })
            .borderRadius($r('app.float.setting_list_borderRadius'))
            .padding({ top: $r('app.float.setting_list_padding'), bottom: $r('app.float.setting_list_padding') })

            List() {
              ListItem() {
                Text('音乐服务')
                  .fontColor(Color.Gray)
                  .fontSize('14vp')
                  .margin('4vp')
              }

              ForEach(mainViewModel.getSettingListData2(), (item: ItemData) => {
                ListItem() {
                  this.settingCell(item)
                }
                .height($r('app.float.setting_list_height'))
              })
            }
            .backgroundColor(Color.White)
            .divider({
              strokeWidth: $r('app.float.setting_list_strokeWidth'),
              color: Color.Grey,
              startMargin: $r('app.float.setting_list_startMargin'),
              endMargin: $r('app.float.setting_list_endMargin')
            })
            .borderRadius($r('app.float.setting_list_borderRadius'))
            .padding({ top: $r('app.float.setting_list_padding'), bottom: $r('app.float.setting_list_padding') })

            List() {
              ListItem() {
                Text('其他')
                  .fontColor(Color.Gray)
                  .fontSize('14vp')
                  .margin('4vp')
              }

              ForEach(mainViewModel.getSettingListData3(), (item: ItemData) => {
                ListItem() {
                  this.settingCell(item)
                }
                .height($r('app.float.setting_list_height'))
              })
            }
            .backgroundColor(Color.White)
            .divider({
              strokeWidth: $r('app.float.setting_list_strokeWidth'),
              color: Color.Grey,
              startMargin: $r('app.float.setting_list_startMargin'),
              endMargin: $r('app.float.setting_list_endMargin')
            })
            .borderRadius($r('app.float.setting_list_borderRadius'))
            .padding({ top: $r('app.float.setting_list_padding'), bottom: $r('app.float.setting_list_padding') })

            Blank()

            Button($r('app.string.setting_button'), { type: ButtonType.Normal })
              .width('100%')
              .height('46vp')
              .fontSize('20fp')
              .fontColor($r('app.color.setting_button_fontColor'))
              .backgroundColor(Color.White)
              .borderRadius('12vp')
              .margin({ bottom: '100vp' })
          }
        }
        .width('90%')
      }.height(CommonConstants.FULL_PARENT)
    }
  }
}
