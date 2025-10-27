#!/bin/bash


# from https://www.cog-genomics.org/plink/2.0/resources#phase3_1kg
# Download hgdp.psam and rename to "hgdp_all.psam" before use
# .psam file have subpopulation information

wget \
    -P /home/jennifer/02_data/02_data_reference/hgdp.20190516/ \
    https://www.dropbox.com/s/0zg57558fqpj3w1/hgdp.psam?dl=1 

mv /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.psam \
    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.hg38.psam


# from https://www.cog-genomics.org/plink/2.0/resources#phase3_1kg
# Download hgdp_chr6.pgen.zst (119 MiB), hgdp_chr6.pvar.zst (195 MiB)


# .pgen
wget \
    -P /home/jennifer/02_data/02_data_reference/hgdp.20190516/ \
    https://www.dropbox.com/s/mxzsv5ynqirulkr/hgdp_chr6.pgen.zst?dl=1

mv /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp_chr6.pgen.zst. \
    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.pgen.zst

plink2 \
    --zst-decompress /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.pgen.zst \
    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.pgen


# .pvar
wget \
    -P /home/jennifer/02_data/02_data_reference/hgdp.20190516/ \
    https://www.dropbox.com/s/9lhbtqn7u9phzqu/hgdp_chr6.pvar.zst?dl=1

mv /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp_chr6.pvar.zst \
    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.pvar.zst

plink2 \
    --zst-decompress /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.pvar.zst \
    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.pvar


# .psam
cp /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.hg38.psam \
    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6.psam


# .pfiles to .vcf
plink2 \
    --pfile /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6 \
    --recode vcf bgz \
    --out /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.chr6
    # 929 samples (317 females, 612 males; 929 founders)
    # 4495706 variants loaded from



# end