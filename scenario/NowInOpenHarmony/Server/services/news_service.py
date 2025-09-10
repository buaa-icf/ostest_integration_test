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

import logging
from typing import List, Dict, Optional
from enum import Enum

from .openharmony_crawler import OpenHarmonyCrawler

logger = logging.getLogger(__name__)

class NewsSource(str, Enum):
    OPENHARMONY = "openharmony"
    ALL = "all"

class NewsService:
    """
    统一的新闻服务类，管理多个新闻源的爬取和数据格式化
    """
    
    def __init__(self):
        self.openharmony_crawler = OpenHarmonyCrawler()
    
    def crawl_news(self, source: NewsSource = NewsSource.ALL) -> List[Dict]:
        """
        根据指定源爬取新闻
        
        Args:
            source: 新闻源类型
            
        Returns:
            统一格式的新闻文章列表
        """
        articles = []
        
        try:
            if source == NewsSource.OPENHARMONY or source == NewsSource.ALL:
                logger.info("🌐 开始爬取OpenHarmony官网新闻...")
                
                import time
                
                # 定义分批回调函数
                def oh_batch_callback(batch_articles):
                    from core.cache import get_news_cache
                    from models.news import NewsArticle
                    cache = get_news_cache()
                    
                    # 转换字典为NewsArticle对象
                    news_articles = []
                    for article_dict in batch_articles:
                        try:
                            # 验证和转换content字段
                            if 'content' in article_dict:
                                content = article_dict['content']
                                if isinstance(content, list):
                                    # 确保每个content元素都是NewsContentBlock格式
                                    validated_content = []
                                    for block in content:
                                        if isinstance(block, dict) and 'type' in block and 'value' in block:
                                            validated_content.append(block)
                                        else:
                                            logger.warning(f"⚠️ [OpenHarmony批次] 无效的content块: {block}")
                                    article_dict['content'] = validated_content
                                else:
                                    logger.warning(f"⚠️ [OpenHarmony批次] content不是列表格式: {type(content)}")
                                    article_dict['content'] = []
                            
                            news_article = NewsArticle(**article_dict)
                            news_articles.append(news_article)
                        except Exception as e:
                            logger.error(f"❌ [OpenHarmony批次] 文章数据转换失败: {e}")
                            logger.error(f"文章数据字段: {list(article_dict.keys()) if isinstance(article_dict, dict) else type(article_dict)}")
                            continue
                    
                    if news_articles:
                        cache.append_to_cache(news_articles)
                        logger.info(f"📝 [OpenHarmony批次] 已写入 {len(news_articles)} 篇文章到缓存")
                    else:
                        logger.warning(f"⚠️ [OpenHarmony批次] 没有有效文章可写入")
                
                start_time = time.time()
                oh_articles = self.openharmony_crawler.crawl_openharmony_news(
                    batch_callback=oh_batch_callback, batch_size=20)
                end_time = time.time()
                
                articles.extend(oh_articles)
                logger.info(f"✅ OpenHarmony官网新闻爬取完成，获取 {len(oh_articles)} 篇文章，耗时 {end_time-start_time:.2f}秒")
            
        except Exception as e:
            logger.error(f"新闻爬取过程中发生错误: {e}")
            raise
        
        return articles
    
    def get_news_sources(self) -> List[Dict]:
        """
        获取所有支持的新闻源信息
        
        Returns:
            新闻源信息列表
        """
        return [
            {
                "source": NewsSource.OPENHARMONY,
                "name": "OpenHarmony官网",
                "description": "OpenHarmony官方网站最新动态和新闻",
                "base_url": "https://www.openharmony.cn"
            }
        ]
    
    def validate_articles(self, articles: List[Dict]) -> List[Dict]:
        """
        验证和过滤文章数据
        
        Args:
            articles: 原始文章数据
            
        Returns:
            验证后的文章数据
        """
        valid_articles = []
        
        for article in articles:
            # 检查必要字段
            if not all(key in article for key in ['id', 'title', 'url', 'source']):
                logger.warning(f"文章缺少必要字段，跳过: {article.get('title', '未知标题')}")
                continue
            
            # 检查内容是否为空
            if not article.get('content') or len(article.get('content', [])) == 0:
                logger.warning(f"文章内容为空，跳过: {article.get('title', '未知标题')}")
                continue
            
            valid_articles.append(article)
        
        logger.info(f"文章验证完成，有效文章: {len(valid_articles)}/{len(articles)}")
        return valid_articles


# 全局新闻服务实例
_news_service: Optional[NewsService] = None

def get_news_service() -> NewsService:
    """获取新闻服务实例"""
    global _news_service
    if _news_service is None:
        _news_service = NewsService()
    return _news_service