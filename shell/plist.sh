# !/bin/bash

printf "\e[1;32m%-10s %8s %8s %8s %8s %12s %28s    %s\e[0m\n" "USER" "PID" "PPID" "%CPU" "%MEM" "CPU_TIME" "START_TIME" "NAME"
ps -eo user:10,pid:8,ppid:8,%cpu:8,%mem:8,cputime:12,lstart:28 -o "    %c" | grep "pktspymgr\|merge\|spider\|parser" | grep -v "grep"
