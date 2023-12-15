import { HomePage } from '../view/HomePage';
import { ProfilePageBuilder } from '../view/profilePage';
import { TaskPageBuilder } from '../view/TaskPage';
import { VideoPageBuilder } from '../view/VideoPage';
import { IndexBottomNavItem, indexBottomNavItemList } from '../viewmodel/IndexBottomNavItem';

@Entry
@Component
struct Index {
  @State currentIndex: number = 0
  private tabsController: TabsController = new TabsController()

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      ForEach(indexBottomNavItemList, (item: IndexBottomNavItem, itemIndex: number) => {
        TabContent() {
          /* Provide different content according to the tab index. */
          Column() {
            if (itemIndex === 1) {
              VideoPageBuilder()
            }
            else if (itemIndex === 2) {
              TaskPageBuilder()
            }
            else if (itemIndex === 3) {
              ProfilePageBuilder()
            }
            else {
              HomePage()
            }
          }
          .width('100%')
          .height('100%')
          .backgroundColor($r("app.color.light_bg"))
        }
        .width('100%')
        .height('100%')
        .align(Alignment.Top)
        .tabBar(this.TabBuilder(item.title, itemIndex, item.normalIcon, item.selectedIcon))
      })
    }
    .width('100%')
    .height('100%')
    .scrollable(false)
    .backgroundColor($r('app.color.index_tab_bg'))
  }

  /**
   * Custom buttons for the bottom navigation bar (icon + text).
   */
  @Builder
  TabBuilder(title: string, targetIndex: number, normalIcon: Resource, selectedIcon: Resource) {
    Column() {
      Image(this.currentIndex === targetIndex ? selectedIcon : normalIcon)
        .size({ width: 28, height: 28 })
        .fillColor(this.currentIndex === targetIndex ? $r("app.color.primary") : $r('app.color.light_fg'))
      Text(title)
        .fontSize(11)
        .fontColor(this.currentIndex === targetIndex ? $r("app.color.primary") : $r('app.color.light_fg'))
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.tabsController.changeIndex(targetIndex)
      this.currentIndex = targetIndex
    })
  }
}
