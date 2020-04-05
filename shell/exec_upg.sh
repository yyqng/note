#!/bin/bash

# 安装升级包

PKTSPY_PATH=/usr/pktspy


if [ -n "$1" ]; then
	UPG=$1
else
	echo "usage: $0 <pktspy upg path>"
	exit 1
fi

$PKTSPY_PATH/script/pktspyd stop

echo ================ $UPG install upgrade package begin ==================
echo install path : $PKTSPY_PATH
tar xJvf $1 -C $PKTSPY_PATH
echo ================ $UPG install upgrade package end ====================

#$PKTSPY_PATH/script/pktspyd start

#$PKTSPY_PATH/script/plist_pktspy.sh

