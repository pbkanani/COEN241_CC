#! /bin/bash

#################
# Tests file I/O performance of VM using sysbench
# and prints output
#
# Input param: none
# Output : runs qemu_fileio_test.sh with different parameters and prints output
##################

sh qemu_fileio_test.sh 8 seqwr
sh qemu_fileio_test.sh 16 seqwr
sh qemu_fileio_test.sh 8 rndwr
sh qemu_fileio_test.sh 16 rndwr
