
set ymd=%date:~0,4%%date:~5,2%%
for /f "tokens=* delims= " %%a in ("%ymd%") do set ymd=%%a
set hms=%time:~0,2%%time:~3,2%%
for /f "tokens=* delims= " %%a in ("%hms%") do set hms=%%a
set filename=benchmark_next.ftrace
hdc_std wait-for-device shell mount -o remount,rw /
hdc_std shell "setenforce 0"
hdc_std shell "bytrace -t 360 -b 204800 --overwrite ace  > /data/%filename%"
hdc_std shell "sed -i '1,2d' /data/%filename%"
hdc_std file recv /data/%filename%
python trace.py -p D://BenchMark/%filename%

python BenchMark_file.py
python BenchMark.py

pause