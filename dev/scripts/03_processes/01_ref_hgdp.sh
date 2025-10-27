#!/bin/bash



# Download hgdp.psam and rename to "hgdp_all.psam" before use
# from https://www.cog-genomics.org/plink/2.0/resources#phase3_1kg
# .psam file have subpopulation information

wget \
    -P /home/jennifer/02_data/02_data_reference/hgdp.20190516/ \
    https://www.dropbox.com/s/0zg57558fqpj3w1/hgdp.psam?dl=1 

mv /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.psam \
    /home/jennifer/02_data/02_data_reference/hgdp.20190516/hgdp.hg38.psam





# end