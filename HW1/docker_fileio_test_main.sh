#! /bin/bash
#

##########################
# Tests File I/O performance of docker using sysbench
# and prints output
#
# Input param: none
# Output: runs docker_fileio_test.sh 4 times using different parameters and prints output
##########################

sh docker_fileio_test.sh 8 seqwr
sh docker_fileio_test.sh 16 seqwr
sh docker_fileio_test.sh 8 rndwr
sh docker_fileio_test.sh 16 rndwr
