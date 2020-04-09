#!/bin/bash

datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo $(( (d1 - d2) / 86400 )) days
}

today=$(date +%F)
d=$(date -d "$1" +%F)

echo "Today is $today. The number of days from $d to today: "
datediff "$today" "$1"