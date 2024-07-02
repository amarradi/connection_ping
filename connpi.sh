#!/bin/bash
touch $2
while true;
do
   DATE=$(date -Is)
   ping -c $3 $1 &> /dev/null
   if [ $? -ne 0 ]; then
     echo "ERROR $1 at" $DATE >> $2
   else
     echo "OK $1 at "$DATE >> $2
   fi
   sleep 10
done

