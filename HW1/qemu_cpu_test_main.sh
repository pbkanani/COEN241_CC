#! /bin/bash

#################
# Tests cpu performance of VM using sysbench
# and prints output
#
# Input param: none
# Output : run qemu_cpu_test.sh with different parameters and prints output 
##################

sh qemu_cpu_test.sh 10000
sh qemu_cpu_test.sh 20000
sh qemu_cpu_test.sh 50000
