#!/bin/bash

START=2022-12-26
d1=$(date -d now +%s)
d2=$(date -d "$START" +%s)
WEEK=$(( (d1 - d2) / 604800  ))

echo "script -a --timing=week$WEEK.timing   week$WEEK.log"

echo "scriptreplay -d 10 -t week$WEEK.timing  week$WEEK.log"
