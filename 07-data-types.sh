#!/bin/bash

No1=$1
No2=$2

SUM=$(($No1+$No2))
substraction=$(($No1-$No2))
devide=$(($No1/$No2))
percentile=$(($No1%$No2))

echo "Total no.of $No1 and $No2 is: $SUM"

echo "Total no.of $No1 and $No2 is: $substraction"

echo "Total no.of $No1 and $No2 is: $devide"

echo "Total no.of $No1 and $No2 is: $percentile"