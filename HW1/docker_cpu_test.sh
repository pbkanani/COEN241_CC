#! /bin/bash
#

##########################
# Tests CPU performance of docker using sysbench
# and write output to a file
#
# Input param: $1: $prime - value of max-prime for test
# Output - prints results for 5 run of CPU test for given parameters
##########################

prime=$1

echo "+++++++++++++++++++++"
echo Docker CPU test
echo "+++++++++++++++++++++"
echo ""

echo "******** BEGIN : test for max-prime = $prime ********"	
for i in 1 2 3 4 5; do
	sync && sudo purge
	echo Test $i for max-prime = $prime
	docker run csminpp/ubuntu-sysbench sysbench --test=cpu --cpu-max-prime=$prime run
	echo "================================================="
done
echo "******** END : test for max-prime = $prime ********"
