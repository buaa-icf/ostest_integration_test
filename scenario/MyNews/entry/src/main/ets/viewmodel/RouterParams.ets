/*
 * Copyright (c) 2023 Southeast University.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* LoginPage -> MainPage: If the login process is not finished, the tab in MainPage won't be switched */
export interface MainPageParams {
  isLoggedIn?: boolean
}

/* MainPage -> SearchPage: The trending topics in SearchPage should be consistent with those in the MainPage search box */
export interface SearchPageParams {
  curTrendingTopicList?: string[]
}