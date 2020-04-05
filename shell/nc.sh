#!/bin/bash

#ssh -i id_rsa -p 11022 root@183.63.70.123 -L 9999:localhost:8888 -N -y -y -f

#nohup sh -c "/tmp/home/root/tcpdump_6900 -U -s 0 -n -i br0 -w - not port 22 and not host 183.63.70.123 and not arp and not icmp | nc localhost 9999" &

/tmp/home/root/tcpdump_6900 -U -s 0 -n -i br0 -w - not port 22 and not host 183.63.70.123 and not arp and not icmp | nc 183.63.70.123 8442
