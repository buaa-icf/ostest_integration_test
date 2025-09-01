

/**
 * 内容类型枚举
 */
export enum ContentType {
  TEXT = "text",
  IMAGE = "image",
  VIDEO = "video",
  CODE = "code"
}

/**
 * 新闻内容块接口
 * 定义新闻文章中单个内容块的结构
 */
export interface NewsContentBlock {
  /** 内容类型 */
  type: ContentType;
  /** 内容值 */
  value: string;
}

/**
 * 新闻文章接口
 * 定义完整新闻文章的数据结构
 */
@ObservedV2
export class NewsArticle {
  /** 文章唯一标识符（可选） */
  @Trace id: string = ''
  /** 文章标题 */
  title: string= ''
  /** 发布日期 */
  date: string= ''
  /** 文章原链接 */
  url: string= ''
  /** 文章内容块数组 */
  content: NewsContentBlock[] = []
  /** 文章分类（可选） */
  category?: string | null;
  /** 文章摘要（可选） */
  summary?: string | null;
  /** 新闻来源（可选） */
  source?: string | null;
  /** 创建时间（可选，ISO 8601 格式） */
  created_at?: string | null;
  /** 更新时间（可选，ISO 8601 格式） */
  updated_at?: string | null;
}

/**
 * 新闻响应接口
 * 定义分页新闻数据的响应结构
 */
export interface NewsResponse {
  /** 新闻文章数组 */
  articles: NewsArticle[];
  /** 总文章数量 */
  total: number;
  /** 当前页码 */
  page: number;
  /** 每页文章数量 */
  page_size: number;
  /** 是否有下一页 */
  has_next: boolean;
  /** 是否有上一页 */
  has_prev: boolean;
}
