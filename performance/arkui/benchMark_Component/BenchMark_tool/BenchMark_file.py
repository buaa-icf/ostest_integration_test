# Copyright (c) 2023 Huawei Device Co., Ltd.
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

import openpyxl

file_path = 'D:/BenchMark_tool/benchmark_next.ftrace'
with open(file_path, 'r+', encoding='ISO-8859-1') as file:
   content = file.read()  # 读取文件内容
   new_content = content.replace(".N..", "....")  
   new_content = new_content.replace(".n..", "....")  
  #  f.seek(0)  # 将文件指针移动到文件开头
   file.close()

with open(file_path, 'w+',encoding='ISO-8859-1') as file:
   file.truncate()
    # file.seek(0)  # 将文件指针移动到文件开头
   file.write(new_content)  # 写入替换后的内容  
   file.close()
