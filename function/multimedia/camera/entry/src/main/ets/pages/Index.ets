@Entry
@Component
struct Index {
  @State message: string = 'Multimedia Camera Function Test';
  @State message_cn: string = '相机功能测试';
  private cases: string[] = ['拍摄元数据、抖动、陀螺仪、振动','曝光、感光度、EV 补偿、YUV 与 JPEG/RAW','人脸检测、需要彩色场景或完全黑暗的测试',
    '边缘增强、镜头移动', '宽高比、剪裁、视野范围', '镜头阴影', '缩放','相机/陀螺仪定时偏差']

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