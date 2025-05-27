export interface  CollectionItem  {
  id: number;
  title: string;
  url: string;
  favicon?: Resource;      // 新增网站图标
  category?: string;     // 新增分类标签
  lastVisit?: number;    // 新增最后访问时间
};
