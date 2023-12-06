:: Copyright (c) 2023 Huawei Device Co., Ltd.
:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
::
::  http://www.apache.org/licenses/LICENSE-2.0
::
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.

::运行bytrace
hdc shell "bytrace -t 10 -b 40960 --overwrite ability ace graphic > /data/%filename%"
hdc shell "sed -i '1,2d' /data/%filename%"
hdc file recv /data/%filename% ./%tracefolder%/%filename%
:: 解析
python3 traceParseFile.py --ftrace %tracefolder%/%filename% --tags %tagname% --ofile 渲染管线报告.xls --ofilePos %rownum%,6

::3秒后开启新的测试窗口
timeout -nobreak 3
start cmd /c benchmark.bat