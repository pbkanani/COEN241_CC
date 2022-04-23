#! /bin/bash
#

##########################
# Tests CPU performance of docker using sysbench
# and write output to a file
#
# Input param: none
# Output: runs docker_cpu_test.sh 3 times using different parameters and prints output
##########################

sh docker_cpu_test.sh 10000
sh docker_cpu_test.sh 20000
sh docker_cpu_test.sh 50000
