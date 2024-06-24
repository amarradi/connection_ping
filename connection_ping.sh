#!/bin/sh
touch $2
while true;
do
   DATE=$(date '+%d/%m/%Y %H:%M:%S')
   ping -c 1 $1 -n &> /dev/null 2>&1
   if [[ $? -ne 0 ]]; then
     echo "ERROR $1 is not reachable at" $DATE >> $2
   else
     echo "OK $1 is reachable at "$DATE >> $2
   fi
   sleep 5
done

