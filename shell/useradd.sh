#!/bin/sh
users=(dongh fuz jiangb pktfwd songyp wangjq xiongxh yejf yuyq)

function addOneuser
{
    USER_COUNT=`cat /etc/passwd | grep '^$USER_NAME:' -c`
    if [ $USER_COUNT -ne 1 ]
      then
        useradd $USER_NAME
        echo "123456" | passwd $USER_NAME --stdin
        chage -d0 $USER_NAME
      else
        echo 'user exits'
    fi
}

for USER_NAME in ${users[@]} 
do
    addOneuser
done
