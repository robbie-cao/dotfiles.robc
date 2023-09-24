#!/bin/bash
# Generate cscope files

src_dir=${PWD}

if [[ $# -gt 1 ]] ; then
    src_dir="$1"
fi

if [[ ! -d "$src_dir" ]]; then
    echo "$src_dir does not exist."
    exit 1
fi

echo > cscope.files

find $src_dir -type f                      \
    -iname '*.[ch]' -o -name '*.cpp'       \
    -o -name '*.java' -o -name '*.aidl'    \
    -o -name '[Mm]akefile' -o -name '*.mk' \
    -o -name '*.S'                         \
    -o -name '*.sh'                        \
    -o -name '*.s51'                       \
    -o -name '*.xml'                       \
    ! -path '*/build/*'                    \
    >> cscope.files

cscope -qkb -i cscope.files

