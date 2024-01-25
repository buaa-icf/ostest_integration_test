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
