#!/bin/bash



# Download hg38_corrected.psam and rename to "all_hg38.psam" before use
# from https://www.cog-genomics.org/plink/2.0/resources#phase3_1kg
# .psam file have subpopulation information

wget \
    -P /home/jennifer/02_data/02_data_reference/1kgp/ \
    https://www.dropbox.com/scl/fi/u5udzzaibgyvxzfnjcvjc/hg38_corrected.psam?rlkey=oecjnk4vmbhc8b1p202l0ih4x&dl=1 

mv /home/jennifer/02_data/02_data_reference/1kgp/hg38_corrected.psam \
    /home/jennifer/02_data/02_data_reference/1kgp/1kgp.hg38_corrected.psam


# from https://www.cog-genomics.org/plink/2.0/resources#phase3_1kg
# Download chr6_hg38.pgen.zst (178 MiB), chr6_hg38_rs.pvar.zst (154 MiB)

# .pgen
wget \
    -P /home/jennifer/02_data/02_data_reference/1kgp/ \
    https://www.dropbox.com/s/7l4ozeaze53mlny/chr6_hg38.pgen.zst?dl=1

mv \
    /home/jennifer/02_data/02_data_reference/1kgp/chr6_hg38.pgen.zst\?dl\=1 \
    /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6.pgen.zst

plink2 \
    --zst-decompress /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6.pgen.zst \
    /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6.pgen


# .pvar
wget \
    -P /home/jennifer/02_data/02_data_reference/1kgp/ \
    https://www.dropbox.com/scl/fi/q0b6zqi2vh8ni62r21qnv/chr6_hg38_rs.pvar.zst?rlkey=gjfc1zrist2ssgnorwrlngyu1&dl=1

mv \
    /home/jennifer/02_data/02_data_reference/1kgp/chr6_hg38_rs.pvar.zst\?rlkey\=gjfc1zrist2ssgnorwrlngyu1 \
    /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6.pvar.zst

plink2 \
    --zst-decompress /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6.pvar.zst \
    /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6.pvar


# .psam
cp /home/jennifer/02_data/02_data_reference/1kgp/1kgp.hg38_corrected.psam \
    /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6.psam


# .pfiles to .vcf
plink2 \
    --pfile /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6 \
    --recode vcf bgz \
    --out /home/jennifer/02_data/02_data_reference/1kgp/1kgp.chr6
    # 3202 samples (1603 females, 1598 males, 1 ambiguous; 2583 founders)
    # 4315217 variants







# end