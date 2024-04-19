:: Copyright (c) 2023 Huawei Device Co., Ltd.
:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
:: 
::     http://www.apache.org/licenses/LICENSE-2.0
:: 
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.

set ymd=%date:~0,4%%date:~5,2%%
for /f "tokens=* delims= " %%a in ("%ymd%") do set ymd=%%a
set hms=%time:~0,2%%time:~3,2%%
for /f "tokens=* delims= " %%a in ("%hms%") do set hms=%%a
set filename=benchmark_next.ftrace
hdc wait-for-device shell mount -o remount,rw /
hdc shell "setenforce 0"
hdc shell "bytrace -t 360 -b 204800 --overwrite ace  > /data/%filename%"
hdc shell "sed -i '1,2d' /data/%filename%"
hdc file recv /data/%filename%
python trace.py -p D://BenchMark_tool/%filename%

python BenchMark_file.py
python BenchMark.py

pause