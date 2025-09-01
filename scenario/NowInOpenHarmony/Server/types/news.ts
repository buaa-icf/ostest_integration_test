/**
 * 新闻系统数据类型定义
 * 从 models/news.py 转换而来
 */

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
export interface NewsArticle {
  /** 文章唯一标识符（可选） */
  id?: string | null;
  /** 文章标题 */
  title: string;
  /** 发布日期 */
  date: string;
  /** 文章原链接 */
  url: string;
  /** 文章内容块数组 */
  content: NewsContentBlock[];
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

/**
 * 搜索请求接口
 * 定义搜索新闻的请求参数
 */
export interface SearchRequest {
  /** 搜索关键词 */
  keyword: string;
  /** 分类过滤（可选） */
  category?: string | null;
  /** 开始日期（可选） */
  start_date?: string | null;
  /** 结束日期（可选） */
  end_date?: string | null;
}

/**
 * 主题文章接口
 * 定义论坛或社区主题文章的数据结构
 */
export interface TopicArticle {
  /** 文章唯一标识符（可选） */
  id?: string | null;
  /** 文章标题 */
  title: string;
  /** 文章内容 */
  content: string;
  /** 作者 */
  author: string;
  /** 回复数量 */
  reply_count: number;
  /** 查看次数 */
  view_count: number;
  /** 标签数组 */
  tags: string[];
  /** 创建时间（可选，ISO 8601 格式） */
  created_at?: string | null;
  /** 文章链接 */
  url: string;
}

/**
 * 发布信息接口
 * 定义软件版本发布信息的数据结构
 */
export interface ReleaseInfo {
  /** 发布信息唯一标识符（可选） */
  id?: string | null;
  /** 版本号 */
  version: string;
  /** 发布标题 */
  title: string;
  /** 发布日期 */
  release_date: string;
  /** 发布描述 */
  description: string;
  /** 新功能列表 */
  features: string[];
  /** 错误修复列表 */
  bug_fixes: string[];
  /** 兼容性信息（可选） */
  compatibility?: string | null;
  /** 下载链接（可选） */
  download_url?: string | null;
  /** 创建时间（可选，ISO 8601 格式） */
  created_at?: string | null;
}

/**
 * API 响应的通用类型定义
 */
export type ApiResponse<T> = {
  data: T;
  message?: string;
  status: 'success' | 'error';
};

/**
 * 分页查询参数接口
 */
export interface PaginationParams {
  /** 页码 */
  page?: number;
  /** 每页数量 */
  page_size?: number;
  /** 是否返回全部数据不分页 */
  all?: boolean;
}

/**
 * 新闻查询参数接口
 * 扩展分页参数，添加新闻特定的过滤条件
 */
export interface NewsQueryParams extends PaginationParams {
  /** 分类过滤 */
  category?: string;
  /** 搜索关键词 */
  search?: string;
}