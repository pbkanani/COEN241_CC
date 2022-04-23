#! /bin/bash

#################
# Tests file I/O performance of VM using sysbench
# and prints output
#
# Input param: $1: $num-threads - value of num-threads for test
# 		$2: $file-test-mode - value of file-test-mode for test
# Output : prints results for 5 run of file I/O test for given parameters
##################

threads=$1
mode=$2

echo "+++++++++++++++++++++"
echo VM file I/O test
echo "+++++++++++++++++++++"
echo ""

echo "******** BEGIN : test for num-threads = $threads and file-test-mode = $mode ********"
for i in 1 2 3 4 5; do
	sudo sh -c 'echo 3 > /proc/sys/vm/drop_caches'
	echo Test $i for num-threads = $threads and file-test-mode = $mode
	sysbench --num-threads=$threads --test=fileio --file-total-size=1G --file-test-mode=$mode prepare
	sysbench --num-threads=$threads --test=fileio --file-total-size=1G --file-test-mode=$mode run
	sysbench --num-threads=$threads --test=fileio --file-total-size=1G --file-test-mode=$mode cleanup
	echo "=========================================="
done
echo "******** END : test for num-threads = $threads and file-test-mode = $mode ********"
		
