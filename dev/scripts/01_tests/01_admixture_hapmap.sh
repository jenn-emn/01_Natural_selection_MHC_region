#!/bin/bash

echo "The output is generated in the same place where the code is running"

input="/home/jennifer/02_data/hapmap3/hapmap3.bed"

# set directory
cd /home/jennifer/03_tests/output

# set .log and .error
prefix=$(basename "$input" .bed)
log="/home/jennifer/03_tests/output/${prefix}.log"
err="/home/jennifer/03_tests/output/${prefix}.error"

# run
admixture "$input"  3 > "$log" 2> "$err"

#end