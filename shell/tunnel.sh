#!/bin/bash
#chkconfig: 2345 80 90
#description:开机自动建立隧道
serviceListening(){
    command=`ps -ef|grep -w $1|grep -w $2|grep -w $3`
    if [  "$command" == "" ];then
        if [  "$3" == "1122" ];then
            echo "$1 start tunnel 10022 to 123:1122"
            ssh -i id_rsa -p 10022 tun43@183.63.70.123 -R 1122:localhost:10022 -fN -o TCPKeepAlive=yes -o ServerAliveInterval=60
        elif [  "$3" == "58446" ];then
            echo "$1 start tunnel 8446 to 123:58446"
            ssh -i id_rsa -p 10022 tun43@183.63.70.123 -R 58446:localhost:8446 -fN -o TCPKeepAlive=yes -o ServerAliveInterval=60
        elif [  "$3" == "51521" ];then
            echo "$1 start tunnel 1521 to 123:51521"
            ssh -i id_rsa -p 10022 tun43@183.63.70.123 -R 51521:localhost:1521 -fN -o TCPKeepAlive=yes -o ServerAliveInterval=60 
        fi
    else
        if [  "$2" == "1122" ];then
            echo "$1 tunnel 10022 alredy started, nothing to do"
        else
            echo "$1 tunnel $2 alredy started, nothing to do"
        fi
    fi
}

deadServiceClose(){
    STR=`ps -ef|grep -w ssh | grep -w 10022`
    if [[ $STR =~ $1 || $STR =~ $2 || $STR =~ $3 ]];then
        echo "tun43 tunnel alive."
    else
        echo "tun43 tunnel dead , close tun43!"
        ssh -p 10022 tun43@183.63.70.123 'pkill -u tun43'
    fi
}

echo -e  "\033[32m tunnel 10022 status\033[0m"
deadServiceClose 1122 58446 51521
serviceListening ssh 10022 1122
echo -e  "\033[32m tunnel 8446 status\033[0m"
serviceListening ssh 10022 58446
echo -e  "\033[32m tunnel 1521 status\033[0m"
serviceListening ssh 10022 51521
