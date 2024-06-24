#!/bin/sh
touch $2
while true;
do
   DATE=$(date '+%d/%m/%Y %H:%M:%S')
   ping -c 10 $1 &> /dev/null
   if [[ $? -ne 0 ]]; then
     echo "ERROR $1 is not reachable at" $DATE >> $2
   else
     echo "OK $1 is reachable at "$DATE >> $2
   fi
   sleep 10
done

