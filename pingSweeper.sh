#!/bin/bash
RED='\033[0;31m'
if [ "$1" == "" ];
then
        echo "You forgot to enter the IP address you wanted to sweep provide the first three octates you want to scan"
        echo -e "${RED}Syntax: ./scriptname.sh 192.168.0"
else
for ip in {0..255}; do
        ping -c 1 $1.$ip | grep "bytes from" | cut -d " " -f 4 &
done
fi
