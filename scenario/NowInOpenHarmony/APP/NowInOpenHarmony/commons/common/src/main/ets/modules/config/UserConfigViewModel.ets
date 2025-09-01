/**
 * 用户设置项
 */
@ObservedV2
export class UserConfigViewModel {
  /**
   * 深浅色模式
   * 0 浅色模式
   * 1 深色模式
   * 2 跟随系统
   */
  @Trace colorModel: 0 | 1 | 2 = 2
  /**
   * 文章字体大小
   * 合理取值区间12-24
   */
  @Trace fontSize: number = 16
}