#!/bin/bash

echo "OBS: The output is generated in the same place where the code is running"

dir_script=$(dirname "$(readlink -f "$0")")
input="/home/jennifer/02_data/hapmap3/hapmap3.bed"
dir_output="/home/jennifer/03_tests/output"
k_initial=3
K_final=5

# set directory
cd "$dir_output"

# set .log and .error
prefix=$(basename "$input" .bed)
log="/home/jennifer/03_tests/output/${prefix}.log"
err="/home/jennifer/03_tests/output/${prefix}.error"

# run
for k in {k_initial..k_final}; do
    admixture --cv "$input"  3 > \
    # redirect the .log and .error files
    "$log" 2> \ "$err"
done

#end