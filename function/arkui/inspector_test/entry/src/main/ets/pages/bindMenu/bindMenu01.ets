/*
 * Copyright (c) 2025 Shenzhen Kaihong Digital Industry Development Co., Ltd.
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
import { SymbolGlyphModifier } from '@kit.ArkUI';

@Entry
@Component
struct MenuExample {
  @State listData: number[] = [0, 0, 0]
  @State symbolIconModifier1: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ohos_photo')).fontSize('24vp');
  @State symbolIconModifier2: SymbolGlyphModifier = new SymbolGlyphModifier($r('sys.symbol.ohos_photo')).fontSize('24vp');
  @State select: boolean = true
  private iconStr: ResourceStr = $r("app.media.ImageOne")
  private iconStr2: ResourceStr = $r("app.media.ImageTwo")
  @State menuTitle: string = ""
  @State enableArrow: boolean = false

  @Builder
  SubMenu() {
    Menu() {
      MenuItem({ content: "复制", labelInfo: "Ctrl+C" })
      MenuItem({ content: "粘贴", labelInfo: "Ctrl+V" })
    }
  }

  @Builder
  MyMenu(){
    Menu() {
      MenuItem({ startIcon: $r("app.media.icon"), content: "菜单选项" })
      MenuItem({ startIcon: $r("app.media.icon"), content: "菜单选项" })
        .enabled(false)
      MenuItem({
        startIcon: this.iconStr,
        content: "菜单选项",
        endIcon: this.iconStr2,
        builder: ():void=>this.SubMenu()
      })
      MenuItemGroup({ header: '小标题' }) {
        MenuItem({
          startIcon: this.iconStr,
          content: "菜单选项",
          endIcon: this.iconStr2,
          builder: ():void=>this.SubMenu()
        })
        MenuItem({
          startIcon: $r("app.media.app_icon"),
          content: "菜单选项",
          endIcon: this.iconStr2,
          builder: ():void=>this.SubMenu()
        })
      }
      MenuItem({
        startIcon: this.iconStr,
        content: "菜单选项",
      })
    }
  }

  @Builder MenuBuilder() {
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
      ForEach(this.listData, (item:number, index) => {
        Column() {
          Row() {
            Image($r("app.media.icon")).width(20).height(20).margin({ right: 5 })
            Text(`Menu${index as number + 1}`).fontSize(20)
          }
          .width('100%')
          .height(30)
          .justifyContent(FlexAlign.Center)
          .align(Alignment.Center)
          .onClick(() => {
            console.info(`Menu${index as number + 1} Clicked!`)
          })

          if (index != this.listData.length - 1) {
            Divider().height(10).width('80%').color('#ccc')
          }
        }.padding(5).height(40)
      })
    }.width(100)
  }

  build() {
    Column() {
      Text("bindMenu")
        .fontSize(24)
        .margin({bottom: 24})

      Text("Menu title: " + this.menuTitle)
        .fontSize(20)
      Button('Set / Clear menu title')
        .onClick(() => {
          if (this.menuTitle == "") {
            this.menuTitle = "Menu Title Info"
          } else {
            this.menuTitle = ""
          }
        })
        .margin({bottom: 24})

      Text("Enable arrow: " + this.enableArrow)
        .fontSize(20)
      Button('Switch enableArrow')
        .onClick(() => {
          this.enableArrow = !this.enableArrow
        })
        .margin({bottom: 24})

      Button('Normal Menu01')
        .bindMenu(
          [
            {
              value: 'item1',
              action: () => {
                console.info('handle Menu1 select')
              }
            },
            {
              value: 'item2',
              action: () => {
                console.info('handle Menu2 select')
              }
            },
          ],
          {
            title: this.menuTitle,
            enableArrow: this.enableArrow,
            placement: Placement.TopRight
          }
        )
        .margin({bottom: 24})

      Button('Normal Menu02 with icon')
        .margin({bottom: 24})
        .bindMenu(
          [
            {
              value: 'Menu item 1',
              icon: $r('app.media.icon'),
              symbolIcon:this.symbolIconModifier1,
              action: () => {
                console.info('handle Menu1 select')
              }
            },
            {
              value: 'Menu item 2',
              icon: $r('app.media.icon'),
              // symbolIcon:this.symbolIconModifier2,
              action: () => {
                console.info('handle Menu2 select')
              }
            },
          ],
          {
            title: this.menuTitle,
            enableArrow: this.enableArrow,
            transition: TransitionEffect.OPACITY
              .animation({ duration: 4000, curve: Curve.Ease })
              .combine(TransitionEffect.rotate({ z: 1, angle: 180 }))
          }
        )

      Button('Custom Menu01')
        .margin({bottom: 24})
        .bindMenu(this.MenuBuilder)

      Button('Custom Menu02')
        .margin({bottom: 24})
        .bindMenu(this.MyMenu)

    }
    .width('100%')
    .margin({ top: 5 })
  }
}