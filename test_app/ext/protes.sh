#!/bin/sh

hostname=0
total=0
average=0

for i in 1 2 3 4 5 6 7 8 9 10
#for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
do
	hostname=`./mmpram`
	echo "$i : $hostname"
	total=`echo "scale=7; $total + $hostname " | bc`
	echo "Now total = $total"
done

total=`echo "scale=21; $total / $i " | bc`
echo "average = $total"