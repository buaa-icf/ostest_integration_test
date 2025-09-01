/**
 * 首页顶部轮播图数据结构(测试用例并非后端接口数据结构)
 */
export class NewsSwiperModule{
  img:ResourceStr
  name:string

  constructor(img: ResourceStr, name: string) {
    this.img = img
    this.name = name
  }

}