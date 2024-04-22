@Entry
@Component
struct Index {
  @State message: string = '应用在系统级执行设备管理工作的功能测试';

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}