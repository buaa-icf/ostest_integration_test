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

#!/usr/bin/bin/env python3
# -*- coding: UTF-8 -*-

import sys
import os
import re
import time
import errno
import optparse
import threading
import subprocess
import codecs

options_dict = {}
device_filenames = []
host_filenames = {}
merget_filenames = []
trace_command = []
time_sync_pairs = {}
time_sync_dev = {}
TRACE_REGEX = "\s*(.*?)-(\d+?)\s+\(\s*(.*?)\)\s+\[\d+\]\s+(.*?)\s+(.*?):\s+(.*?):\s+[SFC]\|\d+\|(.*?)\s+(\d+)\s+"
DEBUG_ON = False

def parse_options():
    usage = "Usage: %prog [options] [category1 [category2 ...]]"
    desc = "Example: %prog -e sn0,sn1 -b 32768 -t 15 gfx input view ohos\n" \
           "Example: %prog -p my_trace_file.data"

    parser = optparse.OptionParser(usage=usage, description=desc)
    parser.add_option('-b', '--buffer-size', dest='buffer_size', type='int',
        help='trace buffer size of N KB, default 102400, no more than 300MB',
        metavar = 'N')
    parser.add_option('-t', '--time', dest='trace_time', type='int',
        help='trace for N seconds, default 10s', metavar = 'N')
    parser.add_option('-o', '--output_file', dest='output_file',
        help='given merged trace filename',
        metavar = 'FILE')
    parser.add_option('-l', '--list_categories', dest='list_categories',
        help='use bytrace command to listcategories')
    parser.add_option('-e', '--serial', dest='device_serials', type='string',
        help='device serials numbers, none this option for all devices')
    parser.add_option('--trace_clock', dest='trace_clock',
        help='only use the boot clock')
    parser.add_option('--overwrite', dest='overwrite',
        help='not support overwrite mode')
    parser.add_option('-p', '--process_file', dest='process_file',
        help='given trace file name to post process', metavar='FILE')

    options, args = parser.parse_args()

    if options.list_categories:
        print("use bytrace command to list categories")
        exit(0)
    elif options.trace_clock:
        print("only support the boot clock now")
        exit(0)
    elif options.overwrite:
        print("the script not support overwrite mode")
        exit(0)
    else:
        options_dict['categories'] = args
        if options.trace_time is not None:
            if options.trace_time > 0:
                options_dict['trace_time'] = options.trace_time
            else:
                parser.error('trace_time must be positive')
        if options.buffer_size is not None:
            if options.buffer_size > 0:
                options_dict['buffer_size'] = options.buffer_size
            else:
                parser.error('trace buffer size must be positive')
        if options.output_file is not None:
            options_dict['has_out_file'] = True
            options_dict['out_file'] = options.output_file
        if options.device_serials is not None:
            options_dict['has_devices'] = True
            options_dict['devices'] = options.device_serials.split(',')
        if options.process_file is not None:
            options_dict['process_file'] = options.process_file
            
def init_options():
    options_dict['buffer_size'] = 102400
    options_dict['trace_time'] = 10
    options_dict['has_out_file'] = False
    options_dict['out_file'] = ''
    options_dict['has_devices'] = False
    options_dict['devices'] =[]
    options_dict['process_file'] = ''

def process_trace_file(in_file):
    lineno = 0
    dirname, filename = os.path.split(in_file)
    basename, suffix = os.path.splitext(filename)
    out_name = "{}_o{}".format(basename, suffix)
    out_file = os.path.join(dirname, out_name)
    
    print("start processing trace file")
    with open(in_file, 'r', encoding='ISO-8859-1') as infile, open(out_file, "w+", encoding='ISO-8859-1') as outfile:
        for line in infile:
            lineno += 1
            if lineno == 1 and line.find("capturing trace...") > -1:
                continue
            if lineno == 2 and line.find("TRACE:") > -1:
                continue
            if line.find("tracing_mark_write") > -1:
                trace_match = re.match(TRACE_REGEX, line)
                if trace_match:
                    if DEBUG_ON == True:
                        ts_str = trace_match.group(5)
                        ts_mark = trace_match.group(6)
                        ts_lable = trace_match.group(7)
                        ts_num = trace_match.group(8)
                        print("{}   {}   {}\t{}".format(ts_str, ts_mark, ts_lable, ts_num))
                    line = line.rstrip(' ')
                    pos = line.rfind(' ')
                    line = line[:pos] + '|' + line[pos+1:]
            outfile.write(line)
    print("process trace data finished to file {}".format(out_name))


def main():
    init_options()
    parse_options()

    if options_dict['process_file'] is not None:
        process_trace_file(options_dict['process_file'])
        return


if __name__ == '__main__':
    main()

