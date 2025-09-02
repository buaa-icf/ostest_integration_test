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
# 

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from bs4 import BeautifulSoup
import time
import random
import threading
import json
import re
import logging
from datetime import datetime

logger = logging.getLogger(__name__)

class CSDNOpenHarmonyCrawler:
    """
    用于爬取CSDN上关于OpenHarmony的资讯文章（Selenium有头浏览器版）。
    支持多线程爬取不同关键词的内容，返回统一的新闻格式。
    """
    
    def __init__(self, delay=1.5):
        self.delay = delay
        self.source = "CSDN"
        
        # 更丰富的User-Agent池，模拟不同操作系统和浏览器
        self.user_agents = [
            # Windows Chrome
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36',
            # Windows Firefox
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0',
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:119.0) Gecko/20100101 Firefox/119.0',
            # Windows Edge
            'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0',
            # macOS Chrome
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
            # macOS Safari
            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15',
            # Linux Chrome
            'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
            'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0',
        ]
        
        # 免费代理池（可以扩展）
        self.proxy_pool = [
            # 注意：这些是示例，实际使用时需要有效的代理
            # 可以集成免费代理API或代理服务
            None,  # 不使用代理
        ]
        
        # 会话管理
        self.session_count = 0
        self.max_requests_per_session = 3  # 每个会话最多请求3次
    
    def _get_random_user_agent(self):
        """获取随机User-Agent"""
        return random.choice(self.user_agents)
    
    def _get_random_proxy(self):
        """获取随机代理"""
        return random.choice(self.proxy_pool)
    
    def _should_rotate_session(self):
        """判断是否需要轮换会话"""
        self.session_count += 1
        return self.session_count >= self.max_requests_per_session
    
    def _create_driver_with_rotation(self, search_keyword):
        """创建带轮换机制的WebDriver"""
        # 随机选择User-Agent
        user_agent = self._get_random_user_agent()
        proxy = self._get_random_proxy()
        
        logger.info(f"🎭 为关键词 '{search_keyword}' 创建新的浏览器会话")
        logger.info(f"🌐 User-Agent: {user_agent[:50]}...")
        if proxy:
            logger.info(f"🔀 代理: {proxy}")
        else:
            logger.info(f"🔀 代理: 直连")
        
        options = Options()
        
        # 反反爬配置
        options.add_argument('--headless')
        options.add_argument('--no-sandbox')
        options.add_argument('--disable-dev-shm-usage')
        options.add_argument('--disable-gpu')
        options.add_argument('--window-size=1920,1080')
        
        # 高级反检测配置
        options.add_argument('--disable-blink-features=AutomationControlled')
        options.add_argument('--disable-web-security')
        options.add_argument('--allow-running-insecure-content')
        options.add_argument('--disable-features=TranslateUI')
        options.add_argument('--disable-iframes-display-none')
        options.add_argument('--disable-background-timer-throttling')
        options.add_argument('--disable-renderer-backgrounding')
        options.add_argument('--disable-backgrounding-occluded-windows')
        
        # 使用随机User-Agent
        options.add_argument(f'--user-agent={user_agent}')
        options.add_argument('--accept-language=zh-CN,zh;q=0.9,en;q=0.8')
        
        # 代理配置
        if proxy:
            options.add_argument(f'--proxy-server={proxy}')
        
        # 禁用自动化检测
        options.add_experimental_option("excludeSwitches", ["enable-automation"])
        options.add_experimental_option('useAutomationExtension', False)
        
        # 高级反检测配置
        prefs = {
            "profile.default_content_setting_values": {
                "notifications": 2,
                "media_stream": 2,
            },
            "profile.managed_default_content_settings": {
                "images": 2
            },
            # 模拟真实用户的浏览器设置
            "profile.default_content_settings": {
                "popups": 0
            },
            "profile.content_settings": {
                "pattern_pairs": {}
            }
        }
        options.add_experimental_option("prefs", prefs)
        
        return webdriver.Chrome(options=options)
    
    def _simulate_human_behavior(self, driver, url):
        """模拟人类访问行为，绕过反爬虫检测"""
        try:
            logger.debug("开始模拟人类访问行为...")
            
            # 1. 先访问CSDN主页，模拟正常用户流程
            logger.debug("先访问CSDN主页...")
            driver.get("https://www.csdn.net")
            time.sleep(random.uniform(1.0, 2.0))
            
            # 2. 模拟鼠标移动
            logger.debug("模拟鼠标活动...")
            driver.execute_script("""
                var event = new MouseEvent('mousemove', {
                    'view': window,
                    'bubbles': true,
                    'cancelable': true,
                    'clientX': Math.random() * window.innerWidth,
                    'clientY': Math.random() * window.innerHeight
                });
                document.dispatchEvent(event);
            """)
            time.sleep(random.uniform(0.5, 1.0))
            
            # 3. 模拟键盘活动
            logger.debug("模拟键盘活动...")
            driver.execute_script("document.dispatchEvent(new KeyboardEvent('keydown', {key: 'Tab'}));")
            time.sleep(random.uniform(0.3, 0.7))
            
            # 4. 现在访问目标URL
            logger.debug(f"访问目标搜索页面: {url}")
            driver.get(url)
            
            # 5. 模拟页面交互
            time.sleep(random.uniform(1.0, 2.0))
            
            # 6. 模拟滚动行为
            logger.debug("模拟用户滚动行为...")
            for _ in range(random.randint(2, 4)):
                scroll_y = random.randint(100, 500)
                driver.execute_script(f"window.scrollBy(0, {scroll_y});")
                time.sleep(random.uniform(0.5, 1.5))
            
            # 7. 回到顶部
            driver.execute_script("window.scrollTo(0, 0);")
            time.sleep(random.uniform(0.5, 1.0))
            
            logger.debug("人类行为模拟完成")
            
        except Exception as e:
            logger.warning(f"模拟人类行为时出错: {e}")
            # 如果模拟失败，直接访问目标URL
            driver.get(url)
    
    def _simulate_article_visit(self, driver, article_url):
        """模拟访问文章详情页的人类行为"""
        try:
            logger.debug("模拟访问文章详情页...")
            
            # 1. 访问文章页面
            driver.get(article_url)
            
            # 2. 随机等待，模拟阅读时间
            read_time = random.uniform(1.0, 3.0)
            logger.debug(f"模拟阅读等待: {read_time:.2f}秒")
            time.sleep(read_time)
            
            # 3. 模拟鼠标移动到页面不同位置
            mouse_positions = [
                (random.randint(100, 800), random.randint(200, 600)),
                (random.randint(200, 900), random.randint(300, 700)),
                (random.randint(150, 750), random.randint(250, 550))
            ]
            
            for x, y in mouse_positions:
                driver.execute_script(f"""
                    var event = new MouseEvent('mousemove', {{
                        'view': window,
                        'bubbles': true,
                        'cancelable': true,
                        'clientX': {x},
                        'clientY': {y}
                    }});
                    document.dispatchEvent(event);
                """)
                time.sleep(random.uniform(0.2, 0.5))
            
            # 4. 模拟慢速滚动，像真实用户阅读
            logger.debug("模拟阅读滚动...")
            scroll_steps = random.randint(3, 6)
            for i in range(scroll_steps):
                scroll_amount = random.randint(100, 300)
                driver.execute_script(f"window.scrollBy(0, {scroll_amount});")
                time.sleep(random.uniform(0.8, 2.0))  # 模拟阅读停顿
            
            # 5. 模拟点击页面（但不实际点击链接）
            try:
                driver.execute_script("""
                    var event = new MouseEvent('click', {
                        'view': window,
                        'bubbles': true,
                        'cancelable': true,
                        'clientX': window.innerWidth / 2,
                        'clientY': window.innerHeight / 2
                    });
                    // 不实际触发，只是模拟事件
                """)
                time.sleep(random.uniform(0.3, 0.7))
            except:
                pass
            
            # 6. 回到页面顶部
            driver.execute_script("window.scrollTo(0, 0);")
            time.sleep(random.uniform(0.5, 1.0))
            
            logger.debug("文章访问行为模拟完成")
            
        except Exception as e:
            logger.warning(f"模拟文章访问行为失败: {e}")
            # 失败时至少确保页面已加载
            try:
                driver.get(article_url)
                time.sleep(2)
            except:
                pass


    def crawl(self, search_url, search_keyword, batch_callback=None, batch_size=20):
        """使用Selenium获取渲染后的资讯内容，并爬取每篇文章详情页
        
        Args:
            search_url: 搜索URL
            search_keyword: 搜索关键词
            batch_callback: 分批处理回调函数，接收文章列表
            batch_size: 批处理大小，默认20篇
        """
        articles = []
        batch_articles = []
        logger.info(f"🎬 开始高级反反爬爬取 - 关键词: {search_keyword}")
        logger.info(f"📊 分批处理模式: 每 {batch_size} 篇文章执行一次回调")
        
        # 重置会话计数
        self.session_count = 0
        
        driver = None
        try:
            # 使用新的轮换机制创建浏览器
            driver = self._create_driver_with_rotation(search_keyword)
            
            # 执行高级反检测脚本
            logger.debug("🛡️ 执行高级反自动化检测脚本...")
            driver.execute_cdp_cmd('Page.addScriptToEvaluateOnNewDocument', {
                'source': '''
                    // 隐藏webdriver属性
                    Object.defineProperty(navigator, 'webdriver', {
                        get: () => undefined,
                    });
                    
                    // 模拟真实浏览器插件
                    Object.defineProperty(navigator, 'plugins', {
                        get: () => [1, 2, 3, 4, 5],
                    });
                    
                    // 设置语言
                    Object.defineProperty(navigator, 'languages', {
                        get: () => ['zh-CN', 'zh', 'en'],
                    });
                    
                    // 模拟Chrome对象
                    window.chrome = {
                        runtime: {},
                        loadTimes: function() {},
                        csi: function() {},
                        app: {}
                    };
                    
                    // 隐藏自动化相关属性
                    Object.defineProperty(navigator, 'permissions', {
                        get: () => ({
                            query: () => Promise.resolve({state: 'granted'})
                        }),
                    });
                    
                    // 随机化浏览器指纹
                    const getRandomInt = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
                    
                    // 随机屏幕分辨率
                    const screenWidths = [1920, 1366, 1440, 1536, 1280];
                    const screenHeights = [1080, 768, 900, 864, 720];
                    const randomWidth = screenWidths[getRandomInt(0, screenWidths.length - 1)];
                    const randomHeight = screenHeights[getRandomInt(0, screenHeights.length - 1)];
                    
                    Object.defineProperty(screen, 'width', {get: () => randomWidth});
                    Object.defineProperty(screen, 'height', {get: () => randomHeight});
                    Object.defineProperty(screen, 'availWidth', {get: () => randomWidth});
                    Object.defineProperty(screen, 'availHeight', {get: () => randomHeight - 40});
                    
                    // 随机时区
                    const timezones = [-8, -7, -6, -5, 8];
                    const randomTimezone = timezones[getRandomInt(0, timezones.length - 1)];
                    Object.defineProperty(Date.prototype, 'getTimezoneOffset', {
                        get: () => () => randomTimezone * 60
                    });
                    
                    // 随机化其他指纹
                    Object.defineProperty(navigator, 'hardwareConcurrency', {
                        get: () => getRandomInt(4, 16)
                    });
                    
                    Object.defineProperty(navigator, 'deviceMemory', {
                        get: () => getRandomInt(4, 32)
                    });
                    
                    // 模拟真实的Canvas指纹
                    const originalToDataURL = HTMLCanvasElement.prototype.toDataURL;
                    HTMLCanvasElement.prototype.toDataURL = function() {
                        const result = originalToDataURL.apply(this, arguments);
                        // 轻微修改Canvas输出以避免指纹识别
                        return result.replace(/.$/, String.fromCharCode(getRandomInt(65, 90)));
                    };
                '''
            })
            
            logger.info(f"✅ 浏览器启动成功，已配置高级反检测措施")
            
            logger.info(f"开始访问CSDN搜索页面 - 关键词: '{search_keyword}', URL: {search_url}")
            
            # 模拟人类访问行为
            self._simulate_human_behavior(driver, search_url)
            
            wait_time = self.delay + random.uniform(2.0, 4.0)  # 增加随机性
            logger.info(f"等待页面渲染完成，等待时间: {wait_time:.2f}秒")
            time.sleep(wait_time)
            
            logger.info(f"开始解析页面内容...")
            soup = BeautifulSoup(driver.page_source, "html.parser")
            
            # 检查页面是否加载成功
            page_title = soup.find("title")
            if page_title:
                logger.info(f"页面标题: {page_title.get_text()}")
            else:
                logger.warning("未找到页面标题")
            
            # 查找文章列表项
            list_items = soup.select("div.list-item")
            logger.info(f"找到文章列表项数量: {len(list_items)}")
            
            if len(list_items) == 0:
                # 尝试其他可能的选择器
                alternative_selectors = [
                    "div.search-item",
                    "div.result-item", 
                    "div.item",
                    ".search-result-item",
                    ".list-box .list-item"
                ]
                for selector in alternative_selectors:
                    alt_items = soup.select(selector)
                    logger.info(f"尝试备用选择器 '{selector}': 找到 {len(alt_items)} 个项目")
                    if len(alt_items) > 0:
                        list_items = alt_items
                        break
                
                if len(list_items) == 0:
                    # 保存页面源码用于调试
                    logger.error(f"未找到任何文章项目，保存页面源码用于调试")
                    with open(f"debug_csdn_page_{search_keyword}.html", "w", encoding="utf-8") as f:
                        f.write(driver.page_source)
                    logger.error(f"页面源码已保存到 debug_csdn_page_{search_keyword}.html")
            
            processed_count = 0
            for idx, item in enumerate(list_items):
                try:
                    logger.info(f"处理第 {idx + 1} 个文章项目...")
                    
                    a_tag = item.select_one("a")
                    title_tag = item.select_one("a.block-title") or item.select_one("a[href*='blog.csdn.net']") or item.select_one("h3 a")
                    summary_tag = item.select_one("p.row2") or item.select_one(".description") or item.select_one(".summary")
                    
                    if not a_tag:
                        logger.warning(f"第 {idx + 1} 个项目未找到链接标签")
                        continue
                        
                    if not title_tag:
                        logger.warning(f"第 {idx + 1} 个项目未找到标题标签")
                        continue
                    
                    article_url = a_tag.get("href")
                    article_title = title_tag.get_text(strip=True)
                    article_summary = summary_tag.get_text(strip=True) if summary_tag else ""
                    
                    logger.info(f"找到文章: {article_title}")
                    logger.info(f"文章链接: {article_url}")
                    logger.info(f"文章摘要: {article_summary[:100]}..." if len(article_summary) > 100 else f"文章摘要: {article_summary}")
                    
                    if not article_url or not article_title:
                        logger.warning(f"第 {idx + 1} 个项目缺少必要信息，跳过")
                        continue
                    
                    article = {
                        "title": article_title,
                        "url": article_url,
                        "summary": article_summary,
                        "search_keyword": search_keyword
                    }
                    
                    # 检查是否需要轮换会话
                    if self._should_rotate_session():
                        logger.info("🔄 达到会话请求限制，轮换浏览器会话...")
                        try:
                            driver.quit()
                            time.sleep(random.uniform(3.0, 6.0))  # 等待一段时间
                            driver = self._create_driver_with_rotation(search_keyword)
                            
                            # 重新执行反检测脚本
                            driver.execute_cdp_cmd('Page.addScriptToEvaluateOnNewDocument', {
                                'source': '''
                                    Object.defineProperty(navigator, 'webdriver', {get: () => undefined});
                                    Object.defineProperty(navigator, 'plugins', {get: () => [1, 2, 3, 4, 5]});
                                    Object.defineProperty(navigator, 'languages', {get: () => ['zh-CN', 'zh', 'en']});
                                    window.chrome = {runtime: {}, loadTimes: function() {}, csi: function() {}};
                                '''
                            })
                            self.session_count = 0  # 重置计数
                            logger.info("✅ 会话轮换完成")
                        except Exception as rotate_e:
                            logger.error(f"会话轮换失败: {rotate_e}")
                    
                    # 进入详情页爬取正文、作者、时间
                    logger.info(f"🔍 开始爬取文章详情页: {article_url}")
                    detail = self.crawl_article_detail(driver, article_url)
                    if detail is None:
                        logger.warning(f"⚠️ 文章详情页爬取失败，跳过: {article_url}")
                        continue
                    
                    # 统一数据格式
                    article.update(detail)
                    article = self._format_article(article)
                    articles.append(article)
                    batch_articles.append(article)
                    processed_count += 1
                    
                    logger.info(f"[{search_keyword}] 成功处理文章 {processed_count}: {article['title']}")
                    logger.info(f"[{search_keyword}] 内容块数量: {len(article.get('content', []))}")
                    
                    # 检查是否达到批处理大小
                    if len(batch_articles) >= batch_size and batch_callback:
                        try:
                            logger.info(f"📦 [分批处理] 达到批处理大小 {batch_size}，执行回调...")
                            batch_callback(batch_articles.copy())
                            batch_articles.clear()  # 清空当前批次
                            logger.info(f"✅ [分批处理] 回调执行成功，继续处理后续文章")
                        except Exception as callback_e:
                            logger.error(f"❌ [分批处理] 回调执行失败: {callback_e}")
                    
                    # 随机延迟，避免被反爬 - 增加更长的随机延迟
                    delay_time = self.delay + random.uniform(2.0, 5.0)  # 3.5-6.5秒随机延迟
                    logger.debug(f"模拟用户阅读间隔，等待 {delay_time:.2f} 秒后处理下一篇文章...")
                    time.sleep(delay_time)
                    
                    # 偶尔模拟用户暂停行为（更长延迟）
                    if random.random() < 0.2:  # 20%概率
                        extra_delay = random.uniform(5.0, 10.0)
                        logger.debug(f"模拟用户暂停思考，额外等待 {extra_delay:.2f} 秒...")
                        time.sleep(extra_delay)
                    
                except Exception as e:
                    logger.error(f"处理第 {idx + 1} 个文章项目时出错: {e}", exc_info=True)
                    continue
            
            logger.info(f"[{search_keyword}] 爬取完成，共获取到 {len(articles)} 篇文章")
            
        except Exception as e:
            logger.error(f"[{search_keyword}] 爬取过程中发生严重错误: {e}", exc_info=True)
        finally:
            # 处理剩余的批次
            if batch_articles and batch_callback:
                try:
                    logger.info(f"📦 [分批处理] 处理最后剩余的 {len(batch_articles)} 篇文章...")
                    batch_callback(batch_articles.copy())
                    logger.info(f"✅ [分批处理] 最后批次处理完成")
                except Exception as callback_e:
                    logger.error(f"❌ [分批处理] 最后批次处理失败: {callback_e}")
            
            if driver:
                try:
                    driver.quit()
                    logger.info(f"Chrome浏览器已关闭")
                except Exception as e:
                    logger.error(f"关闭浏览器时出错: {e}")
        
        return articles

    def crawl_article_detail(self, driver, url):
        """爬取CSDN博文详情页，提取正文内容、作者、时间等"""
        result = {
            "date": None,
            "author": {},
            "content": []
        }
        try:
            logger.info(f"开始访问详情页: {url}")
            
            # 模拟人类访问详情页的行为
            self._simulate_article_visit(driver, url)
            
            # 增加等待时间，确保页面完全加载（CSDN是动态网站）
            wait_time = 5.0 + random.uniform(2.0, 4.0)  # 7-9秒随机等待
            logger.info(f"等待CSDN详情页动态内容加载完成，等待时间: {wait_time:.2f}秒")
            time.sleep(wait_time)
            
            # 额外等待：检查页面是否还在加载
            for check_count in range(3):
                current_content = driver.page_source
                time.sleep(1)
                new_content = driver.page_source
                if len(new_content) == len(current_content):
                    logger.debug(f"页面内容稳定，停止等待")
                    break
                else:
                    logger.debug(f"页面内容仍在变化，继续等待... (检查 {check_count + 1}/3)")
            
            # 尝试滚动页面以触发懒加载
            try:
                driver.execute_script("window.scrollTo(0, document.body.scrollHeight/2);")
                time.sleep(1)
                driver.execute_script("window.scrollTo(0, 0);")
                time.sleep(1)
                logger.debug("已执行页面滚动以触发懒加载")
            except Exception as scroll_e:
                logger.debug(f"页面滚动失败: {scroll_e}")
            
            # 显式等待关键元素加载
            try:
                wait = WebDriverWait(driver, 10)
                # 等待文章内容区域出现
                content_selectors = [
                    (By.ID, "content_views"),
                    (By.ID, "article_content"), 
                    (By.CLASS_NAME, "article_content"),
                    (By.CLASS_NAME, "markdown_views")
                ]
                
                content_found = False
                for by_type, selector in content_selectors:
                    try:
                        element = wait.until(EC.presence_of_element_located((by_type, selector)))
                        if element:
                            logger.info(f"✅ 检测到内容元素加载完成: {selector}")
                            content_found = True
                            break
                    except:
                        continue
                
                if not content_found:
                    logger.warning("⚠️ 未检测到预期的内容元素，但继续尝试解析")
                        
            except Exception as wait_e:
                logger.warning(f"显式等待失败，继续尝试解析: {wait_e}")
            
            soup = BeautifulSoup(driver.page_source, "html.parser")
            
            # 404检测
            if soup.find("div", class_="new_404"):
                logger.warning(f"页面404或已被删除: {url}")
                return None
            
            # 反爬虫检测
            page_text = soup.get_text().lower()
            anti_crawler_keywords = ['验证码', 'captcha', '人机验证', '访问异常', '请稍后再试', 'blocked', 'forbidden']
            for keyword in anti_crawler_keywords:
                if keyword in page_text:
                    logger.warning(f"检测到反爬虫页面，关键词: {keyword}")
                    # 尝试等待更长时间
                    logger.info("尝试等待更长时间绕过反爬检测...")
                    time.sleep(random.uniform(10.0, 15.0))
                    # 重新获取页面
                    soup = BeautifulSoup(driver.page_source, "html.parser")
                    break
                
            # 正文内容
            content_blocks = []
            content_container = soup.find(id="content_views")
            
            # 调试信息
            logger.debug(f"content_views容器存在: {content_container is not None}")
            if content_container:
                logger.debug(f"content_views的class: {content_container.get('class')}")
                content_text = content_container.get_text(strip=True)
                logger.debug(f"content_views内容长度: {len(content_text)}")
                if len(content_text) < 50:
                    logger.warning(f"⚠️ content_views容器存在但内容过少: {len(content_text)} 字符")
                    # 如果内容太少，可能还在加载，再等待一下
                    logger.info("内容过少，额外等待3秒...")
                    time.sleep(3)
                    # 重新获取页面内容
                    soup = BeautifulSoup(driver.page_source, "html.parser")
                    content_container = soup.find(id="content_views")
                    if content_container:
                        new_content_text = content_container.get_text(strip=True)
                        logger.debug(f"重新获取后content_views内容长度: {len(new_content_text)}")
            else:
                logger.warning("⚠️ 未找到content_views容器，页面可能未完全加载")
            
            if content_container:
                # 检查容器内容是否充实
                container_text = content_container.get_text(strip=True)
                if len(container_text) > 100:  # 内容足够多，正常处理
                    processed_elements = set()
                    
                    def is_child_of_processed(elem):
                        """检查元素是否是已处理元素的子元素"""
                        for parent in elem.parents:
                            if parent in processed_elements:
                                return True
                        return False

                    # 块级元素，每个生成一行，避免重复处理父子元素
                    elements = content_container.find_all(["p", "li", "h1", "h2", "h3", "h4", "h5", "h6", "div"], recursive=True)
                    logger.debug(f"找到元素数量: {len(elements)}")
                    
                    text_elements_count = 0
                    for elem in elements:
                        # 跳过空div
                        if elem.name == "div" and not elem.get_text(strip=True):
                            continue
                        # 跳过已处理元素的子元素
                        if is_child_of_processed(elem):
                            continue
                        # 处理图片
                        imgs = elem.find_all("img")
                        for img in imgs:
                            img_src = img.get("src")
                            if img_src:
                                content_blocks.append({"type": "image", "value": img_src})
                        # 处理文本（包括code/strong等标签内容，行内code标签会被自动拼接）
                        text = elem.get_text(separator="", strip=True)
                        if text and len(text) > 5:  # 过滤太短的文本
                            content_blocks.append({"type": "text", "value": text})
                            processed_elements.add(elem)
                            text_elements_count += 1
                            
                    logger.debug(f"提取到文本元素数量: {text_elements_count}")
                            
                    # 处理pre代码块（块级代码）
                    for pre in content_container.find_all("pre", recursive=True):
                        # 跳过已被文本处理过的pre
                        if pre in processed_elements:
                            continue
                        code_lines = []
                        for code_div in pre.select("div.hljs-ln-code, code"):
                            code_line = code_div.get_text("\n", strip=False)
                            code_lines.append(code_line)
                        if not code_lines:
                            code_lines = [pre.get_text("\n", strip=False)]
                        code_text = "".join(code_lines)
                        lang = ""
                        code_tag = pre.find("code")
                        if code_tag and code_tag.has_attr("class"):
                            for c in code_tag["class"]:
                                if c.startswith("language-"):
                                    lang = c.replace("language-", "")
                                    break
                        md_code = f"```{lang}\n{code_text}\n```"
                        content_blocks.append({"type": "code", "value": md_code})
                else:
                    # 内容太少，可能是动态加载未完成，直接使用整体文本
                    logger.warning(f"content_views内容较少({len(container_text)}字符)，直接提取整体文本")
                    if container_text:
                        content_blocks.append({"type": "text", "value": container_text})
                    
            result["content"] = content_blocks
            logger.debug(f"主要方法提取到内容块数量: {len(content_blocks)}")
            
            # 如果content_views不存在或为空，尝试其他方法
            if not content_blocks:
                logger.info(f"content_views为空，尝试备用方法")
                # 根据截图更新的CSDN页面选择器
                possible_selectors = [
                    "div#content_views.markdown_views",  # 主要内容区域
                    "div#content_views",                 # 内容视图
                    "div#article_content",               # 文章内容
                    "div.article_content.clearfix",      # 文章内容（带clearfix）
                    "div.article_content",               # 文章内容
                    "div.markdown_views",                # Markdown视图
                    "div.htmledit_views",                # HTML编辑视图
                    "article.baidu_pl",                  # 文章主体
                    ".blog-content-box",                 # 博客内容盒子
                    ".main-content",                     # 主要内容
                    "main article",                      # 主要文章
                    ".post-content"                      # 文章内容
                ]
                
                article_content = None
                for selector in possible_selectors:
                    containers = soup.select(selector)
                    for container in containers:
                        if container and container.get_text(strip=True):
                            article_content = container
                            logger.info(f"找到备用容器: {selector}")
                            break
                    if article_content:
                        break
                
                if article_content:
                    # 提取文本内容，保留段落结构
                    paragraphs = []
                    
                    # 尝试按段落提取
                    for p in article_content.find_all(['p', 'div', 'section'], recursive=True):
                        text = p.get_text(strip=True)
                        if text and len(text) > 10:  # 过滤掉太短的文本
                            paragraphs.append(text)
                    
                    if paragraphs:
                        # 将段落合并为内容块
                        full_text = '\n\n'.join(paragraphs)
                        result["content"] = [{"type": "text", "value": full_text}]
                        logger.info(f"备用方法提取到 {len(paragraphs)} 个段落，总文本长度: {len(full_text)}")
                    else:
                        # 如果没有找到段落，尝试获取整体文本
                        all_text = article_content.get_text(separator="\n", strip=True)
                        if all_text and len(all_text) > 50:  # 至少要有50个字符
                            result["content"] = [{"type": "text", "value": all_text}]
                            logger.info(f"备用方法提取到文本长度: {len(all_text)}")
                        else:
                            logger.warning(f"备用容器存在但文本太短或为空: {len(all_text) if all_text else 0}")
                else:
                    logger.warning(f"未找到任何备用容器")
                    # 最后尝试：获取页面主要文本内容
                    body = soup.find('body')
                    if body:
                        # 移除导航、侧边栏等无关内容
                        for tag in body.find_all(['nav', 'header', 'footer', 'aside', 'script', 'style']):
                            tag.decompose()
                        
                        main_text = body.get_text(separator="\n", strip=True)
                        if main_text and len(main_text) > 100:
                            # 简单清理：只保留相对较长的行
                            lines = [line.strip() for line in main_text.split('\n') if len(line.strip()) > 20]
                            if lines:
                                cleaned_text = '\n'.join(lines[:50])  # 最多保留前50行
                                result["content"] = [{"type": "text", "value": cleaned_text}]
                                logger.info(f"最后备用方案提取到 {len(lines)} 行文本，使用前50行")
                            else:
                                logger.warning("最后备用方案也未能提取到有效内容")
                        else:
                            logger.warning("页面主体内容太少或为空")
            
            # 作者信息 - 更新选择器
            author_info = {}
            author_selectors = [
                "a.profile-href",
                ".user-info a",
                ".author-info a", 
                ".blog-author a",
                ".article-author a",
                "a[href*='/u/']",
                "a[href*='/blog/']",
                ".user-profile-head a",
                ".user-profile a"
            ]
            
            author_found = False
            for selector in author_selectors:
                author_box = soup.select_one(selector)
                if author_box:
                    author_name_elem = (author_box.select_one("span.profile-name") or 
                                       author_box.select_one(".name") or
                                       author_box.select_one("span") or
                                       author_box)
                    author_img = author_box.select_one("img.profile-img") or author_box.select_one("img")
                    
                    author_name = author_name_elem.get_text(strip=True) if author_name_elem else None
                    if author_name and len(author_name) > 0:
                        author_info = {
                            "name": author_name,
                            "avatar": author_img.get("src") if author_img else None,
                            "homepage": author_box.get("href")
                        }
                        author_found = True
                        logger.debug(f"通过选择器 '{selector}' 提取到作者信息: {author_name}")
                        break
            
            if not author_found:
                # 尝试从URL中提取作者名
                import re
                url_match = re.search(r'/([^/]+)/article/', url)
                if url_match:
                    author_info = {"name": url_match.group(1), "avatar": None, "homepage": None}
                    logger.debug(f"从URL提取到作者信息: {author_info['name']}")
                else:
                    logger.debug(f"未找到作者信息")
            
            result["author"] = author_info
                
            # 发布时间 - 根据截图更新选择器
            date_str = None
            
            # 优先尝试meta标签
            meta_time = soup.find("meta", {"itemprop": "datePublished"})
            if meta_time and meta_time.get("content"):
                date_str = meta_time["content"]
                logger.debug(f"从meta标签提取到时间: {date_str}")
            
            if not date_str:
                # 根据截图，尝试多种时间选择器
                time_selectors = [
                    "span.time",                    # 主要时间标签
                    ".time",                        # 时间类
                    "span[title*='发表时间']",       # 发表时间
                    ".publish-time",                # 发布时间
                    ".article-bar-top span.time",   # 文章栏顶部时间
                    ".article-info .time",          # 文章信息时间
                    ".blog-content-box .time",      # 博客内容时间
                    "time",                         # HTML5 time标签
                    "[class*='time']",              # 任何包含time的类
                    ".article-header .time"         # 文章头部时间
                ]
                
                for selector in time_selectors:
                    time_elements = soup.select(selector)
                    for time_elem in time_elements:
                        if time_elem:
                            # 尝试从title属性获取
                            date_candidate = time_elem.get('title') or time_elem.get_text(strip=True)
                            if date_candidate and len(date_candidate) > 5:  # 基本长度检查
                                date_str = date_candidate
                                logger.debug(f"通过选择器 '{selector}' 提取到时间: {date_str}")
                                break
                    if date_str:
                        break
            
            # 如果还是没有找到，尝试从页面中查找日期模式
            if not date_str:
                import re
                # 查找常见的日期模式
                date_patterns = [
                    r'\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}:\d{2}',  # 2025-01-01 12:00:00
                    r'\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}',        # 2025-01-01 12:00
                    r'\d{4}-\d{2}-\d{2}',                       # 2025-01-01
                    r'\d{4}年\d{1,2}月\d{1,2}日',              # 2025年1月1日
                ]
                
                page_text = soup.get_text()
                for pattern in date_patterns:
                    match = re.search(pattern, page_text)
                    if match:
                        date_str = match.group(0)
                        logger.debug(f"通过正则表达式提取到时间: {date_str}")
                        break
            
            result["date"] = date_str
            
            logger.info(f"详情页解析完成，内容块数量: {len(result['content'])}")
            
        except Exception as e:
            logger.error(f"详情页解析失败: {url}, 错误类型: {type(e).__name__}, 错误信息: {e}", exc_info=True)
            
        return result

    def _format_article(self, article):
        """将文章格式化为统一的新闻格式"""
        import hashlib
        
        # 生成文章ID（基于URL的哈希）
        article_id = hashlib.md5(article['url'].encode()).hexdigest()[:16]
        
        # 整合作者信息到摘要中
        author_info = article.get('author', {})
        author_name = author_info.get('name', '')
        summary = article.get('summary', '')
        if author_name and summary:
            summary = f"作者：{author_name} | {summary}"
        elif author_name:
            summary = f"作者：{author_name}"
        
        # 返回统一格式，符合TypeScript接口规范
        return {
            "id": article_id,
            "title": article['title'],
            "date": article.get('date', ''),
            "url": article['url'],
            "content": article.get('content', []),
            "category": article.get('search_keyword', 'OpenHarmony技术'),  # 更明确的分类
            "summary": summary,
            "source": "CSDN",  # 明确标注来源为CSDN
            "created_at": datetime.now().isoformat(),
            "updated_at": datetime.now().isoformat()
        }

    def crawl_csdn_news(self, batch_callback=None):
        """统一入口方法：爬取CSDN上关于OpenHarmony的最新资讯
        
        Args:
            batch_callback: 分批处理回调函数，接收文章列表
        """
        logger.info("🔍 开始爬取CSDN OpenHarmony相关资讯...")
        logger.info("🔍 使用多线程并行爬取两个搜索关键词...")
        
        if batch_callback:
            logger.info("📦 启用分批处理模式，每爬取20篇文章立即回调")
        
        # 爬取结果
        all_articles = crawl_with_threading(batch_callback=batch_callback)
        
        # 按来源统计
        source_stats = {}
        for article in all_articles:
            keyword = article.get('category', 'unknown')
            source_stats[keyword] = source_stats.get(keyword, 0) + 1
        
        logger.info(f"🎉 CSDN爬取完成，共获取 {len(all_articles)} 篇文章")
        for keyword, count in source_stats.items():
            logger.info(f"📊 关键词 '{keyword}': {count} 篇文章")
        
        return all_articles

    @staticmethod
    def extract_date_from_string(date_string):
        """使用正则表达式从日期字符串中提取标准化日期"""
        if not date_string:
            return None
        
        # 定义多种日期格式的正则表达式
        date_patterns = [
            # YYYY-MM-DD HH:MM:SS 格式
            r'(\d{4})-(\d{1,2})-(\d{1,2})\s+(\d{1,2}):(\d{1,2}):(\d{1,2})',
            # YYYY-MM-DD 格式
            r'(\d{4})-(\d{1,2})-(\d{1,2})',
            # YYYY年MM月DD日 格式
            r'(\d{4})年(\d{1,2})月(\d{1,2})日',
            # MM-DD HH:MM 格式（假设当前年份）
            r'(\d{1,2})-(\d{1,2})\s+(\d{1,2}):(\d{1,2})',
            # MM月DD日 格式（假设当前年份）
            r'(\d{1,2})月(\d{1,2})日',
        ]
        
        current_year = datetime.now().year
        
        for i, pattern in enumerate(date_patterns):
            match = re.search(pattern, str(date_string))
            if match:
                groups = match.groups()
                try:
                    if i == 0:  # YYYY-MM-DD HH:MM:SS
                        return datetime(int(groups[0]), int(groups[1]), int(groups[2]), 
                                      int(groups[3]), int(groups[4]), int(groups[5]))
                    elif i == 1:  # YYYY-MM-DD
                        return datetime(int(groups[0]), int(groups[1]), int(groups[2]))
                    elif i == 2:  # YYYY年MM月DD日
                        return datetime(int(groups[0]), int(groups[1]), int(groups[2]))
                    elif i == 3:  # MM-DD HH:MM
                        return datetime(current_year, int(groups[0]), int(groups[1]), 
                                      int(groups[2]), int(groups[3]))
                    elif i == 4:  # MM月DD日
                        return datetime(current_year, int(groups[0]), int(groups[1]))
                except ValueError:
                    continue
        
        return None

    @staticmethod
    def merge_and_sort_articles(articles_list):
        """合并多个文章列表并按日期排序，过滤掉不完整的文章"""
        merged_articles = []
        for articles in articles_list:
            merged_articles.extend(articles)
        
        logger.info(f"合并前文章总数: {len(merged_articles)}")
        
        # 过滤掉不完整的文章（date、author、content 任何一个为空）
        def is_article_complete(article):
            """检查文章是否完整"""
            # 检查 date 是否为空
            date_empty = not article.get('date')
            
            # 检查 author 是否为空
            author = article.get('author', {})
            author_empty = not author or not author.get('name')
            
            # 检查 content 是否为空
            content = article.get('content', [])
            content_empty = not content or len(content) == 0
            
            return not (date_empty or author_empty or content_empty)
        
        # 分别统计过滤原因
        total_before = len(merged_articles)
        date_empty_count = sum(1 for a in merged_articles if not a.get('date'))
        author_empty_count = sum(1 for a in merged_articles if not a.get('author') or not a.get('author', {}).get('name'))
        content_empty_count = sum(1 for a in merged_articles if not a.get('content') or len(a.get('content', [])) == 0)
        
        logger.info(f"过滤统计 - 日期为空: {date_empty_count}, 作者为空: {author_empty_count}, 内容为空: {content_empty_count}")
        
        # 应用过滤器
        filtered_articles = [article for article in merged_articles if is_article_complete(article)]
        
        logger.info(f"过滤后文章数量: {len(filtered_articles)} (移除了 {total_before - len(filtered_articles)} 篇不完整文章)")
        
        # 为每篇文章添加排序用的日期对象
        for article in filtered_articles:
            article['_sort_date'] = CSDNOpenHarmonyCrawler.extract_date_from_string(article.get('date'))
        
        # 按日期排序（最新的在前）
        filtered_articles.sort(key=lambda x: x['_sort_date'] or datetime.min, reverse=True)
        
        # 移除临时排序字段
        for article in filtered_articles:
            article.pop('_sort_date', None)
        
        return filtered_articles

def crawl_with_threading(batch_callback=None):
    """使用多线程爬取两个不同关键词的内容
    
    Args:
        batch_callback: 分批处理回调函数，接收文章列表
    """
    logger.info("🚀 开始多线程爬取CSDN数据...")
    
    # 定义两个搜索URL - 使用你指定的准确URL
    urls_and_keywords = [
        {
            "url": "https://so.csdn.net/so/search?spm=1000.2115.3001.4498&q=openharmony&t=&u=&urw=&s=new",
            "keyword": "openharmony"
        },
        {
            "url": "https://so.csdn.net/so/search?spm=1000.2115.3001.4498&q=%E5%BC%80%E6%BA%90%E9%B8%BF%E8%92%99&t=&u=&urw=&s=new",
            "keyword": "开源鸿蒙"
        }
    ]
    
    logger.info(f"📋 配置了 {len(urls_and_keywords)} 个搜索关键词:")
    for i, config in enumerate(urls_and_keywords):
        logger.info(f"  🔸 {i+1}. 关键词: {config['keyword']}")
        logger.info(f"  🔗 URL: {config['url']}")
    
    # 存储每个线程的结果
    results = []
    threads = []
    
    def crawl_worker(search_config, result_list):
        """线程工作函数"""
        try:
            logger.info(f"🔥 启动CSDN爬虫子线程 - 关键词: {search_config['keyword']}")
            crawler = CSDNOpenHarmonyCrawler()
            articles = crawler.crawl(search_config["url"], search_config["keyword"], 
                                   batch_callback=batch_callback, batch_size=20)
            result_list.append(articles)
            logger.info(f"✅ CSDN子线程完成 - 关键词: {search_config['keyword']}, 获取文章数: {len(articles)}")
        except Exception as e:
            logger.error(f"❌ CSDN子线程执行失败 - 关键词: {search_config['keyword']}, 错误: {e}", exc_info=True)
            result_list.append([])  # 添加空列表避免索引错误
    
    # 创建并启动线程
    logger.info("🎬 创建并启动CSDN爬虫子线程...")
    for i, config in enumerate(urls_and_keywords):
        thread_result = []
        thread = threading.Thread(target=crawl_worker, args=(config, thread_result), name=f"CSDNCrawler-{config['keyword']}")
        threads.append(thread)
        results.append(thread_result)
        thread.start()
        logger.info(f"🚀 CSDN子线程 {i+1} 已启动: {config['keyword']}")
    
    # 等待所有线程完成
    logger.info("⏳ 等待所有CSDN子线程完成...")
    for i, thread in enumerate(threads):
        thread.join()
        logger.info(f"✅ CSDN子线程 {i+1} 已完成: {thread.name}")
    
    # 收集所有结果
    all_articles = []
    for i, thread_result in enumerate(results):
        if thread_result and len(thread_result) > 0:
            articles_count = len(thread_result[0])
            all_articles.extend(thread_result[0])
            logger.info(f"📊 CSDN子线程 {i+1} 结果: {articles_count} 篇文章")
        else:
            logger.warning(f"⚠️ CSDN子线程 {i+1} 没有返回结果")
    
    logger.info(f"🔄 CSDN所有子线程完成，开始合并结果...")
    logger.info(f"📈 CSDN总共获取到 {len(all_articles)} 篇原始文章")
    
    # 合并并按时间排序
    sorted_articles = CSDNOpenHarmonyCrawler.merge_and_sort_articles([all_articles])
    
    logger.info(f"🎯 CSDN文章排序和过滤完成，最终有效文章: {len(sorted_articles)} 篇")
    
    return sorted_articles

if __name__ == "__main__":
    # 使用多线程爬取
    articles = crawl_with_threading()
    
    # 输出结果统计
    print(f"\n=== 最终结果统计 ===")
    openharmony_count = len([a for a in articles if a.get('search_keyword') == 'openHarmony'])
    kaiyuan_count = len([a for a in articles if a.get('search_keyword') == '开源鸿蒙'])
    print(f"OpenHarmony 文章数: {openharmony_count}")
    print(f"开源鸿蒙 文章数: {kaiyuan_count}")
    print(f"总文章数: {len(articles)}")
    
    # 输出JSON结果
    print(json.dumps(articles, ensure_ascii=False, indent=2)) 