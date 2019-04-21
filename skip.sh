#!/bin/bash -e

if [[ $# -eq 0 ]]; then
    echo "Please indicate off=0 or on=1"
    echo " ex: skip.sh 0  # turns off skipping"
    exit 1
fi

touch stage2/SKIP_IMAGES

if [[ $1 -eq 1 ]]; then
    for STAGE in stage0 stage1 stage2
    do
        touch ${STAGE}/SKIP
    done
else
    for STAGE in stage0 stage1 stage2
    do
        rm ${STAGE}/SKIP
    done
fi
