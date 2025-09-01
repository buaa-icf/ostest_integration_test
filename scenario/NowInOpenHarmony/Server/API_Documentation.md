# NowInOpenHarmony 后端API接口文档

## 服务基础信息

- **服务地址**: `http://localhost:8001`
- **API版本**: 1.0.0
- **数据格式**: JSON
- **编码**: UTF-8
- **文档路径**: `/docs` (Swagger UI), `/redoc` (ReDoc)

---

## 接口总览

本后端服务共提供 **10个API接口**：

1. **GET** `/` - 根路径信息
2. **GET** `/health` - 基础健康检查  
3. **GET** `/api/health` - API服务状态检测
4. **GET** `/api/news/` - 获取所有新闻
5. **GET** `/api/news/openharmony` - 获取OpenHarmony官网新闻
6. **GET** `/api/news/csdn` - 获取CSDN新闻
7. **POST** `/api/news/crawl` - 手动触发爬取任务
8. **GET** `/api/news/{article_id}` - 获取文章详情
9. **GET** `/api/news/status/info` - 获取服务详细状态
10. **POST** `/api/news/cache/refresh` - 手动刷新缓存

---

## TypeScript 数据类型定义

```typescript
/**
 * 新闻内容类型枚举
 * 定义新闻文章中可能包含的内容类型
 */
export enum ContentType {
  /** 文本内容 */
  TEXT = "text",
  /** 图片内容 */
  IMAGE = "image", 
  /** 视频内容 */
  VIDEO = "video",
  /** 代码块内容 */
  CODE = "code"
}

/**
 * 新闻来源枚举
 * 定义支持的新闻数据源
 */
export enum NewsSource {
  /** OpenHarmony官方网站 */
  OPENHARMONY = "openharmony",
  /** CSDN技术博客平台 */
  CSDN = "csdn",
  /** 所有来源 */
  ALL = "all"
}

/**
 * 服务状态枚举
 * 定义后端服务的运行状态
 */
export enum ServiceStatus {
  /** 服务就绪，可正常提供服务 */
  READY = "ready",
  /** 准备中，数据更新或初始化中 */
  PREPARING = "preparing",
  /** 错误状态，服务异常 */
  ERROR = "error"
}

/**
 * 新闻内容块接口
 * 定义新闻文章中单个内容块的结构
 */
export interface NewsContentBlock {
  /** 内容类型 */
  type: ContentType;
  /** 内容值（文本、图片URL、视频URL或代码） */
  value: string;
}

/**
 * 新闻文章接口
 * 定义完整新闻文章的数据结构
 */
export interface NewsArticle {
  /** 文章唯一标识符（可选） */
  id?: string;
  /** 文章标题 */
  title: string;
  /** 发布日期 */
  date: string;
  /** 文章原链接 */
  url: string;
  /** 文章内容块数组 */
  content: NewsContentBlock[];
  /** 文章分类（可选） */
  category?: string;
  /** 文章摘要（可选） */
  summary?: string;
  /** 新闻来源（可选） */
  source?: string;
  /** 创建时间（可选） */
  created_at?: string;
  /** 更新时间（可选） */
  updated_at?: string;
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
 * 服务状态信息接口
 * 定义详细的服务状态信息
 */
export interface ServiceStatusInfo {
  /** 服务状态 */
  status: string;
  /** 最后更新时间（可选） */
  last_update?: string;
  /** 缓存中的新闻数量 */
  cache_count: number;
  /** 更新次数 */
  update_count: number;
  /** 错误信息（可选） */
  error_message?: string;
  /** 是否正在更新 */
  is_updating: boolean;
}

/**
 * 新闻源信息接口
 * 定义新闻源的详细信息
 */
export interface NewsSourceInfo {
  /** 新闻源标识 */
  source: string;
  /** 新闻源名称 */
  name: string;
  /** 新闻源描述 */
  description: string;
  /** 新闻源基础URL */
  base_url: string;
}

/**
 * 根路径响应接口
 * 定义根路径返回的基本信息
 */
export interface RootResponse {
  /** 服务信息 */
  message: string;
  /** 服务版本 */
  version: string;
  /** 文档地址 */
  docs: string;
  /** ReDoc文档地址 */
  redoc: string;
}

/**
 * API健康检查响应接口
 * 定义API健康检查的完整响应结构
 */
export interface ApiHealthResponse {
  /** 整体服务状态 */
  status: "healthy" | "unhealthy" | "preparing";
  /** 响应时间戳 */
  timestamp: number;
  /** 服务版本号 */
  version: string;
  /** 服务详细信息 */
  services: {
    /** 缓存服务状态 */
    cache: {
      /** 缓存状态 */
      status: string;
      /** 缓存数量 */
      cache_count: number;
      /** 最后更新时间（可选） */
      last_update?: string;
      /** 错误信息（可选） */
      error_message?: string;
    };
    /** 支持的新闻源列表 */
    news_sources: NewsSourceInfo[];
  };
  /** 可用的API端点 */
  endpoints: {
    /** OpenHarmony新闻端点 */
    openharmony_news: string;
    /** CSDN新闻端点 */
    csdn_news: string;
    /** 所有新闻端点 */
    all_news: string;
    /** 手动爬取端点 */
    manual_crawl: string;
    /** 服务状态端点 */
    service_status: string;
  };
  /** 错误信息（仅当status为unhealthy时） */
  error?: string;
}

/**
 * 基础健康检查响应接口
 * 定义简单健康检查的响应结构
 */
export interface HealthResponse {
  /** 服务状态 */
  status: "healthy" | "unhealthy" | "degraded";
  /** 响应时间戳 */
  timestamp: number;
  /** 服务版本号 */
  version: string;
  /** 缓存状态 */
  cache_status: string;
  /** 缓存中的新闻数量 */
  cache_count: number;
  /** 错误信息（可选） */
  error?: string;
}

/**
 * 爬取任务响应接口
 * 定义手动触发爬取任务的响应结构
 */
export interface CrawlTaskResponse {
  /** 响应消息 */
  message: string;
  /** 爬取的新闻源 */
  source: string;
  /** 任务触发时间（ISO格式字符串） */
  timestamp: string;
  /** 附加说明信息 */
  note: string;
}

/**
 * 缓存刷新响应接口
 * 定义缓存刷新操作的响应结构
 */
export interface CacheRefreshResponse {
  /** 响应消息 */
  message: string;
  /** 操作时间（ISO格式字符串） */
  timestamp: string;
}

/**
 * 服务详细状态响应接口
 * 定义获取详细服务状态的响应结构
 */
export interface DetailedStatusResponse {
  /** 服务状态信息 */
  service_status: ServiceStatusInfo;
  /** 新闻源信息列表 */
  news_sources: NewsSourceInfo[];
  /** 响应时间（ISO格式字符串） */
  timestamp: string;
  /** 所有可用的API端点 */
  endpoints: {
    /** 所有新闻端点 */
    all_news: string;
    /** OpenHarmony新闻端点 */
    openharmony_news: string;
    /** CSDN新闻端点 */
    csdn_news: string;
    /** 新闻详情端点 */
    news_detail: string;
    /** 手动爬取端点 */
    manual_crawl: string;
    /** 服务状态端点 */
    service_status: string;
    /** 缓存刷新端点 */
    cache_refresh: string;
  };
}
```

---

## API接口列表

### 0. 根路径信息接口

**获取API服务基本信息**

```typescript
/**
 * 获取API服务基本信息
 * @returns Promise<RootResponse> 根路径响应
 */
async function getApiInfo(): Promise<RootResponse> {
  const response = await fetch('/');
  return response.json();
}
```

**响应示例**:
```json
{
  "message": "NowInOpenHarmony API服务",
  "version": "1.0.0",
  "docs": "/docs",
  "redoc": "/redoc"
}
```

### 1. 基础健康检查接口

**简单的服务健康检查**

```typescript
/**
 * 简单的服务健康检查
 * @returns Promise<HealthResponse> 基础健康检查响应
 */
async function getBasicHealth(): Promise<HealthResponse> {
  const response = await fetch('/health');
  return response.json();
}
```

**响应示例**:
```json
{
  "status": "healthy",
  "timestamp": 1704067200.123,
  "version": "1.0.0",
  "cache_status": "ready",
  "cache_count": 45
}
```

### 2. API服务状态检测接口

**检测所有新闻源的服务状态**

```typescript
/**
 * 获取API健康状态
 * @returns Promise<ApiHealthResponse> API健康检查响应
 */
async function getApiHealth(): Promise<ApiHealthResponse> {
  const response = await fetch('/api/health');
  return response.json();
}
```

**响应示例**:
```json
{
  "status": "healthy",
  "timestamp": 1704067200.123,
  "version": "1.0.0",
  "services": {
    "cache": {
      "status": "ready",
      "cache_count": 45,
      "last_update": "2024-01-01T12:00:00.000Z"
    },
    "news_sources": [
      {
        "source": "openharmony",
        "name": "OpenHarmony官网",
        "description": "OpenHarmony官方网站最新动态和新闻",
        "base_url": "https://www.openharmony.cn"
      },
      {
        "source": "csdn",
        "name": "CSDN",
        "description": "CSDN平台上关于OpenHarmony的技术文章和资讯",
        "base_url": "https://blog.csdn.net"
      }
    ]
  },
  "endpoints": {
    "openharmony_news": "/api/news/openharmony",
    "csdn_news": "/api/news/csdn",
    "all_news": "/api/news/",
    "manual_crawl": "/api/news/crawl",
    "service_status": "/api/news/status/info"
  }
}
```

### 3. 所有新闻获取接口

**获取所有来源的新闻资讯**

```typescript
/**
 * 所有新闻查询参数接口
 * 定义获取所有来源新闻时的可选参数
 */
interface AllNewsParams {
  /** 页码，从1开始，默认为1 */
  page?: number;
  /** 每页数量，默认20，最大100 */
  page_size?: number;
  /** 新闻分类过滤（可选） */
  category?: string;
  /** 搜索关键词，支持标题和摘要搜索（可选） */
  search?: string;
}

/**
 * 获取所有来源的资讯
 * @param params AllNewsParams 查询参数对象
 * @returns Promise<NewsResponse> 分页新闻响应数据
 */
async function getAllNews(params: AllNewsParams = {}): Promise<NewsResponse> {
  /* 构建查询参数 */
  const queryParams = new URLSearchParams();
  if (params.page) queryParams.append('page', params.page.toString());
  if (params.page_size) queryParams.append('page_size', params.page_size.toString());
  if (params.category) queryParams.append('category', params.category);
  if (params.search) queryParams.append('search', params.search);
  
  /* 发送GET请求获取所有来源的新闻数据 */
  const response = await fetch(`/api/news/?${queryParams}`);
  return response.json();
}
```

**响应示例**:
```json
{
  "articles": [
    {
      "id": "article_123",
      "title": "OpenHarmony 4.0 发布重大更新",
      "date": "2024-01-01",
      "url": "https://www.openharmony.cn/news/detail/123",
      "content": [
        {
          "type": "text",
          "value": "OpenHarmony 4.0版本带来了重大功能更新..."
        }
      ],
      "category": "官方动态",
      "summary": "OpenHarmony 4.0版本发布",
      "source": "OpenHarmony",
      "created_at": "2024-01-01T10:00:00.000Z"
    }
  ],
  "total": 100,
  "page": 1,
  "page_size": 20,
  "has_next": true,
  "has_prev": false
}
```

### 4. OpenHarmony官网新闻获取接口

**获取OpenHarmony官方网站最新动态**

```typescript
/**
 * OpenHarmony官网新闻查询参数接口
 * 定义获取OpenHarmony官网新闻时的可选参数
 */
interface OpenHarmonyNewsParams {
  /** 页码，从1开始，默认为1 */
  page?: number;
  /** 每页数量，默认20，最大100 */
  page_size?: number;
  /** 搜索关键词，支持标题搜索（可选） */
  search?: string;
}

/**
 * 获取OpenHarmony官方网站最新动态
 * @param params OpenHarmonyNewsParams 查询参数对象
 * @returns Promise<NewsResponse> 分页新闻响应数据
 */
async function getOpenHarmonyNews(params: OpenHarmonyNewsParams = {}): Promise<NewsResponse> {
  /* 构建查询参数 */
  const queryParams = new URLSearchParams();
  if (params.page) queryParams.append('page', params.page.toString());
  if (params.page_size) queryParams.append('page_size', params.page_size.toString());
  if (params.search) queryParams.append('search', params.search);
  
  /* 发送GET请求获取OpenHarmony官网新闻数据 */
  const response = await fetch(`/api/news/openharmony?${queryParams}`);
  return response.json();
}
```

### 5. CSDN新闻获取接口

**获取CSDN平台OpenHarmony相关资讯**

```typescript
/**
 * CSDN新闻查询参数接口
 * 定义获取CSDN新闻时的可选参数
 */
interface CsdnNewsParams {
  /** 页码，从1开始，默认为1 */
  page?: number;
  /** 每页数量，默认20，最大100 */
  page_size?: number;
  /** 搜索关键词，支持标题和摘要搜索（可选） */
  search?: string;
}

/**
 * 获取CSDN平台OpenHarmony相关资讯
 * @param params CsdnNewsParams 查询参数对象
 * @returns Promise<NewsResponse> 分页新闻响应数据
 */
async function getCsdnNews(params: CsdnNewsParams = {}): Promise<NewsResponse> {
  /* 构建查询参数 */
  const queryParams = new URLSearchParams();
  if (params.page) queryParams.append('page', params.page.toString());
  if (params.page_size) queryParams.append('page_size', params.page_size.toString());
  if (params.search) queryParams.append('search', params.search);
  
  /* 发送GET请求获取CSDN新闻数据 */
  const response = await fetch(`/api/news/csdn?${queryParams}`);
  return response.json();
}
```

### 6. 手动触发爬取接口

**手动触发新闻爬取任务**

```typescript
/**
 * 爬取任务参数接口
 * 定义手动触发爬取任务时的可选参数
 */
interface CrawlParams {
  /** 新闻来源，可选值：openharmony、csdn、all，默认为all */
  source?: NewsSource;
  /** 返回数量限制，默认10，最大100（注意：此参数在当前实现中不影响爬取结果） */
  limit?: number;
}

/**
 * 手动触发新闻爬取任务
 * @param params CrawlParams 爬取参数对象
 * @returns Promise<CrawlTaskResponse> 爬取任务响应
 */
async function triggerCrawl(params: CrawlParams = {}): Promise<CrawlTaskResponse> {
  /* 构建查询参数 */
  const queryParams = new URLSearchParams();
  if (params.source) queryParams.append('source', params.source);
  if (params.limit) queryParams.append('limit', params.limit.toString());
  
  /* 发送POST请求触发爬取任务 */
  const response = await fetch(`/api/news/crawl?${queryParams}`, {
    method: 'POST'
  });
  return response.json();
}
```

**响应示例**:
```json
{
  "message": "爬取任务已启动 - 来源: all",
  "source": "all",
  "timestamp": "2024-01-01T12:00:00.000Z",
  "note": "爬取任务在后台执行，请稍后查看缓存更新状态"
}
```

### 7. 单篇新闻详情接口

**获取单篇新闻的详细信息**

```typescript
/**
 * 获取单篇新闻的详细信息
 * @param articleId string 文章唯一标识符
 * @returns Promise<NewsArticle> 新闻文章详情
 * @throws Error 当文章不存在时抛出错误
 */
async function getArticleDetail(articleId: string): Promise<NewsArticle> {
  /* 发送GET请求获取文章详情 */
  const response = await fetch(`/api/news/${articleId}`);
  
  /* 检查响应状态，如果文章不存在则抛出错误 */
  if (!response.ok) {
    if (response.status === 404) {
      throw new Error(`文章不存在: ${articleId}`);
    } else if (response.status === 503) {
      throw new Error('服务暂时不可用');
    } else {
      throw new Error('获取文章详情失败');
    }
  }
  
  return response.json();
}
```

### 8. 服务详细状态接口

**获取服务的详细状态信息**

```typescript
/**
 * 获取服务的详细状态信息
 * @returns Promise<DetailedStatusResponse> 详细状态响应
 */
async function getDetailedStatus(): Promise<DetailedStatusResponse> {
  /* 发送GET请求获取详细状态信息 */
  const response = await fetch('/api/news/status/info');
  return response.json();
}
```

**响应示例**:
```json
{
  "service_status": {
    "status": "ready",
    "last_update": "2024-01-01T12:00:00.000Z",
    "cache_count": 45,
    "update_count": 5,
    "is_updating": false
  },
  "news_sources": [
    {
      "source": "openharmony",
      "name": "OpenHarmony官网",
      "description": "OpenHarmony官方网站最新动态和新闻",
      "base_url": "https://www.openharmony.cn"
    },
    {
      "source": "csdn",
      "name": "CSDN",
      "description": "CSDN平台上关于OpenHarmony的技术文章和资讯",
      "base_url": "https://blog.csdn.net"
    }
  ],
  "timestamp": "2024-01-01T12:00:00.000Z",
  "endpoints": {
    "all_news": "/api/news/",
    "openharmony_news": "/api/news/openharmony",
    "csdn_news": "/api/news/csdn",
    "news_detail": "/api/news/{article_id}",
    "manual_crawl": "/api/news/crawl",
    "service_status": "/api/news/status/info",
    "cache_refresh": "/api/news/cache/refresh"
  }
}
```

### 9. 缓存刷新接口

**手动刷新缓存数据**

```typescript
/**
 * 手动刷新缓存数据
 * @returns Promise<CacheRefreshResponse> 缓存刷新响应
 */
async function refreshCache(): Promise<CacheRefreshResponse> {
  /* 发送POST请求刷新缓存 */
  const response = await fetch('/api/news/cache/refresh', {
    method: 'POST'
  });
  return response.json();
}
```

**响应示例**:
```json
{
  "message": "缓存刷新成功",
  "timestamp": "2024-01-01T12:00:00.000Z"
}
```

---

## 完整的API客户端类

```typescript
/**
 * NowInOpenHarmony API客户端类
 * 封装所有API接口调用，提供类型安全的方法
 */
export class NowInOpenHarmonyApiClient {
  /** API服务基础URL */
  private baseUrl: string;

  /**
   * 构造函数
   * @param baseUrl string API服务基础URL，默认为 http://localhost:8001
   */
  constructor(baseUrl: string = 'http://localhost:8001') {
    this.baseUrl = baseUrl;
  }

  /**
   * 获取API服务基本信息
   * @returns Promise<RootResponse> 根路径响应
   */
  async getApiInfo(): Promise<RootResponse> {
    const response = await fetch(`${this.baseUrl}/`);
    return response.json();
  }

  /**
   * 基础健康检查
   * @returns Promise<HealthResponse> 基础健康检查响应
   */
  async getBasicHealth(): Promise<HealthResponse> {
    const response = await fetch(`${this.baseUrl}/health`);
    return response.json();
  }

  /**
   * 获取API健康状态
   * @returns Promise<ApiHealthResponse> API健康检查响应
   */
  async getApiHealth(): Promise<ApiHealthResponse> {
    const response = await fetch(`${this.baseUrl}/api/health`);
    return response.json();
  }

  /**
   * 获取所有新闻
   * @param params AllNewsParams 查询参数对象
   * @returns Promise<NewsResponse> 分页新闻响应数据
   */
  async getAllNews(params: AllNewsParams = {}): Promise<NewsResponse> {
    /* 构建查询参数 */
    const queryParams = new URLSearchParams();
    if (params.page) queryParams.append('page', params.page.toString());
    if (params.page_size) queryParams.append('page_size', params.page_size.toString());
    if (params.category) queryParams.append('category', params.category);
    if (params.search) queryParams.append('search', params.search);
    
    const response = await fetch(`${this.baseUrl}/api/news/?${queryParams}`);
    return response.json();
  }

  /**
   * 获取OpenHarmony官网新闻
   * @param params OpenHarmonyNewsParams 查询参数对象
   * @returns Promise<NewsResponse> 分页新闻响应数据
   */
  async getOpenHarmonyNews(params: OpenHarmonyNewsParams = {}): Promise<NewsResponse> {
    /* 构建查询参数 */
    const queryParams = new URLSearchParams();
    if (params.page) queryParams.append('page', params.page.toString());
    if (params.page_size) queryParams.append('page_size', params.page_size.toString());
    if (params.search) queryParams.append('search', params.search);
    
    const response = await fetch(`${this.baseUrl}/api/news/openharmony?${queryParams}`);
    return response.json();
  }

  /**
   * 获取CSDN新闻
   * @param params CsdnNewsParams 查询参数对象
   * @returns Promise<NewsResponse> 分页新闻响应数据
   */
  async getCsdnNews(params: CsdnNewsParams = {}): Promise<NewsResponse> {
    /* 构建查询参数 */
    const queryParams = new URLSearchParams();
    if (params.page) queryParams.append('page', params.page.toString());
    if (params.page_size) queryParams.append('page_size', params.page_size.toString());
    if (params.search) queryParams.append('search', params.search);
    
    const response = await fetch(`${this.baseUrl}/api/news/csdn?${queryParams}`);
    return response.json();
  }

  /**
   * 触发爬取任务
   * @param params CrawlParams 爬取参数对象
   * @returns Promise<CrawlTaskResponse> 爬取任务响应
   */
  async triggerCrawl(params: CrawlParams = {}): Promise<CrawlTaskResponse> {
    /* 构建查询参数 */
    const queryParams = new URLSearchParams();
    if (params.source) queryParams.append('source', params.source);
    if (params.limit) queryParams.append('limit', params.limit.toString());
    
    const response = await fetch(`${this.baseUrl}/api/news/crawl?${queryParams}`, {
      method: 'POST'
    });
    return response.json();
  }

  /**
   * 获取文章详情
   * @param articleId string 文章唯一标识符
   * @returns Promise<NewsArticle> 新闻文章详情
   * @throws Error 当文章不存在时抛出错误
   */
  async getArticleDetail(articleId: string): Promise<NewsArticle> {
    const response = await fetch(`${this.baseUrl}/api/news/${articleId}`);
    
    /* 检查响应状态 */
    if (!response.ok) {
      if (response.status === 404) {
        throw new Error(`文章不存在: ${articleId}`);
      } else if (response.status === 503) {
        throw new Error('服务暂时不可用');
      } else {
        throw new Error('获取文章详情失败');
      }
    }
    
    return response.json();
  }

  /**
   * 获取详细状态
   * @returns Promise<DetailedStatusResponse> 详细状态响应
   */
  async getDetailedStatus(): Promise<DetailedStatusResponse> {
    const response = await fetch(`${this.baseUrl}/api/news/status/info`);
    return response.json();
  }

  /**
   * 刷新缓存
   * @returns Promise<CacheRefreshResponse> 缓存刷新响应
   */
  async refreshCache(): Promise<CacheRefreshResponse> {
    const response = await fetch(`${this.baseUrl}/api/news/cache/refresh`, {
      method: 'POST'
    });
    return response.json();
  }
}
```

---

## 使用示例

```typescript
/**
 * API使用示例
 * 展示如何使用NowInOpenHarmonyApiClient客户端
 */

/* 创建API客户端实例 */
const apiClient = new NowInOpenHarmonyApiClient();

/* 1. 检查服务基本信息 */
const apiInfo = await apiClient.getApiInfo();
console.log('API服务:', apiInfo.message, '版本:', apiInfo.version);

/* 2. 基础健康检查 */
const basicHealth = await apiClient.getBasicHealth();
console.log('服务状态:', basicHealth.status, '缓存数量:', basicHealth.cache_count);

/* 3. 获取所有新闻 - 支持分页、分类和搜索 */
const allNews = await apiClient.getAllNews({
  page: 1,                    // 第一页
  page_size: 20,              // 每页20条
  category: '官方动态',       // 按分类过滤
  search: 'OpenHarmony'       // 搜索关键词
});
console.log('所有新闻:', allNews.articles.length, '条，总计:', allNews.total);

/* 4. 获取OpenHarmony官网新闻 */
const officialNews = await apiClient.getOpenHarmonyNews({
  page: 1,                    // 第一页
  page_size: 10,              // 每页10条
  search: 'ArkTS'             // 搜索ArkTS相关内容
});
console.log('官网新闻:', officialNews.articles.length, '条');

/* 5. 获取CSDN新闻 */
const csdnNews = await apiClient.getCsdnNews({
  page: 1,                    // 第一页
  page_size: 15,              // 每页15条
  search: 'HarmonyOS'         // 搜索HarmonyOS相关内容
});
console.log('CSDN新闻:', csdnNews.articles.length, '条');

/* 6. 触发爬取任务 - 获取所有来源的最新数据 */
const crawlResult = await apiClient.triggerCrawl({
  source: NewsSource.ALL,     // 爬取所有来源
  limit: 50                   // 限制数量（当前实现中此参数无效）
});
console.log('爬取任务:', crawlResult.message);
console.log('任务时间:', crawlResult.timestamp);

/* 7. 获取文章详情 */
if (allNews.articles.length > 0) {
  const firstArticle = allNews.articles[0];
  if (firstArticle.id) {
    try {
      const articleDetail = await apiClient.getArticleDetail(firstArticle.id);
      console.log('文章详情:', articleDetail.title);
    } catch (error) {
      console.error('获取文章详情失败:', error.message);
    }
  }
}

/* 8. 获取详细服务状态 */
const detailedStatus = await apiClient.getDetailedStatus();
console.log('服务详细状态:', detailedStatus.service_status.status);
console.log('支持的新闻源:', detailedStatus.news_sources.length);

/* 9. 刷新缓存 */
const refreshResult = await apiClient.refreshCache();
console.log('缓存刷新:', refreshResult.message);

/* 10. 检查API服务健康状态 */
const apiHealth = await apiClient.getApiHealth();
console.log('API健康状态:', apiHealth.status);
console.log('缓存数量:', apiHealth.services.cache.cache_count);
console.log('支持的端点:', Object.keys(apiHealth.endpoints));
```

---

## 错误处理

所有API接口都可能返回以下HTTP状态码：

- **200**: 成功
- **400**: 请求参数错误
- **404**: 资源不存在（仅适用于文章详情接口）
- **500**: 服务器内部错误
- **503**: 服务暂时不可用（缓存状态为ERROR时）

### 错误响应格式

当API返回错误时，响应体通常包含以下格式：

```json
{
  "detail": "错误详细信息"
}
```

### 统一错误处理

```typescript
/**
 * 安全的API调用包装函数
 * 提供统一的错误处理机制
 * @template T 返回值类型
 * @param apiCall () => Promise<T> API调用函数
 * @returns Promise<T | null> 成功时返回结果，失败时返回null
 */
async function safeApiCall<T>(apiCall: () => Promise<T>): Promise<T | null> {
  try {
    /* 执行API调用 */
    return await apiCall();
  } catch (error) {
    /* 处理不同类型的错误 */
    if (error instanceof Error) {
      /* 检查错误信息，判断错误类型 */
      if (error.message.includes('文章不存在')) {
        console.error('文章未找到:', error.message);
      } else if (error.message.includes('服务暂时不可用')) {
        console.error('服务不可用:', error.message);
      } else if (error.message.includes('网络')) {
        console.error('网络错误:', error.message);
      } else {
        console.error('API调用失败:', error.message);
      }
    } else {
      /* 未知错误 */
      console.error('未知错误:', error);
    }
    return null;
  }
}

/**
 * 带重试机制的API调用
 * @template T 返回值类型
 * @param apiCall () => Promise<T> API调用函数
 * @param maxRetries number 最大重试次数
 * @param retryDelay number 重试延迟时间（毫秒）
 * @returns Promise<T | null> 成功时返回结果，失败时返回null
 */
async function retryApiCall<T>(
  apiCall: () => Promise<T>, 
  maxRetries: number = 3, 
  retryDelay: number = 1000
): Promise<T | null> {
  for (let attempt = 1; attempt <= maxRetries; attempt++) {
    const result = await safeApiCall(apiCall);
    if (result !== null) {
      return result;
    }
    
    if (attempt < maxRetries) {
      console.log(`第${attempt}次调用失败，${retryDelay}ms后重试...`);
      await new Promise(resolve => setTimeout(resolve, retryDelay));
    }
  }
  
  console.error(`API调用失败，已重试${maxRetries}次`);
  return null;
}

/**
 * 使用示例：安全调用API
 */
const news = await safeApiCall(() => apiClient.getAllNews({
  page: 1,
  page_size: 20,
  search: 'OpenHarmony'
}));

/* 检查结果并处理 */
if (news) {
  console.log('获取到新闻:', news.articles.length, '条');
  console.log('总页数:', Math.ceil(news.total / news.page_size));
  console.log('是否有下一页:', news.has_next);
} else {
  console.log('获取新闻失败，请稍后重试');
}

/**
 * 使用示例：带重试的API调用
 */
const healthStatus = await retryApiCall(() => apiClient.getApiHealth(), 3, 2000);
if (healthStatus) {
  console.log('服务状态检查成功:', healthStatus.status);
} else {
  console.log('服务状态检查失败');
}
```

---

## 注意事项

### 1. 分页参数

- **page**: 从1开始计数，默认为1
- **page_size**: 每页数量，默认20，最大100
- **分页逻辑**: 使用 `has_next` 和 `has_prev` 判断是否有更多数据

### 2. 搜索功能

- **OpenHarmony新闻**: 支持标题搜索
- **CSDN新闻**: 支持标题和摘要的模糊搜索
- **所有新闻**: 支持标题和摘要的模糊搜索
- **搜索不区分大小写**

### 3. 服务状态管理

- **preparing**: 服务启动时或数据更新中
- **ready**: 服务就绪，可正常提供数据
- **error**: 服务异常，无法提供数据
- **状态检查**: 推荐在获取数据前先检查服务状态

### 4. 缓存机制

- **自动更新**: 通过定时任务自动更新缓存
- **手动更新**: 可通过 `/api/news/crawl` 接口手动触发
- **缓存刷新**: 可通过 `/api/news/cache/refresh` 接口重新加载缓存
- **线程安全**: 更新过程中服务状态会变为"preparing"

### 5. 数据来源过滤

- **OpenHarmony接口**: 自动过滤只返回来源为"OpenHarmony"的文章
- **CSDN接口**: 自动过滤只返回来源为"CSDN"的文章  
- **所有新闻接口**: 返回所有来源的文章

### 6. 性能考虑

- **后台执行**: 爬虫任务在后台线程执行，不影响API响应速度
- **缓存优先**: 所有数据查询都从内存缓存获取，响应速度快
- **并发安全**: 使用线程锁保证数据一致性

### 7. 开发调试

- **文档地址**: `/docs` (Swagger UI) 和 `/redoc` (ReDoc)
- **日志记录**: 所有请求都有详细的日志记录
- **错误信息**: 提供详细的错误信息便于调试