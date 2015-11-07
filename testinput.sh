#!/usr/bin/env bash

for i in $(cat ${1})
do
    echo $i
    sleep $2
done



