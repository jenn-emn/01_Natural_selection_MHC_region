#!/bin/bash

echo "OBS: The output is generated in the same place where the code is running"
#bash /home/jenn/genevol/projects/01_Natural_selection_MHC_region/dev/scripts/01_tests/03_global_ancestry/01_admixture_hapmap.sh
#dir_script=$(dirname "$(readlink -f "$0")")

#input=$1
#dir_output=$2

#input="/home/jennifer/02_data/hapmap3/hapmap3.bed"
#dir_output="/home/jennifer/03_tests/output"

input="/home/jenn/genevol/data/data_toys/hapmap3_from_admixture/hapmap3.bed"
dir_output="/home/jenn/genevol/data/data_outputs/tests/admixture_hapmap3/"

# iterations between ks
k_initial=3
K_final=4

# .log and .error
prefix=$(basename "${input}" .bed)
log="${dir_output}/${prefix}.log"
err="${dir_output}/${prefix}.error"

# run
for k in $(seq "${k_initial}" "${K_final}"); do
    admixture --cv "${input}"  "${k}" > "${log}" 2> "${err}"
done

#end