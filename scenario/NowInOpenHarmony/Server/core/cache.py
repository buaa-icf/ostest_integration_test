# Copyright (c) 2025 XBXyftx
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


import json
import logging
import threading
import time
from typing import List, Optional, Dict, Any
from datetime import datetime
from enum import Enum

from models.news import NewsArticle, NewsResponse

logger = logging.getLogger(__name__)

class ServiceStatus(str, Enum):
    """服务状态枚举"""
    READY = "ready"           # 服务就绪
    PREPARING = "preparing"   # 准备中（数据更新中）
    ERROR = "error"           # 错误状态

class NewsCache:
    """新闻数据缓存管理器"""
    
    def __init__(self):
        self._cache: List[NewsArticle] = []
        self._cache_lock = threading.RLock()  # 可重入锁
        self._status = ServiceStatus.READY  # 初始状态为就绪，等待数据分批写入
        self._last_update = None
        self._update_count = 0
        self._error_message = None
        self._is_updating = False  # 标记是否正在更新
        self._is_first_load = True  # 标记是否为首次加载
        
    def get_status(self) -> Dict[str, Any]:
        """获取服务状态"""
        with self._cache_lock:
            return {
                "status": self._status.value,
                "last_update": self._last_update,
                "cache_count": len(self._cache),
                "update_count": self._update_count,
                "error_message": self._error_message,
                "is_updating": self._is_updating,
                "is_first_load": self._is_first_load  # 添加首次加载标识
            }
    
    def set_status(self, status: ServiceStatus, error_message: Optional[str] = None):
        """设置服务状态"""
        with self._cache_lock:
            self._status = status
            self._error_message = error_message
            logger.info(f"服务状态更新: {status.value}")
    
    def set_updating(self, is_updating: bool):
        """设置更新状态"""
        with self._cache_lock:
            self._is_updating = is_updating
            if is_updating:
                logger.info("开始数据更新，状态设为准备中")
                self.set_status(ServiceStatus.PREPARING)
            else:
                logger.info("数据更新完成，状态设为就绪")
                self.set_status(ServiceStatus.READY)
    
    def get_news(self, page: int = 1, page_size: int = 20, 
                 category: Optional[str] = None, 
                 search: Optional[str] = None) -> NewsResponse:
        """获取新闻数据（带分页和过滤）"""
        with self._cache_lock:
            if self._status == ServiceStatus.ERROR:
                raise Exception(f"服务错误: {self._error_message}")
            
            # 过滤数据
            filtered_news = self._cache.copy()
            
            # 分类过滤
            if category:
                filtered_news = [news for news in filtered_news if news.category == category]
            
            # 搜索过滤
            if search:
                search_lower = search.lower()
                filtered_news = [
                    news for news in filtered_news 
                    if search_lower in news.title.lower() or 
                       (news.summary and search_lower in news.summary.lower())
                ]
            
            # 时间排序：按日期由近到远排序
            try:
                filtered_news.sort(key=lambda x: self._parse_date_for_sorting(x.date), reverse=True)
            except Exception as e:
                logger.warning(f"日期排序失败，使用原始顺序: {e}")
            
            # 分页处理
            total = len(filtered_news)
            start = (page - 1) * page_size
            end = start + page_size
            paginated_news = filtered_news[start:end]
            
            return NewsResponse(
                articles=paginated_news,
                total=total,
                page=page,
                page_size=page_size,
                has_next=end < total,
                has_prev=page > 1
            )
    
    def _parse_date_for_sorting(self, date_str: str) -> datetime:
        """解析日期字符串用于排序"""
        try:
            # 尝试多种日期格式
            date_formats = [
                '%Y-%m-%d',           # 2023-12-25
                '%Y/%m/%d',           # 2023/12/25
                '%Y-%m-%d %H:%M:%S',  # 2023-12-25 10:30:00
                '%Y/%m/%d %H:%M:%S',  # 2023/12/25 10:30:00
                '%Y年%m月%d日',        # 2023年12月25日
                '%m-%d',              # 12-25 (假设为当年)
                '%m/%d',              # 12/25 (假设为当年)
            ]
            
            for date_format in date_formats:
                try:
                    parsed_date = datetime.strptime(date_str, date_format)
                    # 如果只有月日，补充当前年份
                    if '%Y' not in date_format:
                        parsed_date = parsed_date.replace(year=datetime.now().year)
                    return parsed_date
                except ValueError:
                    continue
            
            # 如果都失败了，尝试提取数字
            import re
            date_match = re.search(r'(\d{4})[-/年](\d{1,2})[-/月](\d{1,2})', date_str)
            if date_match:
                year, month, day = date_match.groups()
                return datetime(int(year), int(month), int(day))
            
            # 最后的fallback：返回Unix纪元时间
            logger.warning(f"无法解析日期格式: {date_str}")
            return datetime(1970, 1, 1)
            
        except Exception as e:
            logger.warning(f"日期解析异常: {date_str}, 错误: {e}")
            return datetime(1970, 1, 1)
    
    def update_cache(self, news_data: List[NewsArticle]):
        """更新缓存数据（完全替换）"""
        with self._cache_lock:
            try:
                # 设置更新状态为True，状态变为准备中
                self.set_updating(True)
                
                # 更新缓存
                self._cache = news_data.copy()
                self._last_update = datetime.now().isoformat()
                self._update_count += 1
                
                # 🔥 重要：标记首次加载完成，后续不再使用分批写入
                if self._is_first_load:
                    self._is_first_load = False
                    logger.info("🏁 首次完整加载完成，后续更新将使用完整替换模式")
                
                # 设置更新状态为False，状态变为就绪
                self.set_updating(False)
                
                logger.info(f"🔄 缓存完整更新成功，共 {len(news_data)} 条新闻")
                
            except Exception as e:
                error_msg = f"缓存更新失败: {str(e)}"
                self.set_status(ServiceStatus.ERROR, error_msg)
                self._is_updating = False
                logger.error(error_msg)
                raise
    
    def append_to_cache(self, new_articles: List[NewsArticle]):
        """增量追加新文章到缓存（仅用于首次加载的分批写入）"""
        with self._cache_lock:
            try:
                if not new_articles:
                    return
                
                # 🔥 重要：只在首次加载时才允许分批写入
                if not self._is_first_load:
                    logger.warning("⚠️ 非首次加载，忽略分批写入，等待完整更新")
                    return
                
                # 获取现有文章的URL集合，用于去重
                existing_urls = {article.url for article in self._cache}
                
                # 过滤掉重复的文章
                unique_articles = [
                    article for article in new_articles 
                    if article.url not in existing_urls
                ]
                
                if unique_articles:
                    # 追加新文章
                    self._cache.extend(unique_articles)
                    self._last_update = datetime.now().isoformat()
                    
                    # 🔥 关键修改：如果缓存中有文章了，就设置状态为READY
                    if len(self._cache) > 0 and self._status == ServiceStatus.PREPARING:
                        logger.info("🎉 缓存中已有数据，状态设为就绪，用户可以开始查看文章")
                        self.set_status(ServiceStatus.READY)
                    
                    logger.info(f"📝 [首次加载] 增量追加 {len(unique_articles)} 篇新文章到缓存（跳过 {len(new_articles) - len(unique_articles)} 篇重复）")
                    logger.info(f"📊 [首次加载] 缓存总数: {len(self._cache)} 篇文章")
                else:
                    logger.info(f"📝 [首次加载] 本批次 {len(new_articles)} 篇文章全部为重复，跳过")
                
            except Exception as e:
                error_msg = f"增量更新缓存失败: {str(e)}"
                logger.error(error_msg)
                raise
    
    def get_cache_info(self) -> Dict[str, Any]:
        """获取缓存信息"""
        with self._cache_lock:
            return {
                "cache_size": len(self._cache),
                "last_update": self._last_update,
                "update_count": self._update_count,
                "status": self._status.value,
                "error_message": self._error_message,
                "is_updating": self._is_updating
            }
    
    def clear_cache(self):
        """清空缓存"""
        with self._cache_lock:
            self._cache.clear()
            self._last_update = None
            self._update_count = 0
            self.set_updating(True)  # 清空时设为准备中
            logger.info("缓存已清空")

# 全局缓存实例
_news_cache: Optional[NewsCache] = None

def get_news_cache() -> NewsCache:
    """获取新闻缓存实例"""
    global _news_cache
    if _news_cache is None:
        _news_cache = NewsCache()
    return _news_cache

def init_cache():
    """初始化缓存"""
    global _news_cache
    _news_cache = NewsCache()
    logger.info("新闻缓存初始化完成") 