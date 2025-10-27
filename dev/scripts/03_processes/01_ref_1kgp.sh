#!/bin/bash



# Download hg38_corrected.psam and rename to "all_hg38.psam" before use
# from https://www.cog-genomics.org/plink/2.0/resources#phase3_1kg
# .psam file have subpopulation information

wget \
    -P /home/jennifer/02_data/02_data_reference/1kgp/ \
    https://www.dropbox.com/scl/fi/u5udzzaibgyvxzfnjcvjc/hg38_corrected.psam?rlkey=oecjnk4vmbhc8b1p202l0ih4x&dl=1 

mv /home/jennifer/02_data/02_data_reference/1kgp/hg38_corrected.psam \
    /home/jennifer/02_data/02_data_reference/1kgp/1kgp.hg38.psam





# end