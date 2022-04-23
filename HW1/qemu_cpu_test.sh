#! /bin/bash

#################
# Tests cpu performance of VM using sysbench
# and prints output
#
# Input param: $1: $prime - value of max-prime for test
# Output : prints results for 5 runs of cpu test for given parameters'
##################

prime=$1

echo "+++++++++++++++++++++"
echo VM CPU test
echo "+++++++++++++++++++++"
echo ""

echo "******** BEGIN : test for max-prime = $prime ********"
for i in 1 2 3 4 5; do
	sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
	echo Test $i for max-prime = $prime
	sysbench --test=cpu --cpu-max-prime=$prime run
	echo "=========================================="
done
echo "******** END : test for max-prime = $prime ********"
		
