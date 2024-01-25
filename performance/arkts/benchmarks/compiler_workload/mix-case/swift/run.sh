#Copyright (c) 2023 Shenzhen Kaihong Digital Industry Development Co., Ltd.
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

#!/bin/bash
declare -A testSets
testSets["raytrace"]="./Octane/"
testSets["box2d"]="./Octane/"
testSets["deltablue"]="./Octane/"
testSets["navier-stoke"]="./Octane/"
testSets["richards"]="./Octane/"
testSets["base64"]="./SunSpider/"
testSets["crypto-aes"]="./SunSpider/"
testSets["crypto-md5"]="./SunSpider/"
testSets["crypto-sha1"]="./SunSpider/"

function build_swift(){
    local swift_file=$1$2.swift
    local file_name=$2
    local swift2path=$1
    echo "---building swift:"$1$2"---"
    swiftc -O -whole-module-optimization ${swift_file} -o ${swift2path}/${file_name}
}

if [ -z "$1" ]; then
    for key in ${!testSets[@]}; do
        if [ -n "${testSets[${key}]}" ]; then
            build_swift ${testSets[${key}]} ${key} 
        else
            echo "${key} does't exist in cases"
        fi
    done
    for key in ${!testSets[@]}; do
        echo "---run swift:"$key"---"
        ${testSets[${key}]}/$key
    done
else
    case_name=$1
    if [ -n "${testSets[${case_name}]}" ]; then
        build_swift ${testSets[${case_name}]} ${case_name}
        echo "---run swift:"$case_name"---"
        ${testSets[${case_name}]}/$case_name
    else
        echo "${case_name} does't exist in cases"
    fi
fi
echo "---clear files---"
find . -type f -executable ! -name "*.*" -delete
