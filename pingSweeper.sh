#!/bin/bash
if [ $1 == "" ];
then
echo "You forgot to enter the IP address you wanted to sweep provide the first three octates you want to scan"
echo "Syntax ./scriptname.sh 192.18.1."
else
for ip in {0..255}; do
ping -c 1 $1.$ip | grep "bytes from" | cut -d " " -f 4 &
done
fi
