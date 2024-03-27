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

import { IMG_POOL } from '../../../data/ImgPool'
import { SHORT_TEXT_POOL } from '../../../data/TextPool'

/**
 * Return a random image from the pool
 */
export const getRandomImg = (): Resource => {
  const idx = Math.floor(Math.random() * IMG_POOL.length)
  return IMG_POOL[idx]
}

/**
 * Return a random string from the pool
 */
export const getRandomShortStr = (): string => {
  const idx = Math.floor(Math.random() * SHORT_TEXT_POOL.length)
  return SHORT_TEXT_POOL[idx]
}