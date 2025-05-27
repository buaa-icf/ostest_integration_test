
import { CollectionItem }from'../../model/CollectionModel'

export const CollectionData: CollectionItem[] = [
  {
    id: 1,
    title: "OpenHarmony技术大会",
    url: "https://www.openharmony.cn/technology/",
    favicon: $r('app.media.study'),
    category: "技术资源",
    lastVisit: Date.now() - 86400000 // 24小时前
  },
  {
    id: 2,
    title: "解决方案学生挑战赛",
    url:"https://www.openharmony.cn/growthPlan/",
    favicon:$r('app.media.student2'),
    category: "赛事活动",
    lastVisit: Date.now() - 3600000 // 1小时前

  },
  {
    id: 3,
    title: "创新赛赋能直播",
    url:"https://www.bilibili.com/video/BV18G411i7bR/?spm_id_from=333.999.0.0&vd_source=791e4b558742fd98bce5bd7f4a0d2120",
    category: "视频资源",
    lastVisit: Date.now() - 172800000 // 48小时前
  },
];
