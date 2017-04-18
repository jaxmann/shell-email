#!/bin/bash
while :
do
if hadoop fs -test -e '<path-to-file>' ; then
        hadoop fs -cat '<path-to-file>' |
        awk -F',' '{system("echo "$4" | mail -s "$5 " <target-email>")}' -
fi

sleep 1m
done
