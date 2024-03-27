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

/**
 * Common invisible button style
 */
@Extend(Button)
function commonBtnStyle(handler?: (event: ClickEvent) => void) {
  .type(ButtonType.Normal)
  .stateEffect(false)
  .backgroundColor(Color.Transparent)
  .onClick(handler)
}

/* Function button list below user info */
interface funcBtn {
  title: Resource
  icon: Resource
}

const funcBtnList: funcBtn[] = [{
  title: $r('app.string.profile_funcArea_msg'),
  icon: $r('app.media.ic_public_ring')
}, {
  title: $r('app.string.profile_funcArea_history'),
  icon: $r('app.media.ic_public_history')
}, {
  title: $r('app.string.profile_funcArea_likes'),
  icon: $r('app.media.ic_public_thumbsup')
}, {
  title: $r('app.string.profile_funcArea_downloads'),
  icon: $r('app.media.ic_public_download')
}, {
  title: $r('app.string.profile_funcArea_orders'),
  icon: $r('app.media.ic_public_notes')
}, {
  title: $r('app.string.profile_funcArea_wallet'),
  icon: $r('app.media.ic_public_folder')
}, {
  title: $r('app.string.profile_funcArea_tasks'),
  icon: $r('app.media.ic_public_calendar')
}, {
  title: $r('app.string.profile_funcArea_all'),
  icon: $r('app.media.ic_public_app')
}]

/**
 * Functional buttons
 */
@Component
export default struct FuncArea {
  build() {
    Grid() {
      ForEach(funcBtnList, (item: funcBtn, itemIdx: number) => {
        GridItem() {
          Button() {
            Column({ space: 8 }) {
              Image(item.icon)
                .size({ width: 20, height: 20 })
                .fillColor($r('app.color.light_fg'))
              Text(item.title)
                .fontSize(10)
                .fontColor($r('app.color.light_fg'))
            }
          }.commonBtnStyle()
        }
        .padding(10)
      })
    }
    .height(120)
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr')
  }
}