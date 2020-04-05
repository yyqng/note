#!/bin/bash

# 构建升级包


FILE_NAME=pktspy-upg-`date '+%y%m%d%H%M%S'`.txz

SCRIPT_PATH=`dirname $0`
cd $SCRIPT_PATH/../
PKTSPY_PATH=`pwd`

echo ================ build upgrade package begin ==================
echo build path : $PKTSPY_PATH/$FILE_NAME
tar cJvf pktspy-upg-`date '+%y%m%d%H%M%S'`.txz -C $PKTSPY_PATH \
bin/spider \
bin/parser \
bin/merge \
bin/pktspymgr \
bin/spyget \
bin/speedtest.py \
lib/libcomm.so \
lib/libtaskid.so \
lib/libdatabase.so \
script/exec_upg_pktspy.sh \
script/plist_pktspy.sh \
script/pktspyd \

echo ================ build upgrade package end ====================


