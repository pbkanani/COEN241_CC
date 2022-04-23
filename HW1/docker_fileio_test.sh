#! /bin/bash
#

##########################
# Tests File I/O performance of docker using sysbench
# and prints output
#
# Input param: $1 - $num-threads - value of num-threads for test
#		$2 - $file-test-mode - value of file-test-mode for test
# Output - prints results for 5 run of file I/O testfor given parameters
##########################
threads=$1
mode=$2

echo "+++++++++++++++++++++"
echo Docker File I/O test
echo "+++++++++++++++++++++"
echo ""

echo "******** BEGIN : test for num-threads=$threads and file-test-mode = $mode ********"	
for i in 1 2 3 4 5; do
	sync && sudo purge	
	echo Test $i for num-threads=$threads and file-test-mode = $mode
	docker run --rm csminpp/ubuntu-sysbench sysbench --num-threads=$threads --test=fileio --file-total-size=1G --file-test-mode=$mode prepare
	docker run --rm csminpp/ubuntu-sysbench sysbench --num-threads=$threads --test=fileio --file-total-size=1G --file-test-mode=$mode --max-time=300 run
	docker run --rm csminpp/ubuntu-sysbench sysbench --num-threads=$threads --test=fileio --file-total-size=1G --file-test-mode=$mode cleanup
	echo "==============================================="
done
echo "******** END : test for num-threads=$threads and file-test-mode = $mode ********"
