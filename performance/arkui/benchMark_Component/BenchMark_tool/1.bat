
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