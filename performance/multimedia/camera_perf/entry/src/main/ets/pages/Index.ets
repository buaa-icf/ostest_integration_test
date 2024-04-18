@Entry
@Component
struct Index {
  @State message: string = 'Multimedia Camera Performance Test';
  @State message_cn: string = '相机性能测试';
  private cases: string[] = ['照片参数最大值','视频参数最大值','照片参数最小值','视频参数最小值',
    '宽高比、视野缩放范围','曝光、感光度、EV 补偿参数边界值']

  build() {
    Row() {
      Column() {
        Text(this.message_cn)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin(20)
        Text(this.message)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        Button('执行全部用例')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .width('50%')
          .margin(20)
        List({ space: 20, initialIndex: 0 }) {
          ForEach(this.cases, (item: string) => {
            ListItem() {
              Text(item)
                .width('100%')
                .height(30)
                .fontSize(16)
                .textAlign(TextAlign.Center)
                .borderRadius(10)
                .borderWidth(1)
                .borderColor(Color.Blue)
                .backgroundColor(0xFFFFFF)
            }
          }, (item: string) => item)
        }.width('90%')
        .height('80%')
        .scrollBar(BarState.Off)
      }
      .width('100%')
    }
    .height('100%')
  }
}